@ECHO OFF
REM New Variables
SET COVERITY_RESULTS_PATH=%WORKSPACE%\Coverity
SET LOGFILE_PATH=%COVERITY_RESULTS_PATH%\Logfiles
SET RTP_AC=0
SET RTP_PC=0
SET RTP_SC=0
SET BUILDING_VSB_VIP=0
SET /A ERROR_CONDITION=0
SET /A ERROR_COUNT=0
SET /A COMPONENT_FAILED=0
REM ENCODER LOGIC Variables
SET ENCODER_LOGIC_NAME=Encoder_Logic
SET ENCODER_LOGIC_PATH=%WORKSPACE%\%ENCODER_LOGIC_NAME%


REM Add Email Start Here:
email -f BuildStatus@emerson.com -n "Coverity Build %BUILD_NAME% From: %COMPUTERNAME%" -b -s "Build %BUILD_NAME% %RELEASE_VERSION% Started!" -r inetmail.emrsn.net %EMAIL_TO%

IF EXIST %COVERITY_RESULTS_PATH% rmdir /s /q %COVERITY_RESULTS_PATH%

IF NOT EXIST %COVERITY_RESULTS_PATH% mkdir %COVERITY_RESULTS_PATH%
IF NOT EXIST %LOGFILE_PATH% mkdir %LOGFILE_PATH%

REM AM5728_VSB
IF %BUILD_VSB% NEQ 0 (
	SET BUILDING_VSB_VIP=1 
	CALL :Cov_Build AM5728_VSB AM5728_VSB
	@ECHO Resutls for AM5728_VSB %ERROR_CONDITION%
	SET BUILDING_VSB_VIP=0
)

REM AM5728_DKM_ECM 
CALL :Cov_Build AM5728_DKM_ECM AM5728_DKM_ECM
@ECHO Resutls for AM5728_DKM_ECM %ERROR_CONDITION%

REM RTP_SC 
CALL :Cov_Build RTP_SC RTP_SC
@ECHO Resutls for RTP_SC %ERROR_CONDITION%

REM AM5728_VIP
SET RTP_SC=1
SET BUILDING_VSB_VIP=1 
CALL :Modify_ROMFS AM5728_VIP
CALL :Cov_Build AM5728_VIP AM5728_VIP
SET RTP_SC=0
SET BUILDING_VSB_VIP=0
@ECHO Resutls for AM5728_VIP %ERROR_CONDITION%

REM AM4377_VSB
IF %BUILD_VSB% NEQ 0 (
	SET BUILDING_VSB_VIP=1 
	CALL :Cov_Build AM4377_VSB AM4377_VSB
	@ECHO Resutls for AM4377_VSB %ERROR_CONDITION%
	SET BUILDING_VSB_VIP=0
)

REM RTP_AC 
CALL :Cov_Build RTP_AC RTP_AC
@ECHO Resutls for RTP_AC %ERROR_CONDITION%

REM RTP_PC 
CALL :Cov_Build RTP_PC RTP_PC
@ECHO Resutls for RTP_PC %ERROR_CONDITION%

REM AM4377_DKM_ESS AC
CALL wrtool prj define remove "-DxACTUATION_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL wrtool prj define remove "-DACTUATION_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL wrtool prj define remove "-DxPOWER_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL wrtool prj define remove "-DPOWER_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL wrtool prj define add "-DACTUATION_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL :Cov_Build AM4377_DKM_ESS AM4377_DKM_ESS_AC
@ECHO Resutls for AM4377_DKM_ESS %ERROR_CONDITION%

REM AM4377_VIP 
SET RTP_AC=1
SET BUILDING_VSB_VIP=1
CALL :Modify_ROMFS AM4377_VIP_AC
CALL :Cov_Build AM4377_VIP AM4377_VIP_AC
SET RTP_AC=0
SET BUILDING_VSB_VIP=0
@ECHO Resutls for AM4377_VIP_AC %ERROR_CONDITION%

REM AM4377_DKM_ESS PC
CALL wrtool prj define remove "-DxACTUATION_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL wrtool prj define remove "-DACTUATION_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL wrtool prj define remove "-DxPOWER_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL wrtool prj define remove "-DPOWER_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL wrtool prj define add "-DPOWER_CONTROLLER_BUILD" AM4377_DKM_ESS >> %LOGFILE_PATH%\wrtool.log 2>&1
CALL :Cov_Build AM4377_DKM_ESS AM4377_DKM_ESS_PC
@ECHO Resutls for AM4377_DKM_ESS %ERROR_CONDITION%

REM AM4377_VIP 
SET RTP_PC=1
SET BUILDING_VSB_VIP=1
CALL :Modify_ROMFS
CALL :Cov_Build AM4377_VIP AM4377_VIP_PC
SET RTP_PC=0
SET BUILDING_VSB_VIP=0
@ECHO Resutls for AM4377_VIP_PC %ERROR_CONDITION%

