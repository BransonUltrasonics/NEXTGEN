/*
 * Copyright (c) 2018 Wind River Systems, Inc.
 *
 * The right to copy, distribute, modify or otherwise make use
 * of this software may be licensed only pursuant to the terms
 * of an applicable Wind River license agreement.
 */

/*
 *  DO NOT MODIFY THIS FILE MANUALLY
 *
 *  This file is automatically generated from
 *  the method file (extended with *.m).
 *
 */

#ifndef _INCvxbDyncIntMethodh
#define _INCvxbDyncIntMethodh

VXB_DEVMETHOD_DECL(vxbIntAlloc)
typedef int vxbIntAlloc_t (VXB_DEV_ID pDev, int count,  VXB_DYNC_INT_ENTRY * pVxbDyncIntEntry);
int VXB_INT_ALLOC (VXB_DEV_ID pDev, int count,  VXB_DYNC_INT_ENTRY * pVxbDyncIntEntry);

VXB_DEVMETHOD_DECL(vxbIntFree)
typedef void vxbIntFree_t (VXB_DEV_ID pDev, int count,  VXB_DYNC_INT_ENTRY * pVxbDyncIntEntry);
void VXB_INT_FREE (VXB_DEV_ID pDev, int count,  VXB_DYNC_INT_ENTRY * pVxbDyncIntEntry);

#endif /* _INCvxbDyncIntMethodh */

