/**********************************************************************************************************

      Copyright (c) Branson Ultrasonics Corporation, 1996-2018
 
     This program is the property of Branson Ultrasonics Corporation
     Copying of this software is expressly forbidden, without the prior
     written consent of Branson Ultrasonics Corporation.


---------------------------- MODULE DESCRIPTION ----------------------------

 	 It contains the SQLite Data base related functions   
 
**********************************************************************************************************/




#include "SQLiteDB.h"
#include <Exception>
#include <semLib.h>
#include "Logger.h"
#include "commons.h"

using namespace std;

string OutBuffer  = "";
string DataBuffer = "";

SEM_ID SQLiteDB::SCDBMutex = 0;

static int callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	int idx = 0;
		
	for(idx = 0; idx < argc; idx++)
	{
		if(argv[idx] != NULL)
		{
			OutBuffer.append(argv[idx]);
			OutBuffer.append(",");
		}
		else
		{
			OutBuffer.append(",");
		}
	}
	return 0;
}

static int Callback(void *NotUsed, int argc, char **argv, char **azColName)
{
	int idx = 0;
		
	for(idx = 0; idx < argc; idx++)
	{
		if(argv[idx] != NULL)
		{
			DataBuffer.append(argv[idx]);
			DataBuffer.append(",");
		}
		else
		{
			DataBuffer.append(",");
		}
	}
	return 0;
}

SQLiteDB::SQLiteDB()
{
	if(0 == SQLiteDB::SCDBMutex)
		SQLiteDB::SCDBMutex = semMCreate(SEM_Q_PRIORITY | SEM_INVERSION_SAFE);
	DBErrCode = 0;
	DBErrMsg = 0;
	AutoCommit = false;	
}

SQLiteDB::SQLiteDB(const SQLiteDB& pDBObj)
{
}

SQLiteDB::~SQLiteDB()
{
	//close();		//TODO: will be checked
}

/**************************************************************************//**
* 
* \brief  - Opens the Sqlite Database if available else it will create one.
*
* \param  - File path.
*
* \return  - None
*
******************************************************************************/
void SQLiteDB::Open(const char *FileNameWithFullPath)
{
	DBErrCode = sqlite3_open(FileNameWithFullPath,&DB);
	if(DBErrCode)
	{
		IsDBOpen = false;
		cout << endl <<"UI_DB_T : DB Not Open" << endl;
		return ;
	}
	IsDBOpen = true;	
	return;
}


/**************************************************************************//**
* 
* \brief   - closes the Sqlite Database.
*
* \param   - None.
*
* \return  - None.
*
******************************************************************************/
void SQLiteDB::Close()
{
	INT32 ErrCode = 0;
	ErrCode = sqlite3_close(DB);
	
	if(SQLITE_OK != ErrCode)
	{
		LOGERR("DataBase Connection not closed. ErrCode : %d",ErrCode,0,0);
	}
}

/**************************************************************************//**
* 
* \brief   - Prepares an insert sql statement and calls the sqlite3 exec 
* 			 function to exec that statement.
*
* \param   - Table Name specifies the in which table operation should perform
* 		     Fields contains which fields we are inserting
* 		     WhereCondition specifies the where statement for the sql statement.
*
* \return  - returns the error code if any else returns zero.
*
******************************************************************************/
int SQLiteDB::Insert(const char *TableName, const char *Fields, const char *WhereCondition)
{
	if(IsDBOpen == false)
	{
		return SQLITE_CANTOPEN;
	}
	string SqlStatement = "SELECT ";
	SqlStatement = SqlStatement + Fields + " FROM " + TableName + " WHERE " + WhereCondition;
	
	DBErrCode = sqlite3_exec(DB, (char*)SqlStatement.c_str(), callback, 0, &DBErrMsg);
	if(AutoCommit)
	{
		Commit();
	}
	return DBErrCode;
}

