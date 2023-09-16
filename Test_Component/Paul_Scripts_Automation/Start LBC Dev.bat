@ECHO OFF
@TITLE Starting your workspace

REM Auto Start and set up WindRiver Workbench environment every time
REM LBC Version 0.1 7.10.2018
REM Paul Fitzmaurice


REM Set your Development Workspace Here
set Workspace=C:\Users\builder5\Desktop\Paul\MyWorkspaces\LBC

REM Set your Windriver Home here
set WindRiver=c:\WindRiver


REM +=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=+=
REM This sets up the correct environment path for the current workspace
SET WIND_BSP_PATHS=%Workspace%\_Branson_Layer\AM437X\LBC\bsp;%Workspace%\_Branson_Layer\AM437x\PACC\bsp;%Workspace%\_Branson_Layer\AM572x\bsp;
SET WIND_LAYER_PATHS=%Workspace%\_Branson_Layer
SET WIND_WRTOOL_WORKSPACE=%Workspace%
SET PATH=%PATH%;%WindRiver%\workbench-4

REM This verifies that all files have been removed and are being copied to the custom syscall folder
del /f /s /q %WindRiver%\vxworks-7\pkgs\os\core\syscalls-1.0.13.0\custom > NUL
xcopy %Workspace%\_Default_vxWorks-7\pkgs %WindRiver%\vxworks-7\pkgs /e /y /s /q > NUL

REM Change to Workspace folder`
cd %Workspace%

REM This will automatically start WindRiver Workbench with your currently defined workspace
%WindRiver%\workbench-4\startWorkbench.bat -data %Workspace%
