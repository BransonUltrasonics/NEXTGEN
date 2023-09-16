# Branson Automation Framework - Next Gen Ultrasonic
# Filename : Report.py
# Description : This Python script file used to create Emailable report for Build and flash of SC,
#               AC,PC boards. This script also reports additional information of Test execution summary,
#               Recent change sets and Code coverage.
# Script flow:-
#    copying a report template by name "index.html" to new location by name "reporting.html" for updating
#    current execution result data. and reading same file "reporting.html" to send htmlcontent as
#    email body in the Email.
# 1. Reading config.ini and control.properties file for reporting build information and board status.
# 2. Reading TestsuiteExecution Record ID in controlproperties to report Test Execution summary table.
# 3. ChangeSet information is fetched running lscm command. number of changesets which is be displayed
#    is configurable for all 3 components.
# 4. The overall status is updated to a textfile "build trend.txt" after every execution and trend
#     is reported in email by reading "build trend.txt" file.
# 5. Coverage report data is fetched from report.txt file.
# Author: Naveen V, Rajat Rao
# Python ver : 2.7.10

import xml.etree.ElementTree as ET
import subprocess
import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import re
import os
import shutil
from shutil import copyfile
import codecs
import ConfigParser
from datetime import datetime
import sys

# defining path to rqmurlutility, filepath variable is path to store downloaded xmlfiles
# during RQM query, later inthe script.
RQMUrlUtility = os.environ["BAF_ULTRASONIC_LOAD_DIR"]+'\\..\\BAF_Utilities\\RQMUrlUtility.jar'
filepath = 'xmlrepo\\TestSuiteRecord'
allSuitesinfo = []
testSuiteSummaryPrevious = []
testSuiteSummaryCurrent = []

testReportingStarttime = datetime.now().strftime('%m/%d/%Y %H-%M-%S')

# reading config.ini file, and storing all data in key:value pair form
def ReadConfigFile():
    try:
        config = ConfigParser.ConfigParser()
        configFilePath = os.environ["BAF_ULTRASONIC_LOAD_DIR"]+'\\..\\BAF_Utilities\\config.ini'
        config.read(configFilePath)
        data = config.items('Section_userinfo')
        confinfo = dict(data)
        return confinfo
    except IOError as err:
        print ("Error : {0}".format(err))

confinfo = ReadConfigFile()

try:
    # Reading Control.properties and fetching required data.
    controlPath = os.environ["BAF_ULTRASONIC_LOAD_DIR"] + '\\Framework_Files\\Control.properties'
    with open(controlPath,'r') as controlFile:
        content = controlFile.read()
        acBuildStatus = re.findall(r'\bAC_Build_Status=.*', content)[0].split('=')[1]
        scBuildStatus = re.findall(r'\bSC_Build_Status=.*', content)[0].split('=')[1]
        pcBuildStatus = re.findall(r'\bPC_Build_Status=.*', content)[0].split('=')[1]
        scFlashStatus = re.findall(r'\bSC_Flash_Status=.*', content)[0].split('=')[1]
        pcFlashStatus = re.findall(r'\bPC_Flash_Status=.*', content)[0].split('=')[1]
        acFlashStatus = re.findall(r'\bAC_Flash_Status=.*', content)[0].split('=')[1]
        scCoverityStatus = re.findall(r'\bSC_Coverity_Status=.*', content)[0].split('=')[1]
        pcCoverityStatus = re.findall(r'\bPC_Coverity_Status=.*', content)[0].split('=')[1]
        acCoverityStatus = re.findall(r'\bAC_Coverity_Status=.*', content)[0].split('=')[1]
        scBuildError = re.findall(r'\bSC_Build_Error_Description=.*', content)[0].split('=')[1]
        pcBuildError = re.findall(r'\bPC_Build_Error_Description=.*', content)[0].split('=')[1]
        acBuildError = re.findall(r'\bAC_Build_Error_Description=.*', content)[0].split('=')[1]
        scFlashError = re.findall(r'\bSC_Flash_Error_Description=.*', content)[0].split('=')[1]
        pcFlashError = re.findall(r'\bPC_Flash_Error_Description=.*', content)[0].split('=')[1]
        acFlashError = re.findall(r'\bAC_Flash_Error_Description=.*', content)[0].split('=')[1]
        scCoverityError = re.findall(r'\bSC_Coverity_Error_Description=.*', content)[0].split('=')[1]
        pcCoverityError = re.findall(r'\bPC_Coverity_Error_Description=.*', content)[0].split('=')[1]
        acCoverityError = re.findall(r'\bAC_Coverity_Error_Description=.*', content)[0].split('=')[1]
        testSuiteExecutionRecordIds = re.findall(r'\bTest_Suite_Execution_Record_ID=.*', content)[0].split('=')[1].split(',')
        buildId = re.findall(r'\bBuild_Label=.*', content)[0].split('=')[1]
        buildDateTime = re.findall(r'\bMaster_Start_Time=.*', content)[0].split('=')[1]
        buildBy = re.findall(r'\bBuild_Requester_User_ID=.*', content)[0].split('=')[1]
        buildOn = re.search(r'\bBuild=.*', content).group(0)
        flashOn = re.search(r'\bFlash=.*', content).group(0)
        testExecutionOn = re.search(r'\bTest_Execution=.*', content).group(0)
        coverityBuildOn = re.search(r'\bCoverity_Build=.*', content).group(0)
        buildType = re.findall(r'\bBuild_Type=.*', content)[0].split('=')[1]
        cleanBuildOn = re.search(r'\bClean_Build=.*', content).group(0)
        boardNames = re.findall(r'\bBoard_Name=.*', content)[0].split('=')[1].split(',')
        email = re.findall(r'\bEmail=.*', content)[0].split('=')[1]
        buildResultId = re.findall(r'\bBuild_Result_UUId=.*', content)[0].split('=')[1]
        pcVersion = re.findall(r'\bPC_Version=.*', content)[0].split('=')[1]
        acVersion = re.findall(r'\bAC_Version=.*', content)[0].split('=')[1]
        dateTimeStamp = re.findall('Date_Time_Stamp=.*', content)[0].split('=')[1]
        rtrtReport = re.findall(r'\bRTRT=.*', content)[0].split('=')[1]
        testExecutionComplete = re.findall(r'\bTest_Execution_Completed=.*', content)[0].split('=')[1]
        rtrtSc = re.findall(r'\bRTRT_SC=.*', content)[0].split('=')[1]
        rtrtPc = re.findall(r'\bRTRT_PC=.*', content)[0].split('=')[1]
        rtrtAc = re.findall(r'\bRTRT_AC=.*', content)[0].split('=')[1]
        streamName = re.findall(r'\bStream_Name=.*', content)[0].split('=')[1]