/**************************************************************************//**
* 
* \brief   - Prepares a Delete sql statement and calls the sqlite3 exec 
* 			 function to exec that statement.
*
* \param   - Table Name specifies the in which table operation should perform
* 			 WhereCondition specifies the where statement for the sql statement.
*
* \return  - returns the error code if any else returns zero.
*
******************************************************************************/
int SQLiteDB::Delete(const char *TableName, const char *WhereCondition)
{
	if(IsDBOpen == false)
	{
		return SQLITE_CANTOPEN;
	}
	std::string SqlStatement = "DELETE FROM ";
	SqlStatement = SqlStatement + TableName + " WHERE " + WhereCondition;
	
	DBErrCode = sqlite3_exec(DB, (char*)SqlStatement.c_str(), callback, 0, &DBErrMsg);
	if(AutoCommit)
	{
		Commit();
	}
	return DBErrCode;
}

/**************************************************************************//**
* 
* \brief   - Prepares an Update sql statement and calls the sqlite3 exec 
* 			 function to exec that statement. 
*
* \param   - Table Name specifies the in which table operation should perform
* 			 SetFields contains which fields we are need to be modifies witht values by,separator
* 			 WhereCondition specifies the where statement for the sql statement.
*
* \return  - returns the error code if any else returns zero.
*
******************************************************************************/
int SQLiteDB::Update(const char *TableName, const char *SetFields, const char *WhereCondition)
{
	if(IsDBOpen == false)
	{
		return SQLITE_CANTOPEN;
	}
	std::string SqlStatement = "UPDATE ";
	SqlStatement = SqlStatement + TableName + " SET " + SetFields +" WHERE " + WhereCondition;
	
	DBErrCode = sqlite3_exec(DB, (char*)SqlStatement.c_str(), callback, 0, &DBErrMsg);
	if(AutoCommit)
	{
		Commit();
	}
	return DBErrCode;
}

/**************************************************************************//**
* 
* \brief   - Prepares an Select sql statement and calls the sqlite3 exec
* 			 function to exec that statement 
*
* \param   - Table Name specifies the in which table operation should perform
* 			 ResultSet will contains the selected field values
* 			 Fields contains which fields we are need to get
* 			 WhereCondition specifies the where statement for the sql statement.
*
* \return  - returns the error code if any else returns zero.
*
******************************************************************************/
int SQLiteDB::Select(const char *TableName, std::vector<std::string> *ResultSet, const char *Fields, const char *WhereCondition)
{
	if(IsDBOpen == false)
	{
		return SQLITE_CANTOPEN;
	}
	std::string SqlStatement = "SELECT ";
	SqlStatement = SqlStatement + Fields + " FROM " + TableName + " WHERE " + WhereCondition;
	
	DBErrCode = sqlite3_exec(DB, (char*)SqlStatement.c_str(), callback, 0, &DBErrMsg);
	return DBErrCode;
}

/**************************************************************************//**
* \brief   - Establish the SQLite DB connection in SQLite handler object.
*
* \param   - None.
*
* \return  - None
*
******************************************************************************/
UINT32 SQLiteDB::EstablishDataBaseConnection()
{
	INT32 ErrCode = 0;
	char dbQuery[VACUUM_QUERY_SIZE] = {0x00};
	ErrCode = sqlite3_enable_shared_cache(true);

	if(ErrCode != SQLITE_OK)
	{
		LOGERR("DataBaseManager : ErrCode : %d",ErrCode,0,0);
	}

	if(!g_bIsDBInDevice)
	{
		LOGDBG("EMMC - DB connection",0,0,0);		
		Open(DB_EMMC);
	}
	else
	{
		LOGDBG("Secondary device - DB connection",0,0,0);		
		Open(DB_EXT_DEVICE);
	}
	
	/*setting DB to no auto vacuum mode*/
	sprintf(dbQuery, "PRAGMA auto_vacuum=none");
	Exec(dbQuery, ErrCode);
	
	if(ErrCode != SQLITE_OK)
	{
		LOGERR("DB_T : SetDBVacuumConfiguration : Error in setting DB to Vacuum Incremental mode : %d",ErrCode,0,0);
	}
	else
	{
		LOGDBG("DB_T : SetDBVacuumConfiguration : Successfully set DB to Vacuum Incremental mode",0,0,0);
	}
	
	return ErrCode;
	
}

