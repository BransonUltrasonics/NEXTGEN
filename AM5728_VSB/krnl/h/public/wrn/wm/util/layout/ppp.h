/* This file was automatically generated by Epilogue Technology's
 * network datastructure layout tool.
 * 
 * DO NOT MODIFY THIS FILE BY HAND.
 * 
 * Source file information:
 *  Id: ppp.ldb,v 1.4 1999/08/16 18:53:32 bala Exp 
 */

#ifndef EPILOGUE_LAYOUT_PPP_H
#define EPILOGUE_LAYOUT_PPP_H

#ifndef EPILOGUE_INSTALL_H
#include <wrn/wm/common/install.h>
#endif
#ifndef EPILOGUE_TYPES_H
#include <wrn/wm/common/types.h>
#endif
#ifndef EPILOGUE_LAYOUT_LDBGLUE_H
#include <wrn/wm/util/layout/ldbglue.h>
#endif

/* Definitions for PPP_STRING */

#define SIZEOF_PPP_STRING (1)
#define PTR_PPP_STRING_LENGTH(_P_)\
 ((GLUE_CAST_PTR(_P_)))
#define GET_PPP_STRING_LENGTH(_P_)\
 GLUE_GB08((GLUE_CAST_PTR(_P_)))
#define SET_PPP_STRING_LENGTH(_P_, _V_)\
 GLUE_SB08((GLUE_CAST_PTR(_P_)), GLUE_CAST08(_V_))
#define PTR_PPP_STRING_VALUE(_P_)\
 ((GLUE_CAST_PTR(_P_))+(1))
#define SIZEOF_PPP_STRING_VALUE (0)

/* Definitions for PPP_CHAP_HDR */

#define SIZEOF_PPP_CHAP_HDR (4)
#define PTR_PPP_CHAP_HDR_CODE(_P_)\
 ((GLUE_CAST_PTR(_P_)))
#define GET_PPP_CHAP_HDR_CODE(_P_)\
 GLUE_GB08((GLUE_CAST_PTR(_P_)))
#define SET_PPP_CHAP_HDR_CODE(_P_, _V_)\
 GLUE_SB08((GLUE_CAST_PTR(_P_)), GLUE_CAST08(_V_))
#define PPP_CHAP_HDR_CODE_is_CHALLENGE GLUE_CAST08(1L)
#define PPP_CHAP_HDR_CODE_is_RESPONSE GLUE_CAST08(2L)
#define PPP_CHAP_HDR_CODE_is_SUCCESS GLUE_CAST08(3L)
#define PPP_CHAP_HDR_CODE_is_FAILURE GLUE_CAST08(4L)
#define PTR_PPP_CHAP_HDR_ID(_P_)\
 ((GLUE_CAST_PTR(_P_))+(1))
#define GET_PPP_CHAP_HDR_ID(_P_)\
 GLUE_GB08((GLUE_CAST_PTR(_P_))+(1))
#define SET_PPP_CHAP_HDR_ID(_P_, _V_)\
 GLUE_SB08((GLUE_CAST_PTR(_P_))+(1), GLUE_CAST08(_V_))
#define PTR_PPP_CHAP_HDR_LENGTH(_P_)\
 ((GLUE_CAST_PTR(_P_))+(2))
#define GET_PPP_CHAP_HDR_LENGTH(_P_)\
 GLUE_GB16((GLUE_CAST_PTR(_P_))+(2))
#define SET_PPP_CHAP_HDR_LENGTH(_P_, _V_)\
 GLUE_SB16((GLUE_CAST_PTR(_P_))+(2), GLUE_CAST16(_V_))
#define PTR_PPP_CHAP_HDR_DATA(_P_)\
 ((GLUE_CAST_PTR(_P_))+(4))
#define SIZEOF_PPP_CHAP_HDR_DATA (0)

/* Definitions for PPP_LCP_OPT_AUTH_CHAP */

#define SIZEOF_PPP_LCP_OPT_AUTH_CHAP (5)
#define PTR_PPP_LCP_OPT_AUTH_CHAP_ALGORITHM(_P_)\
 ((GLUE_CAST_PTR(_P_))+(4))
#define GET_PPP_LCP_OPT_AUTH_CHAP_ALGORITHM(_P_)\
 GLUE_GB08((GLUE_CAST_PTR(_P_))+(4))
#define SET_PPP_LCP_OPT_AUTH_CHAP_ALGORITHM(_P_, _V_)\
 GLUE_SB08((GLUE_CAST_PTR(_P_))+(4), GLUE_CAST08(_V_))