REM ENCODER LOGIC
@ECHO.
@ECHO =========================
@ECHO.
@ECHO Starting Cov_Build for %ENCODER_LOGIC_NAME%
time /t
@ECHO.
SET OUTPUT_FOLDER=%ENCODER_LOGIC_NAME%
IF NOT EXIST %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% mkdir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER%
CD %ENCODER_LOGIC_PATH%
cov-build.exe --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% cs-make clean >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
REM cov-build.exe --dir C:\Users\builder5\Desktop\Paul\MyWorkspaces\NextGen\Integration\Coverity\Encoder_Logic cs-make clean 
cov-build.exe --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% cs-make all >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
REM cov-build.exe --dir C:\Users\builder5\Desktop\Paul\MyWorkspaces\NextGen\Integration\Coverity\Encoder_Logic cs-make all
cov-analyze.exe --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
REM cov-analyze.exe --dir C:\Users\builder5\Desktop\Paul\MyWorkspaces\NextGen\Integration\Coverity\Encoder_Logic 
cov-format-errors.exe --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
REM cov-format-errors.exe --dir C:\Users\builder5\Desktop\Paul\MyWorkspaces\NextGen\Integration\Coverity\Encoder_Logic
cov-commit-defects.exe --host buc-dan-sl01 --port 8080 --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% --user admin --password Orange56 --stream %ENCODER_LOGIC_NAME% >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1 
REM cov-commit-defects.exe --host buc-dan-sl01 --port 8080 --dir C:\Users\builder5\Desktop\Paul\MyWorkspaces\NextGen\Integration\Coverity\Encoder_Logic --user admin --password Orange56 --stream Encoder_Logic 
CD ..


REM Add Email Complete Here!
IF %ERROR_COUNT%==0 (
	email -f BuildStatus@emerson.com -n "Coverity Build %BUILD_NAME% From: %COMPUTERNAME%" -b -s "Build %BUILD_NAME% %RELEASE_VERSION% Completed SUCCESSFULLY!" -r inetmail.emrsn.net %EMAIL_TO%
)ELSE (
	email -f BuildStatus@emerson.com -n "Coverity Build %BUILD_NAME% From: %COMPUTERNAME%" -b -s "Build %BUILD_NAME% %RELEASE_VERSION% Completed FAILED!" -r inetmail.emrsn.net %EMAIL_TO%
)

EXIT /B


:Build_Status_Email
REM Add Email based on component Status
IF %COMPONENT_FAILED%==0 (
	email -f %EMAIL_BUILD_ORIGINATOR% -n "Coverity Build %BUILD_NAME% From: %COMPUTERNAME%" -b -s "Build %BUILD_NAME% %RELEASE_VERSION% Completed SUCCESSFULLY!" -r inetmail.emrsn.net %EMAIL_TO%
)ELSE (
	email -f %EMAIL_BUILD_ORIGINATOR% -n "Coverity Build %BUILD_NAME% From: %COMPUTERNAME%" -b -s "Build %BUILD_NAME% %RELEASE_VERSION% Completed FAILED!" -r inetmail.emrsn.net %EMAIL_TO%
)

SET COMPONENT_FAILED=0

EXIT /B


:Cov_Build
@ECHO.
@ECHO =========================
@ECHO.
@ECHO Starting Cov_Build for %1
time /t
@ECHO.

SET OUTPUT_FOLDER=%2

IF NOT EXIST %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% mkdir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER%
SET ERROR_CONDITION=PASS

@ECHO Cleaning Project
IF %BUILDING_VSB_VIP%==0 (
	CALL wrtool prj debugmode set 0 %1 >> %LOGFILE_PATH%\wrtool.log 2>&1
	CALL wrtool prj clean %1 > %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
)
IF %ERRORLEVEL% NEQ 0 (
	SET /A ERROR_COUNT+=1
	SET ERROR_CONDITION=CLEAN_DEBUG
	EXIT /B %ERRORLEVEL%
)

IF %BUILDING_VSB_VIP%==0 (
	CALL wrtool prj debugmode set 1 %1 >> %LOGFILE_PATH%\wrtool.log 2>&1
	CALL wrtool prj clean %1 >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
)

IF %ERRORLEVEL% NEQ 0 (
	SET /A ERROR_COUNT+=1
	SET ERROR_CONDITION=CLEAN_RELEASE
	EXIT /B %ERRORLEVEL%
)

@ECHO Executing cov-build
cov-build.exe --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% wrtool prj build %WORKSPACE%\%OUTPUT_FOLDER% >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
IF %ERRORLEVEL% NEQ 0 (
	SET /A ERROR_COUNT+=1
	SET ERROR_CONDITION=COV_BUILD
	EXIT /B %ERRORLEVEL%
)

