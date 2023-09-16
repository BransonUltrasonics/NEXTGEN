/*
 *  wmw_httpconf.c 
 *
 *  This is a part of a Wind River Management SDK source code library.
 *
 *  Copyright (C) 2014 Wind River Systems
 *  Version 4.9
 *  All rights reserved.
 *
 */


/* WARNING:  This file will be generated by a Wind River Management Integration
 * Tool.  Any changes made to this file may be overwritten by
 * subsequent uses of the tool. */

/* - Global defaults and user definable variables. */
/* includes */
#include "stdlib.h"
#include "wmw_httpconf.h"
#include "wm.h"
#include "httpLib.h"
#include "httpRpms.h"

#include "httpLCLib.h"

#include "sampleUserCgi.h"
#include "sampleUserRpm.h"

/* header and footer lines ap/pre-pended to any Wind River Management Web Server error report */
const char * const httpErrorHeader =
		"<H1>Web Server Error Report:</H1><HR>\n"; 
const char * const httpErrorFooter =
		""; 

/* standard system error messages, DO NOT change the order! */
const char * const httpSysErrorTab[] =
{
		"Internal httpd failure / program error",
		"No RPM for this combination of URL and method",
		"URL parsing error",
		"File not found",
		"IO error, transfer interrupted",
		"Access denied",
		"RPM configuration error",
		"Out of memory, can not handle request"
};

/* # of entries in httpSysErrorTab */
const unsigned short httpMaxErrors = sizeof (httpSysErrorTab)/sizeof (char*);


/*
 *
 * httpd - the main routine of the server
 *
 * This routine is called once at start-up as the server task.
 * Under normal circumstances it should not terminate.
 * For debugging there is an exit URL to terminate the server
 *
 * RETURNS: ERROR on termination
 *
 */
