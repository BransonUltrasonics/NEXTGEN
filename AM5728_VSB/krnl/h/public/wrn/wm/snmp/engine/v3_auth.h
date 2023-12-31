/* $Header: /usr/cvsroot/target/h/wrn/wm/snmp/engine/v3_auth.h,v 1.4 2003/01/15 13:58:56 josh Exp $ */

/*
 * Copyright (C) 1999-2005 Wind River Systems, Inc.
 * All rights reserved.  Provided under license only.
 * Distribution or other use of this software is only
 * permitted pursuant to the terms of a license agreement
 * from Wind River Systems (and is otherwise prohibited).
 * Refer to that license agreement for terms of use.
 */


/****************************************************************************
 *  Copyright 1998 Integrated Systems, Inc.
 *  All rights reserved.
 ****************************************************************************/

/*
 * $Log: v3_auth.h,v $
 * Revision 1.4  2003/01/15 13:58:56  josh
 * directory structure shifting
 *
 * Revision 1.3  2001/11/06 21:50:41  josh
 * second (and hopefully final) pass of new path hacking
 *
 * Revision 1.2  2001/11/06 21:35:05  josh
 * new revised path structure, first pass.  Also removing useless
 * shell include files.
 *
 * Revision 1.1.1.1  2001/11/05 17:47:23  tneale
 * Tornado shuffle
 *
 * Revision 9.5  2001/01/19 22:22:11  paul
 * Update copyright.
 *
 * Revision 9.4  2000/03/17 19:48:43  meister
 * Update copyright notice
 *
 * Revision 9.3  2000/03/09 20:58:35  tneale
 * All structure definitions are now bracketted with a test that
 * potentially sets an alignment pragma.  This is to maintain compatibility
 * with the code base that had been distributed by Wind River.
 *
 * Revision 9.2  2000/03/09 16:59:34  tneale
 *  Added #ifdef for C++ to declare extern C if needed
 *
 * Revision 9.1  2000/02/04 21:54:20  josh
 * prototyping functions that may need to be called by other modules
 * this is done primarily to make the vxWorks compiler happy.
 * Warning:  the prototypes added may be duplicated by a mib_hand.h
 * file generated by Emissary.
 *
 * Revision 9.0  1998/10/16 22:10:23  sar
 * Update version stamp to match release
 *
 * Revision 1.4  1998/08/12 04:52:17  sar
 * revamp the initialization routines to limit the amount of
 * code that might get pulled in.
 *
 * Revision 1.3  1998/06/16 05:29:19  sar
 * Add a long tag ("L") to a long constant
 *
 * Revision 1.2  1998/05/27 22:53:53  sar
 * Add routines to manipulate the auth and priv lists (add and find),
 * as well as some specifics adds (md5, sha)
 *
 * Revision 1.1  1998/05/23 19:49:39  sar
 * Include files for use with v3 code.  They define the structures
 * and entry points for the various pieces.
 * acc: access and group information
 * auth & priv: authentication and privacy
 * con: context
 * eng: engine ids, both this agents and any others it knows
 * mth: method routines, for use with mib control files
 * user: user info
 *
 */

/* [clearcase]
modification history
-------------------
01e,09sep10,y_t  fixed for WIND00230477
01d,03sep08,y_t  update for openssl
01c,17may05,job  fix up the DH code
01b,05may05,asl  Diffie-Hellman work
01a,15apr05,AJS  Diffie-Hellman work
01a,13apr05,AJS  Diffie-Hellman work
*/


#if (!defined(v3_auth_inc))
#define v3_auth_inc