/**************************************************************************//**
* 
* \brief   - Calls the sqlite3 exec function to execeute specific statement.
*
* \param   - Query.
*		   - Status
*
* \return  - Returns the query.
*
******************************************************************************/
string SQLiteDB::Exec(char *SqlStatement, int* stat)
{
	OutBuffer.clear();
	
	try
	{
		if(IsDBOpen == false)
		{
			throw "DB connection not opened";
		}
		else
		{
			DBErrCode = sqlite3_exec(DB, SqlStatement, callback, 0, &DBErrMsg);
#ifdef DEBUG
			printf(" DBErrCode :%d\n",DBErrCode);
#endif
			
			if(!OutBuffer.empty())
			{
				OutBuffer.erase(OutBuffer.size() - 1);
			}
			
			// if default status was requested
			if (stat)
				*stat = DBErrCode;
			
			return OutBuffer;
		}
	}
	catch (string ErrMsg)
	{
		OutBuffer.clear();
		cout << "Exec : Exception Caught : " << ErrMsg << endl;
		return OutBuffer;
	}
	catch (std::length_error)
	{
		OutBuffer.clear();
		cout << "Exec : Exception Caught : Too big string is created" << endl;
		return OutBuffer;
	}
	catch (std::bad_alloc)
	{
		OutBuffer.clear();
		cout << "Exec : Exception Caught : Bad allocation" << endl;
		return OutBuffer;
	}
	catch (std::runtime_error)
	{
		OutBuffer.clear();
		cout << "Exec : Exception Caught : Runtime error" << endl;
		return OutBuffer;
	}
	catch (...)
	{ 
		OutBuffer.clear();
		cout << "Exec : Default Exception Caught" << endl;
		return OutBuffer;
	}
}

/**************************************************************************//**
* 
* \brief   - Calls the sqlite3 exec function to execute specific statement.
*
* \param   - Query.
*
* \return  - Returns the query.
*
******************************************************************************/
string SQLiteDB::Exec(char *SqlStatement,INT32& ErrCode)
{
	DataBuffer.clear();
	if(IsDBOpen == false)
	{
		ErrCode = SQLITE_CANTOPEN;
		LOGERR("Exec : Connection not opened",0,0,0);
	}
	else
	{
		//sqlite3_exec(DB, "BEGIN TRANSACTION", NULL, NULL, &DBErrMsg);		
		ErrCode = sqlite3_exec(DB, SqlStatement, Callback, NULL, &DBErrMsg);
		//sqlite3_exec(DB, "END TRANSACTION", NULL, NULL, &DBErrMsg);

		if(!DataBuffer.empty())
		{
			DataBuffer.erase(DataBuffer.size() - 1);
		}
	}

	return DataBuffer;
}

/**************************************************************************//**
* 
* \brief   - Calls sqlite3 API for writing data into DB.
*
* \param   - char *SqlStatement
*
* \return  - INT32 - DBErrCode.
*
******************************************************************************/
INT32 SQLiteDB::SingleTransaction(char *SqlStatement)
{
	if(false == IsDBOpen)
	{
		DBErrCode = SQLITE_CANTOPEN;
		LOGERR("SingleTransaction : Connection not opened",0,0,0);
	}
	else
	{
		DBErrCode = sqlite3_exec(DB, SqlStatement, NULL, NULL, &DBErrMsg);
	}

	return DBErrCode;
}

