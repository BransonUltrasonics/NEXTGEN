/* ipcom_ipc_spinlock.h - API for interprocessor (AMP) spinlocks */

/*
 * Copyright (c) 2006-2013 Wind River Systems, Inc.
 *
 * The right to copy, distribute, modify or otherwise make use
 * of this software may be licensed only pursuant to the terms
 * of an applicable Wind River license agreement.
 */
#ifndef IPCOM_IPC_SPINLOCK_H
#define IPCOM_IPC_SPINLOCK_H

/*
 ****************************************************************************
 * 1                    DESCRIPTION
 ****************************************************************************
 * Definition of API for fast, nondeterministic, interprocessor spinlocks
 * intended for AMP systems.
 */

/*
DESCRIPTION
This library contains the API for initializing and using spinlocks,
intended as one basic foundation for inter-processor communication (IPC)
within asymmetric multiprocessing (AMP) systems.

These spinlocks are fast but do not guarantee fairness or determinism
in acquisition time when under contention.  The spinlocks may be used from
interrupt level, but doing so makes the theoretically unbounded acquisition
latency apply to tasks of all priorities on the same CPU, as well as to lower
priority interrupts.

An ipc spinlock must be allocated within a shared memory region.

INCLUDE FILES: ipcom_atomic.h, ipcom_cstyle.h, ipcom_type.h
*/

/*
 ****************************************************************************
 * 2                    CONFIGURATION
 ****************************************************************************
 */

#include "ipcom_config.h"


/*
 ****************************************************************************
 * 3                    INCLUDE FILES
 ****************************************************************************
 */

#include <ipcom_cstyle.h>
#include <ipcom_type.h>
#include <ipcom_atomic.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 ****************************************************************************
 * 4                    DEFINES
 ****************************************************************************
 */

/*
 ****************************************************************************
 * 5                    TYPES
 ****************************************************************************
 */

typedef Ip_u32 Ipcom_int_key_t;

typedef struct Ipcom_ipc_spinlock_s
{
    Ipcom_atomic_t flag;
} Ipcom_ipc_spinlock_t;

/*
 ****************************************************************************
 * 6                    FUNCTIONS
 ****************************************************************************
 */

IP_PUBLIC void
ipcom_ipc_spinlock_init(Ipcom_ipc_spinlock_t * lock);

IP_PUBLIC Ipcom_int_key_t
ipcom_ipc_spinlock_take(Ipcom_ipc_spinlock_t * lock);

IP_PUBLIC void
ipcom_ipc_spinlock_give (Ipcom_ipc_spinlock_t * lock, Ipcom_int_key_t key);

#ifdef __cplusplus
}
#endif

#endif /* IPCOM_IPC_SPINLOCK_H */


/*
 ****************************************************************************
 *                      END OF FILE
 ****************************************************************************
 */
