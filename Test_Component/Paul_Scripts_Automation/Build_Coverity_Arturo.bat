@ECHO ON

SET WORKSPACE=C:\Users\builder5\Desktop\Paul\MyWorkspaces\NextGen\Integration
SET COVERITY_RESULTS_PATH=%WORKSPACE%\Coverity
SET LOGFILE_PATH=%COVERITY_RESULTS_PATH%\Logfiles
SET ENCODER_LOGIC_NAME=Encoder_Logic
SET ENCODER_LOGIC_PATH=%WORKSPACE%\%ENCODER_LOGIC_NAME%

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
