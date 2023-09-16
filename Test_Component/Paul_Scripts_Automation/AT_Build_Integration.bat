@ECHO OFF

SET EMAIL_TO=Paul.Fitzmaurice@Emerson.com
REM SET EMAIL_TO_ALL=Paul.Fitzmaurice@Emerson.com
SET EMAIL_TO_ALL=arturo.huerta@emerson.com,Paul.Fitzmaurice@Emerson.com,girish.sadashivappa@sasken.com,ritesh.raj@sasken.com,rajkumar.k@sasken.com,shruthi.chandrasekhar@sasken.com,raghavendra.boya@sasken.com
REM SET EMAIL_TO_ALL=arturo.huerta@emerson.com
SET BUILD_DROP=Z:\BuildArchive\NextGen\Staging\Integration\DailyBuilds
SET CYGWIN_BIN=c:\cygwin64\bin
SET JAZZ_CMDLINE=C:\Program Files\IBM\TeamConcert\scmtools\eclipse
SET QMAKESPEC=C:\QT\qt5.9.6\mingw53_32\mkspecs\win32-g++
SET QTDIR=C:\Qt\Qt5.9.6\Tools\mingw53_32\bin
SET QTTOOLS=C:\Qt\Qt5.9.6\Tools\mingw530_32\bin
SET QT_LIBS_PATH=C:\QT
SET COVERITY_PATH=C:\Program Files\Coverity\Coverity Static Analysis\bin

SET BUILD_NAME=Integration
SET WORKSPACE=C:\Users\builder5\Desktop\Paul\MyWorkspaces\NextGen\Integration
SET WINDRIVER=c:\windriver
SET BUILD_SCRIPTS=C:\Users\builder5\Desktop\Paul

SET LINUX_BUILD_MACHINE=10.218.203.176

REM Email Settings 
REM     0 - Minimal
REM     1 - Debug
SET EMAIL_LEVEL=1

SET BUILD_VSB=1
SET DEBUG_BUILD=1
SET RELEASE_BUILD=0
SET FORCE_VERSION=0
SET FORCE_BUILD=1
SET DAILY_BUILD=1
SET SNAPSHOT=1
SET BUILD_COVERITY=1

REM Components to build
SET BOARD_TYPE=ALL
REM AM4377
REM AM5728
REM ROMFS_AC
REM ROMFS_PC
REM ROMFS_SC
REM ELC
REM QT

REM Define Jazz Information
SET STREAM_NAME=Next Gen Integration Dev Stream
SET WORKSPACE_REPOSITORY_NAME=Paul Next Gen Integration Dev Stream Workspace
SET JAZZ_SERVER=https://jazz.bucclm.com/ccm
SET URI=buildLogin
SET CURRENTUSERNAME=%USERNAME%
SET MY_PASS=Freeway2


REM Set the workitem
SET WORK_ITEM=1825

REM Start the Main Build Controller
START %BUILD_SCRIPTS%\Build_Common_V3.bat