#ifdef __cplusplus
extern"C" {
#endif

#if (!defined(asn1_inc))
#include <wrn/wm/snmp/engine/asn1.h>
#endif


#include <stdio.h>

/*#if (!defined(HMAC_H))
#ifndef INSTALL_on_linux
#include <ipcom_type.h>
#endif
#include <openssl/evp.h>
#include <openssl/hmac.h>
#endif*/


#if INSTALL_SNMP_V3_DIFFIE_HELLMAN
#include <openssl/bn.h>
#include <openssl/dh.h>
#endif /* INSTALL_SNMP_V3_DIFFIE_HELLMAN */

/* For password to key purposes, this is the length to expand a password to */
#define V3_AUTH_MEGABYTE 1048576L

/* Needs is what is the length needed in the packet,
   digest is the length of the acutal digest
   keysize is the length of the keysize */
#define V3_HMAC_MD5_NEEDS   12  
#define V3_HMAC_MD5_DIGEST  16
#define V3_HMAC_MD5_KEYSIZE 16

#define V3_HMAC_SHA_NEEDS   12  
#define V3_HMAC_SHA_DIGEST  20
#define V3_HMAC_SHA_KEYSIZE 20

#define V3_HMAC_MAX_NEEDS   12
#define V3_HMAC_MAX_DIGEST  20

#define V3_HMAC_ENCRYPT_NONE 0
#define V3_HMAC_ENCRYPT_MD5  1
#define V3_HMAC_ENCRYPT_SHA  2

#ifdef WINDNET_STRUCT_ALIGN
#pragma align 1
#endif



typedef struct SNMP_AUTH_S
{
	struct SNMP_AUTH_S   *next;
    OBJ_ID_T              name;     /* name of the auth protocol */
	char                 *digest_name;
	ALENGTH_T             need;       /* digest carried in snmp message */        
	ALENGTH_T             keysize;    /* full digest */ 
	int (*authenticate)(struct SNMP_AUTH_S *, bits8_t *, ALENGTH_T,
                             bits8_t *, ALENGTH_T, bits8_t *, int);

} SNMP_AUTH_T;

#ifdef WINDNET_STRUCT_ALIGN
#pragma align 0
#endif

/* global root pointer for the auth list */
extern SNMP_AUTH_T *v3_auth_root;

extern SNMP_AUTH_T * SNMP_Auth_Find    __((int, OIDC_T *));
extern int           SNMP_Auth_Add     __((SNMP_AUTH_T *));
extern int           SNMP_Auth_Add_MD5 __((void));
extern int           SNMP_Auth_Add_SHA __((void));

#define SNMP_Auth_Digest(A, K, KL, B, BL, O) \
        ((A)->authenticate(A, K, KL, B, BL, O, 0))
#define SNMP_Auth_Verify(A, K, KL, B, BL, O) \
        ((A)->authenticate(A, K, KL, B, BL, O, 1))

#define SNMP_Auth_Get_KeySize(A) ((A)->keysize)
#define SNMP_Auth_Get_Need(A)    ((A)->need)

#define SNMP_Auth_Get_Name(A)    (&((A)->name))


extern int SNMP_V3_Pass2Key  __((SNMP_AUTH_T *, bits8_t *, ALENGTH_T,
                                 bits8_t *, ALENGTH_T key_len,
                                 bits8_t *, ALENGTH_T engineid_len, int));
extern int SNMP_V3_KeyChange __((SNMP_AUTH_T *, bits8_t *, ALENGTH_T,
                                 bits8_t *, ALENGTH_T key_len));

#if INSTALL_SNMP_V3_DIFFIE_HELLMAN
int SNMP_V3_DHKeyChange (DH *DHvalues, BIGNUM *pubKey,\
                         bits8_t **sk, int *skLen);
#endif /* INSTALL_SNMP_V3_DIFFIE_HELLMAN */

/* Macros to get/set an Auth/Priv key */

#define SNMP_Get_DHauthKey(USER)                \
    (EBufferStart (&(USER->DH_keys.DHpubAuthKey)))

#define SNMP_Get_DHauthKey_len(USER)            \
    (EBufferUsed (&(USER->DH_keys.DHpubAuthKey)))

#define SNMP_Set_DHauthKey(USER,FLAGS,KEY,LENGTH)    \
    (EBufferPreload(FLAGS,((SNMP_DH_T *)(USER)->DH_keys).DHpubAuthKey,KEY,LENGTH)

/* Macros to get/set a Priv key */

#define SNMP_Get_DHprivKey(USER)                \
    (EBufferStart (&(USER->DH_keys.DHpubPrivKey)))

#define SNMP_Get_DHprivKey_len(USER)            \
    (EBufferUsed (&(USER->DH_keys.DHpubPrivKey)))

#define SNMP_Set_DHprivKey(USER,FLAGS,KEY,LENGTH)    \
    (EBufferPreload(FLAGS,((SNMP_DH_T *)(USER)->DH_keys).DHpubPrivKey,KEY,LENGTH)

/* Get the auth/priv random numbers; returns a pointer to BIGNUM */

#define SNMP_Get_DHauthRand(USER)  (((SNMP_DH_T *)(USER)->DH_keys).DHauthRand)
#define SNMP_Get_DHprivhRand(USER) (((SNMP_DH_T *)(USER)->DH_keys).DHprivRand)
                                   
/* Set the BIGNUM pointer for auth/priv random numbers        */
                                   
#define SNMP_Set_DHauthRand(USER,BN)            \
                        (((SNMP_DH_T *)(USER)->DH_keys).DHauthRand = BN)
#define SNMP_Set_DHprivRand(USER,BN)            \
                        (((SNMP_DH_T *)(USER)->DH_keys).DHprivRand = BN)

/* Other declarations */

extern OIDC_T      v3_auth_noauth[];
extern int         v3_auth_noauth_size;

extern int  v3_auth_authenticate  __((SNMP_AUTH_T *, bits8_t *, ALENGTH_T,
                                      bits8_t *, ALENGTH_T, bits8_t *, int));
                                     

extern SNMP_AUTH_T v3_auth_md5;
extern SNMP_AUTH_T v3_auth_sha;

#ifdef __cplusplus
}
#endif

#endif /* #if (!defined(v3_auth_inc)) */