/**************************************************************************//**
* 
* \brief   - Bind the operation with transaction for writing bull data.
*
* \param   - char *SqlStatement - Query.
*
* \return  - INT32 - DBErrCode.
*
******************************************************************************/
INT32 SQLiteDB::BulkTransaction(char *SqlStatement)
{
	if(false == IsDBOpen)
	{
		DBErrCode = SQLITE_CANTOPEN;
		LOGERR("BulkTransaction : Connection not opened",0,0,0);
	}
	else
	{
		sqlite3_exec(DB, "BEGIN TRANSACTION", NULL, NULL, &DBErrMsg);
		DBErrCode = sqlite3_exec(DB, SqlStatement, NULL, NULL, &DBErrMsg);
		sqlite3_exec(DB, "END TRANSACTION", NULL, NULL, &DBErrMsg);
	}

	return DBErrCode;
}

/**************************************************************************//**
* 
* \brief   - Calls the SQLite commit via exec.
*
* \param   - None.
*
* \return  - None.
*
******************************************************************************/
void SQLiteDB::Commit()
{
	if(IsDBOpen == false)
	{
		return;
	}
	char *sql = "COMMIT;";
	DBErrCode = sqlite3_exec(DB, sql, 0, 0, &DBErrMsg);
	return;	
}

/**************************************************************************//**
* 
* \brief   - Checks if the DB Table exists or not.
*
* \param   - Table Name.
*
* \return  - Returns True if table exists else false.
*
******************************************************************************/
bool SQLiteDB::IsTableExists(const char *TableName)
{
	if(IsDBOpen == false)
	{
		return SQLITE_CANTOPEN;
	}
	std::string SqlStatement = "SELECT count(*) FROM sqlite_master WHERE type='table' AND name='";
	SqlStatement = SqlStatement + TableName + "'";
	DBErrCode = sqlite3_exec(DB, (char*)SqlStatement.c_str(), callback, 0, &DBErrMsg);
	if(AutoCommit)
	{
		Commit();
	}
	return DBErrCode;	
}

/**************************************************************************//**
* 
* \brief   - Creates default tables in the DB file.
*
* \param   - None.
*
* \return  - success of failure.
*
******************************************************************************/
int SQLiteDB::CreateDefaultTables()
{
	char *sql = "Create table WeldRecipeTable(WeldRecipeName TEXT,IsActive INTEGER,IsLocked INTEGER,CompanyName TEXT,PartID TEXT,ControlMode TEXT,ControlValue TEXT);";
	DBErrCode = sqlite3_exec(DB, sql, callback, 0, &DBErrMsg);
	if(DBErrCode !=SQLITE_OK)
	{
		return DBErrCode;
	}

	sql = "create table ProductionSetupTable(Goal TEXT);";
	DBErrCode = sqlite3_exec(DB, sql, callback, 0, &DBErrMsg);
	if(DBErrCode !=SQLITE_OK)
	{
		return DBErrCode;
	}
	return 0;
}

/**************************************************************************//**
* \brief   - Returns the DB Column Names
*
* \param   - SQLite Prepare Statement
*
* \return  - String 
*
******************************************************************************/
string SQLiteDB::GetDBColumnName(const char *SqlStatement)
{
	INT32 coloumnIndex = 0, columnCount = 0, ret = 0;
	string columnHeaderBuf = "";
	sqlite3_stmt* sqlStmt = NULL;
	
	ret = sqlite3_prepare_v2(DB, SqlStatement, -1, &sqlStmt, 0);
	
	if(SQLITE_OK != ret)
	{
		LOGERR("SQLiteDB : GetDBColumnName : Error in preparing SQLite Statement --- %d",ret,0,0);
	}

	columnCount = sqlite3_column_count(sqlStmt);

	for(coloumnIndex = 0; coloumnIndex < columnCount; coloumnIndex++)
	{
		columnHeaderBuf += sqlite3_column_name(sqlStmt, coloumnIndex);
		
		if(coloumnIndex < ( columnCount - 1) )
		{
			columnHeaderBuf.append(",");			
		}
	}
	
	ret = sqlite3_finalize(sqlStmt);
	
	if(SQLITE_OK != ret)
	{
		LOGERR("SQLiteDB : GetColumnCount : Finalize SQLite Statement with ErrCode : %d",ret,0,0);
	}
	
	return columnHeaderBuf;
}