HTTP_STATUS httpd(void)
{
	if (httpInit() != HTTP_OK)
		return HTTP_ERROR;

	/*
	 * This section allows scalability and configures the functionality:
	 * only RPMs referenced in the following sections will be linked.
	 *
	 * configuration of user RPMs to be invoked for GET requests:
	 * (GET requests are used for normal downloads to client software)
	 * this table provides a URL-identifier for each GET-RPM
	 * eg: all URLs starting with "/hello" will be processed by rpmHello
	 * NOTE: the URL identifiers MUST be ordered by length, best-fit first!
	 *       the RPM with the first matching identifier in the list wins
	 */



	/*
	 * configuration of the aliasing table for the alias rpm
	 * Syntax: "requested path in url", "path to be substituted"
	 * remark: only one asterisk in the requested path may occur, which
	 *         in turn will be replaced by the second string.
	 * Example: "* /" -> "* /index.html" will convert "/pub/" to "/pub/index.html"
	 *       (the ^ above spaces are just for the compiler ... normally,
	 *        there should be no spaces in between * and /!!!)
	 */
	httpAliasConfAdd("/FirmwareUpgrade/Login",    "/FirmwareUpgrade/index.html");

	/*
	 * configuration of http server security
	 */

	/* enable IP checking support */
	httpIpConfAdd("local",   "192.168.2.*");
	httpIpConfAdd("Everywhere", "*");

	/* enable password checking support */
	httpPwdConfAdd("privileged", "allowed", "allowed");

	/* enable RPM to display authentication */
	httpRpmConfAdd(HTTP_M_GET, "/secure/debug_showauth/", httpRpmAuth);

	/* enable filesystem RPM to access pages from filesystem */
	httpRpmConfAdd(HTTP_M_GET, "/FirmwareUpgrade/", httpProcessFOEPostData);
	httpRpmConfAdd(HTTP_M_GET, "/FirmwareUpgrade/", httpSendFOEResponse);
	httpRpmConfAdd(HTTP_M_GET, "/FirmwareUpgrade/", httpRpmWmbParse);
	httpRpmConfAdd(HTTP_M_GET, "/FirmwareUpgrade/", httpRpmFs);
	httpFsConfAdd("/FirmwareUpgrade/",    "/romfs/htdocs/");
	httpSecureFsConfAdd ("/FirmwareUpgrade/", "/romfs/htdocs/");

	httpRpmConfAdd(HTTP_M_GET, "/upload/", httpRpmWmbParse);
	httpRpmConfAdd(HTTP_M_GET, "/upload/", httpRpmFs);
	httpFsConfAdd("/upload/", "/romfs/htdocs/");
	httpSecureFsConfAdd ("/upload/", "/romfs/htdocs/");

	httpFileSetDefaultFs(ANSI_FS);
	httpFileRegister("/romfs/htdocs/jsAuthTest.html", MEM_FS, "text/html", NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	httpFileAccessSet("/romfs/htdocs/jsAuthTest.html", 5, 5);
	httpFileRegister("/romfs/htdocs/index.html", ANSI_FS, "text/html", NULL, NULL, NULL, NULL, NULL, NULL, NULL);
	httpFileAccessSet("/romfs/htdocs/index.html", 6, 6);

	/* enable CGI emulation support */
	/* configuration of the CGI RPM
	 * Syntax: { "CGI-name", function pointer },
	 */
	httpRpmConfAdd(HTTP_M_GET, "/cgi/", httpRpmCgi);
	httpCgiFnConfAdd("printenv.cgi", cgiPrintEnv);

	/*
	 * configuration of the upload RPM to be invoked for POST requests:
	 * (POST requests are used to upload data to the server)
	 * Note: the URL identifiers MUST be ordered by length, bestfit first!
	 * Syntax:  { "requested path in url", "path in your filesystem" },
	 */
	httpRpmConfAdd(HTTP_M_POST, "/upload/", httpRpmUpload);
	httpRpmConfAdd(HTTP_M_POST, "/upload/", httpRpmWmbPost);
	httpUploadConfAdd("/upload/", "/ram0/");
	httpSecureUploadConfAdd("/upload/", "/ram0/");

	/*
	 * configuration of the form post RPM to process a form of type
	 * application/x-www-form-urlencoded.
	 * This RPM stores all the name=value pairs in the server environment
	 * for other RPMs to use.
	 */
	httpRpmConfAdd(HTTP_M_POST, "/Services/", httpProcessPostData);
	httpRpmConfAdd(HTTP_M_POST, "/Services/", httpSendResponse);

	httpRpmConfAdd(HTTP_M_POST, "/FirmwareUpgrade/", httpRpmPost);
	httpRpmConfAdd(HTTP_M_POST, "/FirmwareUpgrade/", httpRpmWmbPost);

	/* enable Live Control Java support */
	/* configuration of the LC RPM
	 * Syntax: { "lc" },
	 */
	httpLCInit(20,40);
	httpRpmLiveControlInit("/lc/");

	/*
	 * configuration of custom RPMs
	 */
	httpRpmConfAdd(HTTP_M_GET, "/user_rpm/", httpRpmUserExample);


	/*
	 * Call the Server
	 */

	return (httpServerStart());
}

/**************************************************************************
 *
 * httpGetWmbComp - Get the server's component ID for WMB
 *
 * The component id is initialized by httpWmbInit() at start up, and is
 * needed to start WMB sessions.
 *
 * RETURNS: the component id or null
 *
 */

static WMB_COMPONENT_T * httpWmbComponentId = NULL;

WMB_COMPONENT_T * httpGetWmbComp
(
		void
)
{
	return httpWmbComponentId;
}


#ifdef __WM_EVENT_MANAGER__
/**************************************************************************
 *
 * webclidemo_WmwListener - Receive events from the WMB.
 *
 * RETURNS: void
 *
 */

void webclidemo_WmwListener
(
		WMB_EM_EVENT_T *pEmEvent
)
{
	WMB_PORTFOLIO_T *portfolio;

	switch (pEmEvent->wmbEvent.eventType)
	{
	case WMB_EVENT_TYPE_CONTROL:
		break;

	case WMB_EVENT_TYPE_PORTFOLIO:
		switch (pEmEvent->wmbEvent.eventID)
		{
		case WMB_PORTFOLIO_CREATED_EVENT:
			if (OK == wmbPortfolioGet("wmw", "xml", &portfolio))
			{
				httpPortfolioRead(portfolio->fileName);
			}
			break;

		}
		break;

		default:
			break;
	}
}
#endif /* __WM_EVENT_MANAGER__ */

/**************************************************************************
 *
 * webclidemo_Web_Start - Starts up the Web blade of this component.
 *
 * RETURNS: OK
 *
 */

STATUS webclidemo_Web_Start
(
		void *cid
)
{
	STATUS status = OK;

#ifdef __WIN32_OS__
	WORD wVersionRequested;
	WSADATA wsaData;
	int err;

	/* Set the registered Component ID */
	httpWmbComponentId = cid;

	wVersionRequested = MAKEWORD(2, 2);

	err = WSAStartup(wVersionRequested, &wsaData);
	if (err != 0)
	{
		return wmosError(ERROR_GENERAL, "Could not find WinSock.dll");
	}
	status = httpd();
	while(1) wmosTimeSleep(10000);

#else

	/* Set the registered Component ID */
	httpWmbComponentId = cid;

	status = httpd();

#endif /* __WIN32_OS__ */

	return status;
}

/**************************************************************************
 *
 * webclidemo_Web_Stop - Stop down the Web blade of this component.
 *
 * RETURNS: OK
 *
 */

STATUS webclidemo_Web_Stop
(
		void
)
{
	(void) httpServerKill();
	return OK;
}