@ECHO Executing cov-analyze
cov-analyze.exe --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
IF %ERRORLEVEL% NEQ 0 (
	SET /A ERROR_COUNT+=1
	SET ERROR_CONDITION=COV_ANALYZE
	EXIT /B %ERRORLEVEL%
)

@ECHO Executing cov-format
cov-format-errors.exe --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
IF %ERRORLEVEL% NEQ 0 (
	SET /A ERROR_COUNT+=1
	SET ERROR_CONDITION=COV_FORMAT
	EXIT /B %ERRORLEVEL%
)

@ECHO Executing cov-commit-defects
rem cov-commit-defects.exe --host buc-dan-sl01 --port 8080 --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% --user admin --password Orange56 --stream %2 >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
cov-commit-defects.exe --host buc-dan-sl01 --port 8080 --dir %COVERITY_RESULTS_PATH%\%OUTPUT_FOLDER% --user admin --password Orange56 --stream %2 >> %LOGFILE_PATH%\%OUTPUT_FOLDER%.log 2>&1
IF %ERRORLEVEL% NEQ 0 (
	SET /A ERROR_COUNT+=1
	SET ERROR_CONDITION=COV_COMMIT_DEFECTS
	EXIT /B %ERRORLEVEL%
)

IF %EMAIL_BUILD_ORIGINATOR% NEQ "PASS" (
	SET COMPONENT_FAILED=1
)

CALL :Build_Status_Email

time /t

@ECHO.

EXIT /B %ERRORLEVEL%


:Modify_ROMFS
IF %RTP_SC%==1 (
	CALL :WRTool_ROMFS_Remove AM5728_DKM_ECM.out AM5728_ROMFS
	CALL :WRTool_ROMFS_Remove RTP_SC.vxe AM5728_ROMFS
	CALL :WRTool_ROMFS_Add "%WORKSPACE%\AM5728_DKM_ECM\AM5728_VSB_ARMARCH7diab_SMP\AM5728_DKM_ECM\Debug\AM5728_DKM_ECM.out" AM5728_ROMFS
	CALL :WRTool_ROMFS_Add "%WORKSPACE%\RTP_SC\AM5728_VSB_ARMARCH7diab_C++2003\RTP_SC\Debug\RTP_SC.vxe" AM5728_ROMFS
)

IF %RTP_AC%==1 (
	CALL :WRTool_ROMFS_Remove AM4377_DKM_ESS.out AM4377_ROMFS
	CALL :WRTool_ROMFS_Remove RTP_AC.vxe AM4377_ROMFS
	CALL :WRTool_ROMFS_Remove RTP_PC.vxe AM4377_ROMFS
	CALL :WRTool_ROMFS_Add "%WORKSPACE%\AM4377_DKM_ESS\AM4377_VSB_ARMARCH7diab\AM4377_DKM_ESS\Debug\AM4377_DKM_ESS.out" AM4377_ROMFS
	CALL :WRTool_ROMFS_Add "%WORKSPACE%\RTP_AC\AM4377_VSB_ARMARCH7diab_C++2003\RTP_AC\Debug\RTP_AC.vxe" AM4377_ROMFS
)

IF %RTP_PC%==1 (
	CALL :WRTool_ROMFS_Remove AM4377_DKM_ESS.out AM4377_ROMFS
	CALL :WRTool_ROMFS_Remove RTP_AC.vxe AM4377_ROMFS
	CALL :WRTool_ROMFS_Remove RTP_PC.vxe AM4377_ROMFS
	CALL :WRTool_ROMFS_Add "%WORKSPACE%\AM4377_DKM_ESS\AM4377_VSB_ARMARCH7diab\AM4377_DKM_ESS\Debug\AM4377_DKM_ESS.out" AM4377_ROMFS
	CALL :WRTool_ROMFS_Add "%WORKSPACE%\RTP_PC\AM4377_VSB_ARMARCH7diab_C++2003\RTP_PC\Debug\RTP_PC.vxe" AM4377_ROMFS
)

EXIT /B %ERRORLEVEL%


:WRTool_ROMFS_Add
REM 3 Args // Action File Target
CALL timeout /T 4 /NOBREAK > nul 2>&1
CALL wrtool prj romfs add -file %1 %2 >> %LOGFILE_PATH%\wrtool.log 2>&1
@ECHO Error Code: %ERRORLEVEL%: 
CALL wrtool prj romfs add -file %1 %2 >> %LOGFILE_PATH%\wrtool.log 2>&1

EXIT /B %ERRORLEVEL%


:WRTool_ROMFS_Remove
REM 3 Args // Action File Target
CALL timeout /T 4 /NOBREAK > nul 2>&1
CALL wrtool prj romfs remove %1 %2 >> %LOGFILE_PATH%\wrtool.log 2>&1
@ECHO Error Code: %ERRORLEVEL%: 
CALL wrtool prj romfs remove %1 %2 >> %LOGFILE_PATH%\wrtool.log 2>&1

EXIT /B %ERRORLEVEL%

