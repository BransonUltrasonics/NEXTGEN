/* posixName.h - posix table synchronisation */

/* Copyright 1984-1993, 2010 Wind River Systems, Inc. */

/*
modification history
--------------------
01c,29apr10,pad  Moved extern C statement after include statements.
01b,13dec93,dvs changed prototype to match that in posixNameLib.c
01a,06apr93,smb written
*/

#ifndef __INCposixNameh
#define __INCposixNameh

#include "symLib.h"

#ifdef __cplusplus
extern "C" {
#endif

/* Defines */

#define POSIX_TBL_HASH_SIZE_LOG2 6       /* 64 entry hash table for status */

/* Function declarations */

#if defined(__STDC__) || defined(__cplusplus)

SYMTAB_ID posixNameTblInit (int PosixTblHashSize);

#else   /* __STDC__ */

SYMTAB_ID posixNameTblInit ();

#endif  /* __STDC__ */

#ifdef __cplusplus
}
#endif

#endif /* __INCposixNameh*/
