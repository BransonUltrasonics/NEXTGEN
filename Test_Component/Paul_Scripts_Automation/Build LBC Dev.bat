@ECHO OFF
@TITLE Starting your workspace

REM Auto Start and set up WindRiver Workbench environment every time
REM LBC Version 0.1 7.10.2018
REM Paul Fitzmaurice


REM Set your Development Workspace Here
SET Workspace=C:\Users\builder5\Desktop\Paul\MyWorkspaces\LBC

REM Set your logfile folder
SET LOGFILE_DIR=C:\temp\LBC_LOGS

REM Set your Windriver Home here
SET WindRiver=c:\WindRiver

SET BUILD_VSB=1
SET SEND_EMAIL=1
SET EMAIL_TO=paul.fitzmaurice@emerson.com,ramiro.chapa@emerson.com,alex.greenberg@emerson.com


REM +=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
REM This sets up the correct environment path for the current workspace
REM +=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
SET WIND_BSP_PATHS=%Workspace%\_Branson_Layer\AM437X\LBC\bsp;%Workspace%\_Branson_Layer\AM437x\PACC\bsp;%Workspace%\_Branson_Layer\AM572x\bsp;
SET WIND_LAYER_PATHS=%Workspace%\_Branson_Layer
SET WIND_WRTOOL_WORKSPACE=%Workspace%
SET PATH=%PATH%;%WindRiver%\workbench-4;c:\cygwin64\bin
SET /A ERROR_COUNT=0

REM This verifies that all files have been removed and are being copied to the custom syscall folder
del /f /s /q %WindRiver%\vxworks-7\pkgs\os\core\syscalls-1.0.13.0\custom > NUL
xcopy %Workspace%\_Default_vxWorks-7\pkgs %WindRiver%\vxworks-7\pkgs /e /y /s /q > NUL

IF EXIST %LOGFILE_DIR% rmdir /s /q %LOGFILE_DIR%
IF NOT EXIST %LOGFILE_DIR% mkdir %LOGFILE_DIR%

REM Change to Workspace folder`
cd %Workspace%

IF %SEND_EMAIL%==1 (
	email -f BuildStatus@emerson.com -n "LBC V4.0 Build Service" -b -s "LBC V4.0 Build Started! %COMPUTERNAME%" -r inetmail.emrsn.net %EMAIL_TO%
)

@ECHO.
@ECHO +==============================================+
@ECHO +               Cleaning Project               +
@ECHO +==============================================+
@ECHO.
date /t
time /t
@ECHO.
@ECHO.

IF %BUILD_VSB%==1 (
	@ECHO Cleaning: VSB_LBC
	CALL wrtool prj clean VSB_LBC > %LOGFILE_DIR%\VSB_LBC.log 2>&1
	SET /A ERROR_COUNT+=%ERRORLEVEL%
	@ECHO Completed with Error Code: %ERRORLEVEL%
	@ECHO.
)

@ECHO Cleaning: RTP_LBC 
CALL wrtool prj clean RTP_LBC > %LOGFILE_DIR%\RTP_LBC.log 2>&1
SET /A ERROR_COUNT+=%ERRORLEVEL%
@ECHO Completed with Error Code: %ERRORLEVEL%
@ECHO.

@ECHO Cleaning: ESS_DKM 
CALL wrtool prj clean ESS_DKM > %LOGFILE_DIR%\ESS_DKM.log 2>&1
SET /A ERROR_COUNT+=%ERRORLEVEL%
@ECHO Completed with Error Code: %ERRORLEVEL%
@ECHO.

@ECHO Cleaning: VIP_LBC 
CALL wrtool prj clean VIP_LBC > %LOGFILE_DIR%\VIP_LBC.log 2>&1
SET /A ERROR_COUNT+=%ERRORLEVEL%
@ECHO Completed with Error Code: %ERRORLEVEL%
@ECHO.

@ECHO.
@ECHO.
@ECHO +==============================================+
@ECHO +               Building Project               +
@ECHO +==============================================+
@ECHO.
date /t
time /t
@ECHO.
@ECHO.

IF %BUILD_VSB%==1 (
	@ECHO Building: VSB_LBC 
	CALL wrtool prj build VSB_LBC >> %LOGFILE_DIR%\VSB_LBC.log 2>&1
	@ECHO Completed with Error Code: %ERRORLEVEL%
	time /t
	@ECHO.
)

@ECHO Building: RTP_LBC 
CALL wrtool prj build RTP_LBC >> %LOGFILE_DIR%\RTP_LBC.log 2>&1
SET /A ERROR_COUNT+=%ERRORLEVEL%
@ECHO Completed with Error Code: %ERRORLEVEL%
time /t
@ECHO.

@ECHO Building: ESS_DKM 
CALL wrtool prj build ESS_DKM >> %LOGFILE_DIR%\ESS_DKM.log 2>&1
SET /A ERROR_COUNT+=%ERRORLEVEL%
@ECHO Completed with Error Code: %ERRORLEVEL%
time /t
@ECHO.

@ECHO Building: VIP_LBC 
CALL wrtool prj build VIP_LBC >> %LOGFILE_DIR%\VIP_LBC.log 2>&1
SET /A ERROR_COUNT+=%ERRORLEVEL%
@ECHO Completed with Error Code: %ERRORLEVEL%
time /t
@ECHO.

IF %SEND_EMAIL%==1 (
	IF %ERROR_COUNT%--0 (
		email -f BuildStatus@emerson.com -n "LBC V4.0 Build Service" -b -s "LBC V4.0 Build Completed! %COMPUTERNAME%" -r inetmail.emrsn.net %EMAIL_TO%
	)ELSE (
		email -f BuildStatus@emerson.com -n "LBC V4.0 Build Service" -b -s "LBC V4.0 Build FAILED! %COMPUTERNAME%" -r inetmail.emrsn.net %EMAIL_TO%
	)
)

EXIT /B