#define PPP_LCP_OPT_AUTH_CHAP_ALGORITHM_is_MD5 GLUE_CAST08(5L)
#define PPP_LCP_OPT_AUTH_CHAP_ALGORITHM_is_MSCHAP GLUE_CAST08(128L)

/* Definitions for PPP_PAP_HDR */

#define SIZEOF_PPP_PAP_HDR (4)
#define PTR_PPP_PAP_HDR_CODE(_P_)\
 ((GLUE_CAST_PTR(_P_)))
#define GET_PPP_PAP_HDR_CODE(_P_)\
 GLUE_GB08((GLUE_CAST_PTR(_P_)))
#define SET_PPP_PAP_HDR_CODE(_P_, _V_)\
 GLUE_SB08((GLUE_CAST_PTR(_P_)), GLUE_CAST08(_V_))
#define PPP_PAP_HDR_CODE_is_REQUEST GLUE_CAST08(1L)
#define PPP_PAP_HDR_CODE_is_ACK GLUE_CAST08(2L)
#define PPP_PAP_HDR_CODE_is_NAK GLUE_CAST08(3L)
#define PTR_PPP_PAP_HDR_ID(_P_)\
 ((GLUE_CAST_PTR(_P_))+(1))
#define GET_PPP_PAP_HDR_ID(_P_)\
 GLUE_GB08((GLUE_CAST_PTR(_P_))+(1))
#define SET_PPP_PAP_HDR_ID(_P_, _V_)\
 GLUE_SB08((GLUE_CAST_PTR(_P_))+(1), GLUE_CAST08(_V_))
#define PTR_PPP_PAP_HDR_LENGTH(_P_)\
 ((GLUE_CAST_PTR(_P_))+(2))
#define GET_PPP_PAP_HDR_LENGTH(_P_)\
 GLUE_GB16((GLUE_CAST_PTR(_P_))+(2))
#define SET_PPP_PAP_HDR_LENGTH(_P_, _V_)\
 GLUE_SB16((GLUE_CAST_PTR(_P_))+(2), GLUE_CAST16(_V_))
#define PTR_PPP_PAP_HDR_DATA(_P_)\
 ((GLUE_CAST_PTR(_P_))+(4))
#define SIZEOF_PPP_PAP_HDR_DATA (0)

/* Definitions for PPP_LCP_OPT_AUTH_PAP */

#define SIZEOF_PPP_LCP_OPT_AUTH_PAP (4)

/* Definitions for PPP_LCP_OPT_ACFC */

#define SIZEOF_PPP_LCP_OPT_ACFC (2)

/* Definitions for PPP_LCP_OPT_PFC */

#define SIZEOF_PPP_LCP_OPT_PFC (2)

/* Definitions for PPP_LCP_OPT_MAGIC_NUMBER */

#define SIZEOF_PPP_LCP_OPT_MAGIC_NUMBER (6)
#define PTR_PPP_LCP_OPT_MAGIC_NUMBER_NUMBER(_P_)\
 ((GLUE_CAST_PTR(_P_))+(2))
#define GET_PPP_LCP_OPT_MAGIC_NUMBER_NUMBER(_P_)\
 GLUE_GB32((GLUE_CAST_PTR(_P_))+(2))
#define SET_PPP_LCP_OPT_MAGIC_NUMBER_NUMBER(_P_, _V_)\
 GLUE_SB32((GLUE_CAST_PTR(_P_))+(2), GLUE_CAST32(_V_))

/* Definitions for PPP_LCP_OPT_QUALITY */

#define SIZEOF_PPP_LCP_OPT_QUALITY (4)
#define PTR_PPP_LCP_OPT_QUALITY_PROTO(_P_)\
 ((GLUE_CAST_PTR(_P_))+(2))
#define GET_PPP_LCP_OPT_QUALITY_PROTO(_P_)\
 GLUE_GB16((GLUE_CAST_PTR(_P_))+(2))
#define SET_PPP_LCP_OPT_QUALITY_PROTO(_P_, _V_)\
 GLUE_SB16((GLUE_CAST_PTR(_P_))+(2), GLUE_CAST16(_V_))
#define PPP_LCP_OPT_QUALITY_PROTO_is_LQR GLUE_CAST16(49189L)
#define PTR_PPP_LCP_OPT_QUALITY_DATA(_P_)\
 ((GLUE_CAST_PTR(_P_))+(4))
