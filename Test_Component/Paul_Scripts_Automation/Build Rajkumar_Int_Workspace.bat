@echo OFF

set WORKSPACE_TEMP=C:\Next_Gen\Rajkumar_Int_Workspace
set WINDRIVER_TEMP=c:\WindRiver

set BUILD_LOGS=%WORKSPACE_TEMP%\BuildLogs
set RETURN_VALUE_FILE=%BUILD_LOGS%\Return_Values.log
set PROJECT_LIST_FILE=%BUILD_LOGS%\Project_List.log
set path=%PATH%;%WINDRIVER_TEMP%\workbench-4
set WIND_WRTOOL_WORKSPACE=%WORKSPACE_TEMP%
set ESS_PATH=%WORKSPACE_TEMP%\AM4377_DKM_ESS\AM4377_VSB_ARMARCH7diab\AM4377_DKM_ESS\Debug
set WIND_BSP_PATHS=%WORKSPACE_TEMP%\_Branson_Driver_Layer\BRANSON_BSP\BSP_4377;%WORKSPACE_TEMP%\_Branson_Driver_Layer\BRANSON_BSP\BSP_5728;%WORKSPACE_TEMP%\_Branson_Driver_Layer\BRANSON_BSP\BSP_IDK;%WORKSPACE_TEMP%\_Branson_Driver_Layer\BRANSON_BSP\BSP_LBC;
set WIND_LAYER_PATHS=%WORKSPACE_TEMP%\_Branson_Driver_Layer
set ACTUATION_BUILD="-DACTUATION_CONTROLLER_BUILD"
set POWER_BUILD="-DPOWER_CONTROLLER_BUILD"


xcopy %WORKSPACE_TEMP%\_Default_vxWorks-7\pkgs %WindRiver_Temp%\vxworks-7\pkgs /e /y /s > vxworks-7-Copy.txt

if not exist %BUILD_LOGS% mkdir %BUILD_LOGS%
set > %BUILD_LOGS%\Environment.log


cd %WORKSPACE_TEMP%

call wrtool prj list > %PROJECT_LIST_FILE%


echo Full Build Started > %RETURN_VALUE_FILE%
date /T >> %RETURN_VALUE_FILE%
time /T >> %RETURN_VALUE_FILE%




set COMPONENT=AM5728_VSB
@Echo Building %COMPONENT% 
@Echo Building %COMPONENT% >> %RETURN_VALUE_FILE%


call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
echo Error: %ERRORLEVEL% >> %RETURN_VALUE_FILE%
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log
echo Error: %ERRORLEVEL% >> %RETURN_VALUE_FILE%



set COMPONENT=AM5728_VIP
@Echo Building %COMPONENT% 
@Echo Building %COMPONENT% >> %RETURN_VALUE_FILE%

call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log
echo Error: %ERRORLEVEL%



set COMPONENT=AM5728_DKM_ECM
@Echo Building %COMPONENT% 
@Echo Building %COMPONENT% >> %RETURN_VALUE_FILE%

call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log



set COMPONENT=RTP_SC
@Echo Building %COMPONENT%
@Echo Building %COMPONENT% >> %RETURN_VALUE_FILE%

call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log

set COMPONENT=AM4377_VSB
@Echo Building %COMPONENT%
@Echo Building %COMPONENT% >> %RETURN_VALUE_FILE%

call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log



set COMPONENT=AM4377_VIP
@Echo Building %COMPONENT%
@Echo Building %COMPONENT% >> %RETURN_VALUE_FILE%

call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log



set COMPONENT=RTP_PC
@Echo Building %COMPONENT%
@Echo Building %COMPONENT% >> %RETURN_VALUE_FILE%

call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log



set COMPONENT=RTP_AC
@Echo Building %COMPONENT%
@Echo Building %COMPONENT% >> %RETURN_VALUE_FILE%

call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log




set COMPONENT=AM4377_DKM_ESS
@Echo Building %COMPONENT% with %ACTUATION_BUILD% 
@Echo Building %COMPONENT% with %ACTUATION_BUILD% >> %RETURN_VALUE_FILE%

call wrtool prj define add %ACTUATION_BUILD% %COMPONENT%
call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log
rename %ESS_PATH%\AM4377_DKM_ESS.out %ESS_PATH%\AM4377_DKM_ESS_AC.out 
call wrtool prj define remove -DACTUATION_CONTROLLER_BUILD %COMPONENT%



set COMPONENT=AM4377_DKM_ESS
@Echo Building %COMPONENT% with %POWER_BUILD% 
@Echo Building %COMPONENT% with %POWER_BUILD% >> %RETURN_VALUE_FILE%
call wrtool prj define add %POWER_BUILD% %COMPONENT%
call wrtool prj clean %COMPONENT% > %BUILD_LOGS%\%COMPONENT%.log
call wrtool prj build %COMPONENT% >> %BUILD_LOGS%\%COMPONENT%.log
rename %ESS_PATH%\AM4377_DKM_ESS.out %ESS_PATH%\AM4377_DKM_ESS_PC.out 
call wrtool prj define remove -DPOWER_CONTROLLER_BUILD %COMPONENT%