/**************************************************************************//**
* \brief   - Returns the Number of Columns of DB
*
* \param   - SQLite Prepare Statement
*
* \return  - INT32 - columnCount 
*
******************************************************************************/
INT32 SQLiteDB::GetDBColumnCount(const char *SqlStatement)
{
	INT32 ret = 0, columnCount = 0;
	sqlite3_stmt* sqlStmt = NULL;

	ret = sqlite3_prepare_v2(DB, SqlStatement, -1, &sqlStmt, 0);
	
	if(SQLITE_OK != ret)
	{
		LOGERR("SQLiteDB : GetColumnCount : Preparing SQLite Statement with ErrCode : %d",ret,0,0);
	}
	else
	{
		columnCount = sqlite3_column_count(sqlStmt);
	}
	
	ret = sqlite3_finalize(sqlStmt);
	
	if(SQLITE_OK != ret)
	{
		LOGERR("SQLiteDB : GetColumnCount : Finalize SQLite Statement with ErrCode : %d",ret,0,0);
	}

	return columnCount;
}

/**************************************************************************//**
 * \brief   - This function performs Database Vacuum after deleting data.
 *
 * \param   - None
 *
 *  return  - STATUS - OK or FAILURE 
 *
 ******************************************************************************/
void SQLiteDB::DBVacuum()
{
	INT32  queryStatus = 0;
	char dbQuery[VACUUM_QUERY_SIZE] = {0x00};
	
	sprintf(dbQuery, "VACUUM;");
	Exec(dbQuery, queryStatus);
	
	if(queryStatus != 0)
	{
		LOGERR("SQLiteDB : DBVacuum : Error in Deleting the Data : %d",queryStatus,0,0);
 	}
	else
	{
		Commit();
		LOGDBG("SQLiteDB : DBVacuum : Successfully Done DB VACUUM",0,0,0);
	}
	
}

/**************************************************************************//**
* \brief   - Reads recipe from specified table and copies into recipe vector
*
* \param   - string SqlStatement, UINT8 columnCount, vector<INT> &recipe
*
* \return  - UINT8 status (0-failed or 1-success)  
*
******************************************************************************/
UINT8 SQLiteDB::ReadRecipe(std::string SqlStatement, UINT8 columnCount, std::vector<INT32> &recipe)
{
	UINT8 status 		= 0;
	INT32 ErrCode 		= 0;
	sqlite3_stmt* stmt 	= NULL;
	UINT8 index 		= 0;
	
	if(columnCount > 0)
	{
		ErrCode = sqlite3_prepare_v2(DB, SqlStatement.data(), SqlStatement.length(), &stmt, NULL);

		if(SQLITE_OK == ErrCode)
		{
			ErrCode = sqlite3_step(stmt);

			if(SQLITE_ROW == ErrCode)
			{
				while(index < columnCount)
				{
					recipe.push_back(sqlite3_column_int(stmt, index));
					index = index + 1;
				}
				status = 1;		/* return success */
			}
			else
			{
				LOGERR("ReadRecipe : Row failed with ErrCode : %d",ErrCode,0,0);
			}
		}
		else
		{
			LOGERR("ReadRecipe : prepare failed with ErrCode : %d",ErrCode,0,0);
		}
		
		ErrCode = sqlite3_finalize(stmt);
		if(SQLITE_OK != ErrCode)
		{
			LOGERR("SQLiteDB : ReadRecipe : Finalize SQLite Statement with ErrCode : %d",ErrCode,0,0);
		}
	}
	else
	{
		LOGERR("ReadRecipe : Invalid column count received : %d",columnCount,0,0);
	}

	return status;
}