#define SIZEOF_PPP_LCP_OPT_QUALITY_DATA (0)

/* Definitions for PPP_LCP_OPT_AUTH */

#define SIZEOF_PPP_LCP_OPT_AUTH (4)
#define PTR_PPP_LCP_OPT_AUTH_PROTO(_P_)\
 ((GLUE_CAST_PTR(_P_))+(2))
#define GET_PPP_LCP_OPT_AUTH_PROTO(_P_)\
 GLUE_GB16((GLUE_CAST_PTR(_P_))+(2))
#define SET_PPP_LCP_OPT_AUTH_PROTO(_P_, _V_)\
 GLUE_SB16((GLUE_CAST_PTR(_P_))+(2), GLUE_CAST16(_V_))
#define PPP_LCP_OPT_AUTH_PROTO_is_PAP GLUE_CAST16(49187L)
#define PPP_LCP_OPT_AUTH_PROTO_is_CHAP GLUE_CAST16(49699L)
#define PTR_PPP_LCP_OPT_AUTH_DATA(_P_)\
 ((GLUE_CAST_PTR(_P_))+(4))
#define SIZEOF_PPP_LCP_OPT_AUTH_DATA (0)

/* Definitions for PPP_LCP_OPT_ACCM */

#define SIZEOF_PPP_LCP_OPT_ACCM (6)
#define PTR_PPP_LCP_OPT_ACCM_ACCM(_P_)\
 ((GLUE_CAST_PTR(_P_))+(2))
#define GET_PPP_LCP_OPT_ACCM_ACCM(_P_)\
 GLUE_GB32((GLUE_CAST_PTR(_P_))+(2))
#define SET_PPP_LCP_OPT_ACCM_ACCM(_P_, _V_)\
 GLUE_SB32((GLUE_CAST_PTR(_P_))+(2), GLUE_CAST32(_V_))

/* Definitions for PPP_LCP_OPT_MRU */

#define SIZEOF_PPP_LCP_OPT_MRU (4)
#define PTR_PPP_LCP_OPT_MRU_MRU(_P_)\
 ((GLUE_CAST_PTR(_P_))+(2))
#define GET_PPP_LCP_OPT_MRU_MRU(_P_)\
 GLUE_GB16((GLUE_CAST_PTR(_P_))+(2))
#define SET_PPP_LCP_OPT_MRU_MRU(_P_, _V_)\
 GLUE_SB16((GLUE_CAST_PTR(_P_))+(2), GLUE_CAST16(_V_))

/* Definitions for PPP_LCP_OPT */

#define SIZEOF_PPP_LCP_OPT (2)
#define PTR_PPP_LCP_OPT_TYPE(_P_)\
 ((GLUE_CAST_PTR(_P_)))
#define GET_PPP_LCP_OPT_TYPE(_P_)\
 GLUE_GB08((GLUE_CAST_PTR(_P_)))
#define SET_PPP_LCP_OPT_TYPE(_P_, _V_)\
 GLUE_SB08((GLUE_CAST_PTR(_P_)), GLUE_CAST08(_V_))
#define PPP_LCP_OPT_TYPE_is_MRU GLUE_CAST08(1L)
#define PPP_LCP_OPT_TYPE_is_ACCM GLUE_CAST08(2L)
#define PPP_LCP_OPT_TYPE_is_AUTH GLUE_CAST08(3L)
#define PPP_LCP_OPT_TYPE_is_QUALITY GLUE_CAST08(4L)
#define PPP_LCP_OPT_TYPE_is_MAGIC_NUMBER GLUE_CAST08(5L)
#define PPP_LCP_OPT_TYPE_is_PFC GLUE_CAST08(7L)
#define PPP_LCP_OPT_TYPE_is_ACFC GLUE_CAST08(8L)
#define PTR_PPP_LCP_OPT_LENGTH(_P_)\
 ((GLUE_CAST_PTR(_P_))+(1))
#define GET_PPP_LCP_OPT_LENGTH(_P_)\
 GLUE_GB08((GLUE_CAST_PTR(_P_))+(1))
#define SET_PPP_LCP_OPT_LENGTH(_P_, _V_)\
 GLUE_SB08((GLUE_CAST_PTR(_P_))+(1), GLUE_CAST08(_V_))
#define PTR_PPP_LCP_OPT_DATA(_P_)\
 ((GLUE_CAST_PTR(_P_))+(2))
#define SIZEOF_PPP_LCP_OPT_DATA (0)

#endif /* EPILOGUE_LAYOUT_PPP_H */