except IOError as err:
    print ("Error : {0}".format(err))


 
# copying "report template" to new location to append with current execution result data.
try:
    copyfile(os.environ["BAF_ULTRASONIC_LOAD_DIR"] + '\\Framework_Files\\index.html',os.environ["BAF_ULTRASONIC_LOAD_DIR"] + '\\Framework_Files\\reporting.html')
except IOError as err:
    print ("Error : {0}".format(err))

# function to read reporting.html content
def ReadFile():
    try:
        with codecs.open(os.environ["BAF_ULTRASONIC_LOAD_DIR"] + '\\Framework_Files\\reporting.html', 'r') as f:
            htmlContent = f.read()
        return htmlContent
    except IOError as err:
        print ("Error : {0}".format(err))


# function to write into reporting.html
def WriteFile(htmlContent):
    try:
        with codecs.open(os.environ["BAF_ULTRASONIC_LOAD_DIR"] + '\\Framework_Files\\reporting.html', 'w') as f:
            f.write(htmlContent)
    except IOError as err:
        print ("Error : {0}".format(err))

# Function to append build informations like [buildID,buildDurtaion,buildParameters,builtby] and
# Board Names with versions to html file
def BuildInfoReport(buildTagList, buildInfoList):
    try:
        htmlContent = ReadFile()
        htmlContent = htmlContent.replace('<h4 style="margin-top: -30px; padding-bottom: 0px; font-weight: lighter;font-size: 14px; font-family: Arial;"><strong>Next Gen Ultrasonic</strong></h4> </td>','<h4 style="margin-top: -30px; padding-bottom: 0px; font-weight: lighter;font-size: 14px; font-family: Arial;"><strong>Next Gen Ultrasonic - '+streamName+'</strong></h4> </td>')
        for tag, info in zip(buildTagList, buildInfoList):
            htmlContent = htmlContent.replace('<br id = "'+tag+'"/>', '<br id = "'+tag+'"/>'+info)

        for name, tag in zip(boardNames, boardTags):
            htmlContent = htmlContent.replace('<p id = "' + tag + '"></p>', '<p style="margin:0; padding:0; margin-bottom:5px;">' + name + '</p>')
        WriteFile(htmlContent)
        return
    except ValueError as err:
        print ("Error : {0}".format(err))
    except NameError as err:
        print ("Error : {0}".format(err))

# Editing Reporting.html file with Boardstatus.
def BoardStatusReporting(result, action):
    try:
        htmlContent = ReadFile()
        for item, act in zip(result, action):
            if item == "PASS":
                htmlContent = htmlContent.replace('<td id = "'+act+'"> </td>', '<td id = "'+act+passed)
                
            if item == "FAIL":
                htmlContent = htmlContent.replace('<td id = "'+act+'"> </td>', '<td id = "'+act+failed)
                
            if item == "Not Executed":
                htmlContent = htmlContent.replace('<td id = "'+act+'"> </td>', '<td id = "'+act+notExecuted)
                
        if 'FAIL' in [acBuildStatus, scBuildStatus, pcBuildStatus]:
            error = max(scBuildError, pcBuildError, acBuildError)
            htmlContent = htmlContent.replace('<td id = "Build_Failure_Reason" align="left " style="border-top: 1px solid #cccccc;"> </td>', '<td width="250" align="left" style="border-top: 1px solid #cccccc;">'+error+'</td>')
        elif 'FAIL' in [scFlashStatus, pcFlashStatus, acFlashStatus]:
            error = max(scFlashError, pcFlashError, acFlashError)
            htmlContent = htmlContent.replace('<td id = "Flash_Failure_Reason" align="left " style="border-top: 1px solid #cccccc;"> </td>', '<td width="250" align="left" style="border-top: 1px solid #cccccc;">'+error+'</td>')

        else:
            erString = []
            for item in [scCoverityError, pcCoverityError, acCoverityError]:
                if item != '':
                    erString.append(item)
                error = ' ; '.join(erString)     
            htmlContent = htmlContent.replace('<td id = "Coverity_Failure_Reason" align="left " style="border-top: 1px solid #cccccc;"> </td>', '<td width="250" align="left" style="border-top: 1px solid #cccccc;">'+error+'</td>')
        WriteFile(htmlContent)
        return
    except ValueError as err:
        print ("Error : {0}".format(err))
    except NameError as err:
        print ("Error : {0}".format(err))


