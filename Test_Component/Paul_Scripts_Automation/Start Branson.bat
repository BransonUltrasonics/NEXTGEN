
set WORKSPACE=C:\Users\builder5\Desktop\Paul\MyWorkspaces\NextGen\Branson
set WINDRIVER=c:\WindRiver
set WIND_BSP_PATHS=%WORKSPACE%\_Branson_Driver_Layer\BRANSON_BSP\BSP_4377;%WORKSPACE%\_Branson_Driver_Layer\BRANSON_BSP\BSP_5728;%WORKSPACE%\_Branson_Driver_Layer\BRANSON_BSP\BSP_IDK;%WORKSPACE%\_Branson_Driver_Layer\BRANSON_BSP\BSP_LBC;
set WIND_LAYER_PATHS=%WORKSPACE%\_Branson_Driver_Layer
del /f /s /q %WINDRIVER%\vxworks-7\pkgs\os\core\syscalls-1.0.13.0\custom
xcopy %WORKSPACE%\_Default_vxWorks-7\pkgs %WINDRIVER%\vxworks-7\pkgs /e /y
cd C:\WindRiver
C:\WindRiver\workbench-4\startWorkbench.bat -data %WORKSPACE%
