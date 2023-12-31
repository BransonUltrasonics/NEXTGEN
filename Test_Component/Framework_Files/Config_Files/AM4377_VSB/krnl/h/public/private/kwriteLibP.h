/* kwriteLibP.h - kprintf interface header */

/*
 * Copyright (c) 2009-2010 Wind River Systems, Inc.
 *
 * The right to copy, distribute, modify or otherwise make use
 * of this software may be licensed only pursuant to the terms
 * of an applicable Wind River license agreement.
 */
      
/*
modification history
--------------------
01c,24may10,pch  add _func_kprintf
01b,17may10,jpb  Added prototypes.
01a,17mar09,s_s  written
*/      

/*  typedefs */

extern	STATUS	(*_func_kwrite) (char * buf, size_t len);
extern	int	(* _func_kprintf) (const char * fmt, ...);

extern void kwriteSioInit (int numTty, int baud);