# formating build information data to a reportable format and passing all the data as parameters to function.
# calling "BuildInfoReport(buildTagList, buildInfoList)" function.
buildIdTag = 'Build_ID'
buildDateTag = 'Build_Date'
buildTimeTag = 'Build_Time'
buildDurationTag = 'Build_Duration'
buildBuiltbyTag = 'Build_Built_By'
buildTypeTag = 'Build_Type'
buildParamsTag = 'Build_Params'
# emailSubjectBoards = ",".join(boardNames)
try:
    buildDurationDateTime = datetime.strptime(testReportingStarttime, "%m/%d/%Y %H-%M-%S") - datetime.strptime(buildDateTime, "%m/%d/%Y %H-%M-%S")
    totalSeconds = buildDurationDateTime.seconds
    buildDuration = '{:02}:{:02}:{:02}'.format(totalSeconds//3600, totalSeconds%3600//60, totalSeconds%60)
    buildDateTime = buildDateTime.replace('-', ':')
    buildParams = 'TYPE='+buildType.upper()+'; '+buildOn.upper()+'; '+flashOn.upper()+'; '+cleanBuildOn.upper()+'; '+coverityBuildOn.upper()+'; '+testExecutionOn.upper()
    buildInfoList = [buildId, buildDateTime, buildDuration, buildBy, buildParams]
    buildTagList = [buildIdTag, buildDateTag, buildDurationTag, buildBuiltbyTag, buildParamsTag]
    boardTags = []
    for name in boardNames:
        if name.upper() == 'SC':
            boardNames[boardNames.index(name)] = 'Supervisory Controller ' # add version string reading from control.properties file
            boardTags.append('SC')
        if name.upper() == 'PC':
            boardNames[boardNames.index(name)] = 'Power Controller v' + pcVersion
            boardTags.append('PC')
        if name.upper() == 'AC':
            boardNames[boardNames.index(name)] = 'Actuator Controller v' + acVersion
            boardTags.append('AC')
    # Calling BuildInfo Report
    BuildInfoReport(buildTagList, buildInfoList)
except ValueError as err:
    print ("Error : {0}".format(err))
except NameError as err:
    print ("Error : {0}".format(err))


# formating Board Status data to a reportable format and passing all the data as parameters to function.
# and calling. 
try:
    buildResult = [scBuildStatus, pcBuildStatus, acBuildStatus]
    flashResult = [scFlashStatus, pcFlashStatus, acFlashStatus]
    coverityResult = [scCoverityStatus, pcCoverityStatus, acCoverityStatus]
    flashResultTag = ['SC_Flash_Status', 'PC_Flash_Status', 'AC_Flash_Status']
    buildResultTag = ['SC_Build_Status', 'PC_Build_Status', 'AC_Build_Status']
    coverityResultTag = ['SC_Coverity_Status', 'PC_Coverity_Status', 'AC_Coverity_Status']

    buildLogLink = confinfo['rtc_host']+'/web/projects/'+confinfo['rtc_project_name']+'#action=com.ibm.team.build.viewResult&id='+buildResultId
    passed = '" style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#5cb85c" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+buildLogLink+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">PASS</a> </td></tr></table></td>'
    failed = '" style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#d9534f" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+buildLogLink+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">FAIL</a> </td></tr></table></td>'
    notExecuted = '" style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#e2e2e2" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"><a href="#" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">NOTEXEC</a> </td></tr></table></td>'
    htmlContent = ''

    try:
        for i, j, k in zip(buildResult, flashResult, coverityResult):
                if i == '':
                    buildResult[buildResult.index(i)] = "Not Executed"
                if j == '':
                    flashResult[flashResult.index(j)] = "Not Executed"
                if k == '':
                    coverityResult[coverityResult.index(k)] = "Not Executed"

    except NameError as err:
        print("Name error: {0}".format(err))
    except IOError as err:
        print ("Error : {0}".format(err))

    # Calling Boardstatus reporting function
    BoardStatusReporting(buildResult, buildResultTag)
    BoardStatusReporting(coverityResult, coverityResultTag)
    BoardStatusReporting(flashResult, flashResultTag)
except NameError as err:
    print("Name error: {0}".format(err))
except ValueError as err:
    print ("Value Error : {0}".format(err))

testSuiteCurrentVerdict = []
testSuitePassPercentage = []
testSuitePreviousVerdict = []
testsuiteID = []
testSuiteLink = []
failedTestInfo = []
testSuiteFailedId = []
testSuiteFailedLink = []
testexecutionreportlist = []
testExecutionState = testExecutionOn.split('=')[1]

if testSuiteExecutionRecordIds != [''] and testExecutionComplete.upper() == 'ON':
    try:
        # Creating a folder to store xmls which are downloaded during RQM REST calls. this folder is deleted once execution is completed.
        if not os.path.isdir("xmlrepo"):
            os.mkdir("xmlrepo")

        # Iterate through each TestSuiteRecordids, downloading required xmls for fetching testsuiteName,Testcases and its previous and current execution status
        # Each iteration results a list[testsuitname,alltestcases,previousresults,currentresults] and all iteration result is stored in 'allSuiteinfo'
        for testSuiteRecordId in testSuiteExecutionRecordIds:
            testSuiteResultLinks = []
            testCaseResultLinks = []
            testSuiteId = []

            # Make RestCall to RQM using RQMUrlUtility and downloading testsuiteRecord.xml

            res_link = confinfo['rqm_host'] + '/service/com.ibm.rqm.integration.service.IIntegrationService/resources/"' + confinfo['rqm_project_name'] + '"/suiteexecutionrecord/urn:com.ibm.rqm:suiteexecutionrecord:' + testSuiteRecordId

            command = 'java -jar ' + RQMUrlUtility + ' -command GET -user ' + confinfo['rqm_user'] + ' -password ' + confinfo['rqm_password'] + ' -filepath ' + filepath + '.xml -url ' + res_link
            return_status = subprocess.call(command)
                
            # Parsing TestsuiteRecord.xml and getting resultlinks for last 2 execution and getting testsuitename

            tree = ET.parse('xmlrepo\TestSuiteRecord.xml')
            root = tree.getroot()
            ns22={'link': 'http://jazz.net/xmlns/alm/qm/v0.1/'}
            currentExecutionElement = root.find('link:currenttestsuitelog',ns22)
            allexeclogs = root.findall('link:testsuitelog',ns22)
            allexeclinks = []
            maxnumlist = []
            for link in allexeclogs:
                allexeclinks.append(link.attrib['href'])
            for each in allexeclinks:
                maxnumlist.append(each.split(':')[-1])
            maxnumlistint = [int(d) for d in maxnumlist]
            tempList = maxnumlistint[:]
            tempList.remove(max(tempList))
            secondMax = max(tempList)
            previousElementIndex=maxnumlistint.index(secondMax)
            previousExecutionElement = allexeclogs[previousElementIndex]
            testSuiteElement = [previousExecutionElement,currentExecutionElement]
            for link in testSuiteElement:
                testSuiteResultLinks.append(link.attrib['href'])

            ns1 = {'link':'http://purl.org/dc/elements/1.1/'}
            testsuiteName = root.find('link:title', ns1).text
            ns2 = {'link':'http://jazz.net/xmlns/alm/qm/v0.1/'}
            testSuiteLink.append(root.find('link:testsuite', ns2).attrib['href'])    
            currentTestSuiteLink = root.find('link:testsuite', ns2).attrib['href']
            command = 'java -jar ' + RQMUrlUtility + ' -command GET -user ' + confinfo['rqm_user'] + ' -password ' + confinfo['rqm_password'] + ' -filepath ' + filepath + 'currenttestSuite' + '.xml -url ' + currentTestSuiteLink
            return_status = subprocess.call(command)
            tree = ET.parse('xmlrepo\TestSuiteRecordcurrenttestSuite.xml')
            root = tree.getroot()
            testsuiteID.append(root.find('link:webId', ns2).text)


            # Downloading xmls which contains previous and current execution records 
            for index,suitelink in enumerate(testSuiteResultLinks):
                command = 'java -jar ' + RQMUrlUtility + ' -command GET -user ' + confinfo['rqm_user'] + ' -password ' + confinfo['rqm_password'] + ' -filepath ' + filepath + 'testSuite' + str(index) + '.xml -url ' + suitelink
                return_status = subprocess.call(command)

            # Reading xmls which contains previous and current execution records. Here Each testcase links and total,passed,failed testcases details are read.
            for index in range(0,len(testSuiteResultLinks)):
                tree = ET.parse('xmlrepo\TestSuiteRecordtestSuite' + str(index) +'.xml')
                root = tree.getroot()
                ns2 = {'link': 'http://jazz.net/xmlns/alm/qm/v0.1/'}
                for link in root.findall('link:executionresult', ns2):
                    testCaseResultLinks.append(link.attrib['href'])

                ns8 = {'link1': 'http://jazz.net/xmlns/alm/qm/v0.1/tsl/v0.1/'}
                totalTestCases = root.findall('link1:testcasestotal', ns8)[0].text

                ns9 = {'link': 'http://jazz.net/xmlns/alm/qm/v0.1/'}
                for link in root.findall('link:webId', ns9):
                    testSuiteId.append(link.text)

                ns12 = {'link': 'http://jazz.net/xmlns/alm/qm/v0.1/tsl/v0.1/'}
                testCasesPassed = root.findall('link:testcasespassed', ns12)[0].text

                ns12 = {'link': 'http://jazz.net/xmlns/alm/qm/v0.1/tsl/v0.1/'}
                testCasesFailed =  root.findall('link:testcasesfailed', ns12)[0].text

                ns12 = {'link': 'http://jazz.net/xmlns/alm/qm/v0.1/tsl/v0.1/'}
                testCasesBlocked =  root.findall('link:testcasesblocked', ns12)[0].text

                if index == 0:
                    previousTestCaseResultLinks = testCaseResultLinks
                    totalTestCasesPrevious = totalTestCases
                    passedTestCasesPrevious = testCasesPassed
                    failedTestCasesPrevious = testCasesFailed
                    blockedTestCasesPrevious = testCasesBlocked
                    testSuiteSummaryPrevious.append([testsuiteName,totalTestCasesPrevious,passedTestCasesPrevious,failedTestCasesPrevious,blockedTestCasesPrevious])
                    testCaseResultLinks = []
                    totalTestCases = ""
                elif index == 1:
                    currentTestCaseResultLinks = testCaseResultLinks
                    totalTestCasesCurrent = totalTestCases
                    passedTestCasesCurrent = testCasesPassed
                    failedTestCasesCurrent = testCasesFailed
                    blockedTestCasesCurrent = testCasesBlocked
                    testSuiteSummaryCurrent.append([testsuiteName,totalTestCasesCurrent,passedTestCasesCurrent,failedTestCasesCurrent,blockedTestCasesCurrent])

            # Downloading xmls of each Testcases of Previous and current executions.                            
            for testCaseResultLink in [previousTestCaseResultLinks,currentTestCaseResultLinks]:
                testCaseNames =[]
                testCaseVerdict = []
                failTestid = []
                failTestLink = []
                for index,caselink in enumerate(testCaseResultLink):
                    command = 'java -jar ' + RQMUrlUtility + ' -command GET -user ' + confinfo['rqm_user'] + ' -password ' + confinfo['rqm_password'] + ' -filepath ' + filepath + 'testCase' +  str(index) + '.xml -url ' + caselink
                    return_status = subprocess.call(command)
                        
            # Now get test case verdict, and test case names of previous and current execution
                for index in range(0,len(testCaseResultLink)):
                    
                    tree = ET.parse('xmlrepo\TestSuiteRecordtestCase' + str(index) +'.xml')
                    root = tree.getroot()

                    ns4 = {'link' : 'http://purl.org/dc/elements/1.1/'}
                    testCaseNames.append(root.find('link:title',ns4).text)

                    ns6 = {'link' : 'http://jazz.net/xmlns/alm/v0.1/'}
                    testCaseVerdict.append(root.find('link:state',ns6).text)
                    if testCaseVerdict[index] == "com.ibm.rqm.execution.common.state.failed":
                        ns15 = {'link':'http://jazz.net/xmlns/alm/qm/v0.1/'}
                        failTestLink.append(root.find('link:testcase',ns15).attrib['href'])
                        currentFailTestLink = root.find('link:testcase',ns15).attrib['href']
                        command = 'java -jar ' + RQMUrlUtility + ' -command GET -user ' + confinfo['rqm_user'] + ' -password ' + confinfo['rqm_password'] + ' -filepath ' + filepath + 'currentfailtestCase' + '.xml -url ' + currentFailTestLink
                        return_status = subprocess.call(command)
                        tree = ET.parse('xmlrepo\TestSuiteRecordcurrentfailtestCase.xml')
                        root = tree.getroot()
                        failTestid.append(root.find('link:webId', ns15).text)
                failedTestInfo.append([testsuiteName,failTestid,failTestLink])
                allSuitesinfo.append([testsuiteName,testCaseNames,testCaseVerdict])

    except NameError as err:
        print("Name error: {0}".format(err))
    except IOError as err:
        print ("Error : {0}".format(err))
        print ("Verify RQM connectivity")
    except ValueError as err:
        print("Value error: {0}".format(err))


    # Deleting folder "xmlrepo" which had all the downloaded xmls from rqm.
    shutil.rmtree("xmlrepo")

if testSuiteExecutionRecordIds != [''] and testExecutionComplete.upper() == 'ON':
    try:
        for i in range(len(testSuiteSummaryCurrent)):
            testSuitePassPercentage.append([testSuiteSummaryCurrent[i][0], testSuiteSummaryCurrent[i][2]+'/'+testSuiteSummaryCurrent[i][1]])
            if testSuiteSummaryCurrent[i][2] == testSuiteSummaryCurrent[i][1]:
                testSuiteCurrentVerdict.append([testSuiteSummaryCurrent[i][0], "PASS"])        
            else:
                testSuiteCurrentVerdict.append([testSuiteSummaryCurrent[i][0], "FAIL"])
        for i in range(len(testSuiteSummaryPrevious)):
            if testSuiteSummaryPrevious[i][2] == testSuiteSummaryPrevious[i][1]:
                testSuitePreviousVerdict.append([testSuiteSummaryPrevious[i][0], "PASS"])
            else:
                testSuitePreviousVerdict.append([testSuiteSummaryPrevious[i][0], "FAIL"])

        # Making a list of failed testcases and thier links in current execution.
        for i in range(1, len(failedTestInfo), 2):
            testSuiteFailedId.append([failedTestInfo[i][0], failedTestInfo[i][1]])
            testSuiteFailedLink.append([failedTestInfo[i][0], failedTestInfo[i][2]])
        for tid, currver, prever, percent, failedId, failedLink in zip(testsuiteID, testSuiteCurrentVerdict, testSuitePreviousVerdict, testSuitePassPercentage, testSuiteFailedId, testSuiteFailedLink):
            testexecutionreportlist.append([tid, currver[0], currver[1], prever[1], percent[1], failedId[1], failedLink[1]])
        print "Test Execution Summary", testexecutionreportlist
        html = ''
        failedTcTablehtml = '<td width="160" align="left" style="padding-left: 10px; font-size: 12px; border-top: 1px solid #cccccc; font-family: Arial;">'

        # Creating Html content for reporting TestExecution summary Report.
        for eachsuite,link in zip(testexecutionreportlist,testSuiteLink):
            testSuiteIdVar = '<td style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;" align="left">'+eachsuite[0]+'</td>'
            testSuiteNameVar = '<td style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;" align="left" width="280">' + eachsuite[1] + ' </td>'
            if eachsuite[2] == "PASS":
                testSuiteCurrVerVar = '<td id = "Current_Result" style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#5cb85c" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+link+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">'+eachsuite[2]+'</a> </td></tr></table></td>'
            else:
                testSuiteCurrVerVar = '<td id = "Previous_Result" style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#d9534f" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+link+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">'+eachsuite[2]+'</a> </td></tr></table></td>'
            if eachsuite[3] == "PASS":
                testSuitePreVerVar = '<td id = "Current_Result" style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#5cb85c" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+link+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">'+eachsuite[3]+'</a> </td></tr></table></td>'
            else:
                testSuitePreVerVar = '<td id = "Previous_Result" style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#d9534f" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+link+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">'+eachsuite[3]+'</a> </td></tr></table></td>'
            testSuitePassPercentVar = '<td id = "Test_Suite_Pass_Percentage" style="padding-left: 5px; border-top: 1px solid #cccccc; font-family: Arial;" align="center">'+eachsuite[4]+'</td>'

            testSuiteFailedIdVar = ''
            for eachid, eachlink in zip(eachsuite[5], eachsuite[6]):
                testSuiteFailedIdVar = testSuiteFailedIdVar + '<a href="'+eachlink+'" target="_blank" style="color:#336699; text-decoration:underline;">'+eachid+'</a> '

            html = html+'<tr id = "Test_Suite_Row" align="center" height="35">'+testSuiteIdVar+testSuiteNameVar+testSuiteCurrVerVar+testSuitePreVerVar+testSuitePassPercentVar+failedTcTablehtml+testSuiteFailedIdVar+'</td>'+'</tr>'
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value error: {0}".format(err))

# Function to Report TestExecution summary table.
def TestExecutionReporting(html):
    htmlContent = ReadFile()
    htmlContent = htmlContent.replace('<tr id = "Test_Sample_Suite"> </tr>', html)
    WriteFile(htmlContent)
    return

if testExecutionComplete.upper() == 'ON':
    try:
        TestExecutionReporting(html)
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value error: {0}".format(err))
        

# value of overallstatus calculated by considering All Boards build and flash results with Test Execution.
overAllStatus = "Nostatus"
try:
    if "PASS" in buildResult+flashResult+coverityResult:
        overAllStatus = "PASS"
    if "FAIL" in buildResult+flashResult+coverityResult:
        overAllStatus = "FAIL"
except NameError as err:
    print("Name error: {0}".format(err))
except ValueError as err:
    print("Value error: {0}".format(err))
    

if testSuiteExecutionRecordIds != [''] and testExecutionComplete.upper() == 'ON':
    try:
        if overAllStatus == "Nostatus" or overAllStatus == "PASS":
            for eachsuite in testSuiteCurrentVerdict:
                if "FAIL" in eachsuite:
                    overAllStatus = "FAIL"
                    break
                elif "PASS" in eachsuite:
                    overAllStatus = "PASS"
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value error: {0}".format(err))


# Function to report overall status with pass or fail.
def OverAllStatusReporting(verdict):
    print "Inside overAllStatusReporting function"
    htmlContent = ReadFile()
    overAllPass = '<table width="200" height="44" cellpadding="0" cellspacing="0" border="0" bgcolor="#5cb85c" style="border-radius:4px;"><tr><td align="center" valign="middle" height="44" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+buildLogLink+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:44px; width:200px; font-weight:lighter;">PASS</a> </td></tr></table>'
    overAllFail = '<table width="200" height="44" cellpadding="0" cellspacing="0" border="0" bgcolor="#d9534f" style="border-radius:4px;"><tr><td align="center" valign="middle" height="44" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+buildLogLink+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:44px; width:200px; font-weight:lighter;">FAIL</a> </td></tr></table>'
    overAllNoStatus = '<table width="200" height="44" cellpadding="0" cellspacing="0" border="0" bgcolor="#e2e2e2" style="border-radius:4px;"><tr><td align="center" valign="middle" height="44" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="'+buildLogLink+'" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:44px; width:200px; font-weight:lighter;">No Status</a> </td></tr></table>'
    if verdict == 'PASS':
        htmlContent = htmlContent.replace('<table id = "Overall_Status"> </table>', overAllPass)
    if verdict == 'FAIL':
        htmlContent = htmlContent.replace('<table id = "Overall_Status"> </table>', overAllFail)
    if verdict == "Nostatus":
        htmlContent = htmlContent.replace('<table id = "Overall_Status"> </table>', overAllNoStatus)
    WriteFile(htmlContent)

try:
    OverAllStatusReporting(overAllStatus)
except NameError as err:
    print("Name error: {0}".format(err))
except ValueError as err:
    print("Value Error: {0}".format(err))



# Running lscm command to RTC and getting Changeset informations
def Changesets(component):
    try:
        print "Inside Changesets Function"
        result = []
        print "Running lscm show history command"
        lscmWinCmd = '"C:\Program Files (x86)\IBM\TeamConcertBuild\scmtools\eclipse\lscm" show history -r "'+confinfo['rtc_host']+'" -u "'+confinfo['rtc_username']+'" -P "'+confinfo['rtc_password']+'" -w "'+streamName+'" -C "'+component+'" -v'
        process = subprocess.Popen(lscmWinCmd,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
        stdout,stderr = process.communicate()
        if(len(stderr)):
            print("Executing the logout command")
            logoutCmd = '"C:\Program Files (x86)\IBM\TeamConcertBuild\scmtools\eclipse\lscm" logout -r "'+confinfo['rtc_host']+'"'
            process=subprocess.Popen(logoutCmd,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
            stdout,stderr =process.communicate()
            print("Re running the show history command")
            process = subprocess.Popen(lscmWinCmd,shell=True,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
            stdout,stderr = process.communicate()
            #print(stdout)
            result=stdout.split('\n')
            return result
        else:
            result=stdout.split('\n')
            return result
            
            
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value error: {0}".format(err))
   


        
results=[]
component_list=["RTP_SC","RTP_AC","RTP_PC","AM4377_DKM_ESS","AM4377_DKM_PC","AM4377_DKM_AC","AM5728_DKM_ECM","AM5728_VSB","AM5728_VIP"]
for component in component_list:
    results.append(Changesets(component))
   

changeSetId, changeSetDescription, changeSetAuthor,changesetlist,changeSetDate,component_lt  = [], [], [], [], [], []
print("Changeset number")
print(int(confinfo['no_of_changesets_record']))
for idex,result in enumerate(results):
	try:
		if(len(result)):
			pos=0
			start=0
			#changeset count taken from config.ini
			for count in range(int(confinfo['no_of_changesets_record'])):
				if result[start:].index('    Work items:\r\r'):
					p=result[start:].index('    Work items:\r\r')
					pos=start+p
					l=result[start:(pos+2)]
					comp="component:"+component_list[idex]
					l.append(comp)
					changesetlist.append(l)
					start=pos+2
	except ValueError:
		continue

for changeset in changesetlist:
    s1,s2,i,component=[],[],[],[]
    for items in changeset:
        if re.findall(r' ([0-9]{4} )',items):
            i.extend(re.findall(r' ([0-9]{4} )',items))

        if re.findall(r'Created By: ([A-z]*,* [A-z]*)',items):
            changeSetAuthor.extend(re.findall(r'Created By: ([A-z]*,* [A-z]*)',items))

        if re.findall(r'Created By: [A-z]*,* [A-z]* \((\d+-\w+-\d+)',items):
            changeSetDate.extend(re.findall(r'Created By: [A-z]*,* [A-z]* \((\d+-\w+-\d+)',items))

        if (re.findall(r'\([0-9]{4}\) [0-9]{4} "(.*)"',items)):
            s1.extend(re.findall(r'\([0-9]{4}\) [0-9]{4} "(.*)"',items))

        if(re.findall(r'"(.*)" ',items)):
            s2.extend(re.findall(r'"(.*)" ',items))

        if(re.findall(r'component:(.*)',items)):
            component.extend(re.findall(r'component:(.*)',items))
            

    if(len(s2)>1):
        for no_of_items in range(len(s2)-1):
            s=s2[no_of_items]
            changeSetDescription.append(s)

        i=[' ']*(len(s2)-1)+i
        changeSetId.extend(i)
        s=' '.join(s1) +'-'+s2[-1]
        changeSetDescription.append(s)
        component=component*(len(s2)-1)+component
        component_lt.extend(component)
    else:
        s=' '.join(s1)+'-' +' '.join(s2)
        changeSetDescription.append(s)
        changeSetId.extend(i)
        component_lt.extend(component)

# reporting changeset
changeSetHtml = ''
for changeid, changedate, component, changdescription, changeauthor in zip(changeSetId, changeSetDate, component_lt, changeSetDescription, changeSetAuthor):
    changeSetHtml = changeSetHtml+'<tr height="35"><td align="left" width="100" style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;">'+changeid+'<td width="120" align=" center " style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;">'+changedate+'</td><td width="300" align="center" style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;">'+component+'</td><td width="300" align="left" style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;">'+changdescription+'</td><td align = "center" style="border-top: 1px solid #cccccc; font-family: Arial;">'+changeauthor+'</td></tr>'
        

# Function to report ChangeSets
def ChangeSetsReporting(changeSetHtml):
    print "Inside ChangeSetsReporting Function"
    htmlContent = ReadFile()
    htmlContent = htmlContent.replace('<tr id = "Change_Sets">', changeSetHtml)
    WriteFile(htmlContent)
    return
try:
    ChangeSetsReporting(changeSetHtml)
except NameError as err:
    print("Name error: {0}".format(err))
except ValueError as err:
    print("Value Error: {0}".format(err))

# Appending , reading, writing to Build trend file.
try:
    buildTrendPath = os.environ["BAF_ULTRASONIC_LOAD_DIR"]+'\\..\\Results_Next_Gen\\buildTrend.txt'
    print "Appending BuildTrend file"
    with open(buildTrendPath, 'a') as f1:
        f1.write('OverallStatus='+overAllStatus+' '+buildDateTime+' '+buildId+'\n')
    buildTrend = []
    statusDateTime = []
    trendBuildId = []
    print "Reading BuildTrend file"
    with open(buildTrendPath, 'r') as f1:
        lines = f1.readlines()
        for line in lines[-5:]:
            buildTrend.append(line.split('=')[1].split()[0])
            statusDateTime.append(line.split('=')[1].split(' ')[1])
            trendBuildId.append(line.split('=')[1].split(' ')[2])
        print buildTrend
        print statusDateTime
        print trendBuildId

    if len(lines) > 500:
        with open(buildTrendPath, 'w') as f1:
            for line in lines[-6:]:
                f1.write(line)
except NameError as err:
    print("Name error: {0}".format(err))
except ValueError as err:
    print("Value Error: {0}".format(err))
except IOError:
    print ("Error : {0}".format(err))

trendPass = '<td style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#5cb85c" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">Pass</a> </td></tr></table></td>'
trendFail = '<td style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#d9534f" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">Fail</a> </td></tr></table></td>'
trendNostatus = '<td style="border-top: 1px solid #cccccc;"><table width="60" height="20" cellpadding="0" cellspacing="0" border="0" bgcolor="#e2e2e2" style="border-radius:4px;"><tr><td align="center" valign="middle" height="20" style="font-family: Arial, sans-serif; font-size:12px; font-weight:bold;"> <a href="" target="_blank" style="font-family: Arial, sans-serif; color:#ffffff; display: inline-block; text-decoration: none; line-height:20px; width:60px; font-weight:lighter;">NoStatus</a> </td></tr></table></td>'
# Function to report Build Trend
def BuildTrendReporting(statusDateTime, buildTrend, trendBuildId):
    try:
        print "Inside BuildTrendReporting Function"
        buildTrendDateHtml = ''
        buildTrendStatusHtml = ''
        for datetime, trend, buildid in zip(statusDateTime, buildTrend, trendBuildId):
            buildTrendDateHtml = buildTrendDateHtml+'<td width="10" style="font-family: Arial;"><strong>'+buildid+' '+datetime+'</strong></td>'
            if trend == 'PASS':
                buildTrendStatusHtml = buildTrendStatusHtml+trendPass
            if trend == 'FAIL':
                buildTrendStatusHtml = buildTrendStatusHtml+trendFail
            if trend == 'Nostatus':
                buildTrendStatusHtml = buildTrendStatusHtml+trendNostatus
        htmlContent = ReadFile()
        htmlContent = htmlContent.replace('<td id = "Build_Trend"></td>', buildTrendDateHtml)
        htmlContent = htmlContent.replace('<td id = "Build_Trend_Status"></td>', buildTrendStatusHtml)
        WriteFile(htmlContent)
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value Error: {0}".format(err))

try:
    BuildTrendReporting(statusDateTime, buildTrend, trendBuildId)
except NameError as err:
    print("Name error: {0}".format(err))
except ValueError as err:
    print("Value Error: {0}".format(err))


def CodeCoverage(path):
    try:
        with open(path,'r') as f1:
            data = f1.readlines()
            print "Reading Report.txt, Path:" + path
        codeCoverageValues = []
        for x in data[-7:-1]:
            codeCoverageValues.append(x.translate(None, '\t\n').split(' ')[-2]+x.translate(None, '\t\n').split(' ')[-1])
        return codeCoverageValues
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value Error: {0}".format(err))
    except IOError:
        print ("Error : {0}".format(err))


scCoverageValue = pcCoverageValue = acCoverageValue = []

rtrtScPath = os.environ["BAF_ULTRASONIC_LOAD_DIR"]+'\\..\\Results_Next_Gen\\'+dateTimeStamp+'\\RTRT_Results\\RTRT_Coverage_Report_SC.txt'
rtrtPcPath = os.environ["BAF_ULTRASONIC_LOAD_DIR"]+'\\..\\Results_Next_Gen\\'+dateTimeStamp+'\\RTRT_Results\\RTRT_Coverage_Report_PC.txt'
rtrtAcPath = os.environ["BAF_ULTRASONIC_LOAD_DIR"]+'\\..\\Results_Next_Gen\\'+dateTimeStamp+'\\RTRT_Results\\RTRT_Coverage_Report_AC.txt'
codeCoverageVar = ['Functions','Functions and exits','Statement blocks','Implicit blocks','Decisions','Loops']
codeCoveragelabel = [' ', 'SC', 'PC', 'AC']
if rtrtReport.upper() == "ON":
    if rtrtSc == "ON":
        scCoverageValue = CodeCoverage(rtrtScPath)
    else:
        scCoverageValue = ['','','','','','']
    if rtrtPc == "ON":
        pcCoverageValue = CodeCoverage(rtrtPcPath)
    else:
        pcCoverageValue = ['','','','','','']
    if rtrtAc == "ON":
        acCoverageValue = CodeCoverage(rtrtAcPath)
    else:
        acCoverageValue = ['','','','','','']


# Function to report codeCoverage.
def CodeCoverageReport(codeCoverageVar,scCoverageValue,pcCoverageValue,acCoverageValue):
    try:
        print "Reporting CodeCoverage"
        htmlContent = ReadFile()
        htmlContent = htmlContent.replace('<h3 id = "Code_Coverage"></h3>', '<h3 style="font-family: Arial;"><strong>Code Coverage</strong></h3>')
        coveragehtml = '<tr align="center" height="35"><td align="left" width = "200" style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;"><Strong>  </Strong></td>'+'<td style="font-family: Arial;"><strong>SC</strong> </td><td style="font-family: Arial;"><strong> PC</strong></td><td style="font-family: Arial;"><strong> AC</strong></td><td></td></tr>'
        htmlContent = htmlContent.replace('<tr id = "Coverage_Headers"></tr>',coveragehtml)

        coveragehtmlValue = ''
        for var,scval,pcval,acval in zip(codeCoverageVar,scCoverageValue,pcCoverageValue,acCoverageValue):
            tabrow = '<td align="left" style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;">'
            tabdata = '<td width=300 align=" center " style="padding-left: 10px; border-top: 1px solid #cccccc; font-family: Arial;">'
            coveragehtmlValue = coveragehtmlValue + '<tr align="center" height="35">'+tabrow+var+'</td>'+tabdata+scval+'</td>'+tabdata+pcval+'</td>'+tabdata+acval+'</td><td></td></tr>'
        htmlContent = htmlContent.replace('<tr id = "Code_Coverage_table"></tr>', coveragehtmlValue)
        WriteFile(htmlContent)
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value Error: {0}".format(err))
    except IOError:
        print ("Error : {0}".format(err))
                                          
                                          
if rtrtReport.upper() == "ON":
    try:
        CodeCoverageReport(codeCoverageVar,scCoverageValue,pcCoverageValue,acCoverageValue)
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value Error: {0}".format(err))

     
# Funtion to sending Email
def sendEMail(emailBody, emailSubject, fromAddress, toAddress, smptpServer, smtpUsername, smtpPassword):
    try:
        print "Inside Sendmail function"
        msg = MIMEMultipart('alternative')
        msg['subject'] = emailSubject
        msg['From'] = fromAddress
        msg['To'] = toAddress
        part2 = MIMEText(emailBody, 'html')
        msg.attach(part2)
        s = smtplib.SMTP(smptpServer)
        #s.login(smtpUsername, smtpPassword)
        s.sendmail(msg['From'], msg['To'].split(","), msg.as_string())
        print "Mail triggered"
        s.quit()
        return
    except NameError as err:
        print("Name error: {0}".format(err))
    except ValueError as err:
        print("Value Error: {0}".format(err))

# Copying current report to new location
try:
    reportTimeStamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    reportDirectory = os.environ["BAF_ULTRASONIC_LOAD_DIR"]+'\\..\\Results_Next_Gen\\'+dateTimeStamp+'\\Report'

    currReportingDir = os.environ["BAF_ULTRASONIC_LOAD_DIR"]+'\\Framework_Files\\'
    
    if not os.path.isdir(reportDirectory):
        os.mkdir(reportDirectory)
    shutil.copy2(currReportingDir+'reporting.html', reportDirectory+'\\'+reportTimeStamp+'.html')
except IOError as err:
    print ("Error : {0}".format(err))
    
try:
    if email.upper() == 'ON':
        print "calling sendEMail"
        emailSubject = confinfo['email_subject']+' - '+ overAllStatus + ' - ' + buildId
        sendEMail(ReadFile(), emailSubject, confinfo['from_address'], confinfo['to_address'], confinfo['smtp_server'], confinfo['smtp_user'], confinfo['smtp_password'])
except NameError as err:
    print("Name error: {0}".format(err))
except ValueError as err:
    print("Value Error: {0}".format(err))
sys.exit()

