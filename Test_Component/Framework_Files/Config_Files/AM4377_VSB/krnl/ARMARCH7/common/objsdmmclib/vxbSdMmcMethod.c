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

#include <vxWorks.h>
#include <hwif/vxBus.h>
#include <vxbSdMmcLib.h>
#include <hwif/methods/vxbSdMmcMethod.h>

VXB_DEVMETHOD_DEF(vxbSdspecinfoGet, "Get vxBus SDMMC spec info method");

STATUS VXB_SDSPECINFO_GET (VXB_DEV_ID pDev, void ** pHostSpec, VXB_SD_CMDISSUE_FUNC * pCmdIssue)
    {
    vxbSdspecinfoGet_t * func = (vxbSdspecinfoGet_t *) vxbDevMethodFind (pDev, VXB_DEVMETHOD_CALL(vxbSdspecinfoGet));

    if (func == NULL)
        return (STATUS)ERROR;

    return func (pDev, pHostSpec, pCmdIssue);
    }

