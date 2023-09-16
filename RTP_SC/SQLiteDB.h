/************************************************************************** 

      Copyright (c) Branson Ultrasonics Corporation, 1996-2018
 
     This program is the property of Branson Ultrasonics Corporation
     Copying of this software is expressly forbidden, without the prior
     written consent of Branson Ultrasonics Corporation.
 
***************************************************************************/

#ifndef SQLITEDB_H_
#define SQLITEDB_H_

#include "sqlite3.h"
#include  <sys/types.h>
#include  <vector>
#include  <algorithm>
#include  <cstdlib>
#include  <cstdio>
#include  <iostream>
#include  <string>
#include  <cstring>
#include  <unistd.h>

#define	 VACUUM_QUERY_SIZE 	100
class SQLiteDB
{
public:
	
	SQLiteDB();
	SQLiteDB(const SQLiteDB& pDBObj);
	~SQLiteDB();
	
	int Insert(const char *TableName, const char *Fields, const char *WhereCondition="1=1");
	int Delete(const char *TableName, const char *WhereCondition="1=1");
	int Update(const char *TableName, const char *SetFields, const char *WhereCondition="1=1");
	int Select(const char *TableName, std::vector<std::string> *ResultSet, const char *Fields="*", const char *WhereCondition="1=1");
	std::string Exec(char *SqlStatement, int* stat = NULL);
	
	void Commit();
	bool IsTableExists(const char *TableName);
	void Open(const char *FileNameWithFullPath);
	void Close();
	
	static SEM_ID& getSCDBMutex(){return SCDBMutex;};
	
	/* Added by Gunasekar - 22Jan18 - ErrCode handling*/
	INT32 		BulkTransaction(char *SqlStatement);
	INT32 		SingleTransaction(char *SqlStatement);
	std::string Exec(char *SqlStatement,INT32& ErrCode);
	UINT32 		EstablishDataBaseConnection();
	UINT8 		ReadRecipe(std::string SqlStatement, UINT8 columnCount, std::vector<INT32> &recipe);
	
	std::string GetDBColumnName(const char *SqlStatement);
	INT32 GetDBColumnCount(const char *SqlStatement);
	void DBVacuum();

private:

	int CreateDefaultTables();
	
	static SEM_ID SCDBMutex;
	bool AutoCommit;
	bool IsDBOpen;
	int DBErrCode;
	char *DBErrMsg;
	sqlite3 *DB;
};

#endif /* SQLITEDB_H_ */
