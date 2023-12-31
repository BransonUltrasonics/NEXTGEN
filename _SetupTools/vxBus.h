/* vxBus.h - VxBus subsystem header file */

/*
 * Copyright (c) 2013-2015 Wind River Systems, Inc.
 *
 * The right to copy, distribute, modify or otherwise make use
 * of this software may be licensed only pursuant to the terms
 * of an applicable Wind River license agreement.
 */

/*
modification history
--------------------
29sep15,wap  Add support for user-space VxBus interface (F2165)
17apr15,pmr  make CRITICAL_MSG like DEBUG_MSG for CERT
17nov14,pmr  remove CRITICAL_MSG; remove SIOPOLL from VXBUS_BASIC
19dec13,r_y  remove #define _WRS_CONFIG_DEBUG_FLAG(JIRA:VXW7-1126)
17jul13,l_z  Create from vxBus.h(03x)
*/

#ifndef __INCvxbBush
#define __INCvxbBush

#ifdef __cplusplus
extern "C" {
#endif

/* includes */

#include <hwif/vxbus/vxbLib.h>
#include <hwif/util/vxbAccess.h>

#ifdef _WRS_KERNEL

#include <private/kwriteLibP.h>


#if !defined (_WRS_CONFIG_CERT) || defined (_WRS_CONFIG_DEBUG_FLAG)
#define CRITICAL_MSG(fmt, args...)                    \
    do       {                                        \
                if (_func_kprintf != NULL)            \
                    _func_kprintf (fmt, ##args);      \
                } while (FALSE)
#else /* !_WRS_CONFIG_CERT || _WRS_CONFIG_DEBUG_FLAG) */
#define CRITICAL_MSG(fmt, args...)
#endif /* !_WRS_CONFIG_CERT || _WRS_CONFIG_DEBUG_FLAG) */

#ifdef _WRS_CONFIG_DEBUG_FLAG
#define DEBUG_MSG(fmt, args...)                       \
    do       {                                        \
                if (_func_kprintf != NULL)            \
                    _func_kprintf (fmt, ##args);      \
                } while (FALSE)
#else /* _WRS_CONFIG_DEBUG_FLAG */
#define DEBUG_MSG(fmt, args...)
#endif /* _WRS_CONFIG_DEBUG_FLAG */

#else /* _WRS_KERNEL */

#ifdef _WRS_CONFIG_DEBUG_FLAG
#define CRITICAL_MSG(fmt, args...) printf(fmt, ##args)
#define DEBUG_MSG(fmt, args...)  printf(fmt, ##args)
#else
#define CRITICAL_MSG(fmt, args...)
#define DEBUG_MSG(fmt, args...)
#endif

#endif /* _WRS_KERNEL */

/*
 * The subset of the _WRS_CONFIG_VXBUS_BASIC VSB option, this apply to small
 * footprint
 */

#ifdef _WRS_CONFIG_VXBUS_BASIC
#define _VXBUS_BASIC_HWMEMLIB   /* basic hwMemLib library */
#endif /* _WRS_CONFIG_VXBUS_BASIC */

#undef _VXBUS_BASIC_SIOPOLL    /* polled mode serial driver */

/* debug/test */

#ifdef  VXB_PERFORM_SANITY_CHECKS

/* enable sanity checks in vxbDmaBufLib */

#define VXB_ASSERT_NONNULL(pVar, errVal) \
    if ( pVar == NULL ) \
        return(errVal);

#define VXB_ASSERT(cond, errVal) \
    if ( ! (cond) ) \
        return(errVal);

#define VXB_ASSERT_NONNULL_V(pVar) \
    if ( pVar == NULL ) \
        return;

#define VXB_ASSERT_V(cond) \
    if ( ! (cond) ) \
        return;

#else   /* VXB_PERFORM_SANITY_CHECKS */
#define VXB_ASSERT_NONNULL(pVar, errVal)
#define VXB_ASSERT(cond, errVal)
#define VXB_ASSERT_NONNULL_V(pVar)
#define VXB_ASSERT_V(cond)
#endif  /* VXB_PERFORM_SANITY_CHECKS */

#ifdef __cplusplus
}
#endif

#endif /* __INCvxbBush */
