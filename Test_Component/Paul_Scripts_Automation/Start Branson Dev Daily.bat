@ECHO OFF
@TITLE Configuring your workspace

REM Auto Start and set up WindRiver Workbench environment every time
REM Version 0.1 4.10.2018
REM Paul Fitzmaurice


REM Set your Development Workspace Here
set Workspace=C:\Users\PFitzmaurice\MyWorkspaces\NextGen\Branson_Dev_Daily

REM Set your Windriver Home here
set WindRiver=c:\WindRiver

REM Change Board Each Time
REM      0 = NO
REM      1 = YES
SET Change_Board=0

REM Board_Type
REM     0 = Custom
REM     1 = IDK_PACC
SET Board_Type=0

REM Build QT Controller
SET BUILD_QT=0

REM BUILD Encoder Logic
SET BUILD_ECL=0



REM =======================
REM !!!! DO NOT MODIFY !!!!
REM !!!!  CODE BELOW   !!!!
REM =======================

REM Verify Workspace and WindRiver Exist
IF NOT EXIST %WindRiver%\vxworks-7 (
	@ECHO Your WindRiver Folder is not valid, please edit and try again: %WindRiver%
	PAUSE
	EXIT /B %ERRORLEVEL%
)
IF NOT EXIST %Workspace%\_Branson_Driver_Layer (
	@ECHO Your Workspace is not valid, please edit and try again: %Workspace%
	PAUSE
	EXIT /B %ERRORLEVEL%
)

REM This sets up the correct environment path for the current workspace
SET WIND_BSP_PATHS=%Workspace%\_Branson_Driver_Layer\BRANSON_BSP\BSP_4377;%Workspace%\_Branson_Driver_Layer\BRANSON_BSP\BSP_5728;%Workspace%\_Branson_Driver_Layer\BRANSON_BSP\BSP_IDK;%Workspace%\_Branson_Driver_Layer\BRANSON_BSP\BSP_LBC;
SET WIND_LAYER_PATHS=%Workspace%\_Branson_Driver_Layer
SET WIND_WRTOOL_WORKSPACE=%Workspace%
SET PATH=%PATH%;%WindRiver%\workbench-4

REM This verifies that all files have been removed and are being copied to the custom syscall folder
del /f /s /q %WindRiver%\vxworks-7\pkgs\os\core\syscalls-1.0.13.0\custom > NUL
xcopy %Workspace%\_Default_vxWorks-7\pkgs %WindRiver%\vxworks-7\pkgs /e /y /s /q > NUL

REM Change to Workspace folder`
cd %Workspace%
 
REM Set Board Type
IF %Change_Board%==1 (
	IF %Board_Type%==0 (
		REM Set Up for CUSTOM BOARD
		@ECHO Setting Properties for Building the Custom Board
		CALL wrtool prj vip component add AM5728_VIP BOARD_TI_AM5728_BRANSON > NUL
		CALL wrtool prj define remove -DPACC RTP_AC > NUL
	)else (
		REM Set UP for IDK_PACC BOARD
		@ECHO Setting Properties for Building the IDK_PACC Board
		CALL wrtool prj vip component add AM5728_VIP BOARD_TI_AM5728_IDK > NUL
		CALL wrtool prj define add -DPACC RTP_AC > NUL
	)
)

REM Define Jazz Information
SET STREAM_NAME=Next Gen Branson Dev Daily Stream
SET JAZZ_SERVER=https://jazz.bucclm.com/ccm
SET URI=buildLogin
SET CURRENTUSERNAME=%USERNAME%
SET MY_PASS=Gav1n63!

REM Define that we are in the CI to force ACCEPT From SCM
SET CIBuild=0

REM Define that we are in the CI to force ACCEPT From SCM
SET CIBuild=1

REM This will automatically start WindRiver Workbench with your currently defined workspace
%WindRiver%\workbench-4\startWorkbench.bat -data %Workspace%
