# Branson Automation Framework - Next Gen Ultrasonic
# Filename : Next_Gen_Flash.py
# Description : This is a Python script to perform flash operation for SC, PC
#               and AC boards.
#               It is a common script that aims to send reboot, dkm and rtp
#               commands.
#               The dependency files are - config.ini, command.ini and
#               Control.properties.
# Script flow:
#               1. Read Control.properties to obtain details about which boards
#                  to flash.
#               2. Read config.ini to obtain details about the type of Flash to
#                  be done.
#               3. Read command.ini to obtain a list of commands to be sent
#                  over serial port.
#               4. Send specific serial commands sequentially and obtain
#                  response.
#               5. The response is validated w.r.t validation point written in
#                  command.ini.
#
# Dependency : pyserial library (py2),
#              configparser library (py3),
#             'BAF_ULTRASONIC_LOAD_DIR' Windows environment variable
#
# Author: Rajat Rao
# Python version : 2.7.10

import serial
import traceback
import sys
import StringIO
import ConfigParser
import os
import time
import configparser
import collections
from shutil import copyfile


def ReadControlFile():
    """
    Function used to read the entire contents of Control.properties

    """
    try:
        config = StringIO.StringIO()
        config.write('[dummysection]\n')
        config.write(open(os.environ["BAF_ULTRASONIC_LOAD_DIR"] +
                     '\\Framework_Files\\Control.properties').read())
        config.seek(0, os.SEEK_SET)

        cp = ConfigParser.ConfigParser()
        cp.readfp(config)

        data = cp.items('dummysection')
        cntrlinfo = dict(data)
        return cntrlinfo
    except Exception as err:
        print ("[FLASH] Error : {0}".format(err))
        print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
        print "[FLASH] An Exception occurred while accessing \
'Control.properties' file..."
        sys.exit(1)


def ReadConfigFile(boardname):
    """
    Function used to read various sections of config.ini

    """
    try:
        config = ConfigParser.ConfigParser()
        configFilePath = (os.environ["BAF_ULTRASONIC_LOAD_DIR"] +
                          '\\..\\BAF_Utilities\\config.ini')
        config.read(configFilePath)
        flash_section_name = boardname+'_Flash'
        build_parameters = boardname+'_Build_Parameters'
        #data = config.items(section_name)
        confinfo = dict(config.items(flash_section_name))
        gen_flash = dict(config.items('generic_flash'))
        buildinfo = dict(config.items(build_parameters))
        return [confinfo, buildinfo, gen_flash]
    except Exception as err:
        status = 'FAIL'
        print ("[FLASH] Error : {0}".format(err))
        print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
        error_msg = "Issue in accessing 'config.ini' file"
        print "[FLASH] " + error_msg
        writeToControlProperties(boardname, status, error_msg)
        sys.exit(1)


def boardFlash():
    """
    Returns a list of Flash parameters read from config.ini
    specific to a board.

    """
    board_flash = list()
    try:
        for board_flash_config, board in zip(config_info, \
        cntrlinfo['board_name'].split(",")):
            com_port_dets = board.lower()+'_com_port'
            dkm_status = board.lower() + '_dkm'
            rtp_status = board.lower() + '_rtp'
            board_flash.append({key: board_flash_config[key] for key
                               in (com_port_dets, dkm_status, rtp_status)})
    except Exception as err:
        status = 'FAIL'
        print ("[FLASH] Error : {0}".format(err))
        print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
        error_msg = "Issue in reading Flash Parameters from 'config.ini'"
        print "[FLASH] " + error_msg
        writeToControlProperties(board, status, error_msg)
        sys.exit(1)

    return board_flash


def buildParameters():
    """
    Returns a list of Build parameters read from config.ini

    """
    build_params = list()
    try:
        for build_config, board in zip(build_info,
                                       cntrlinfo['board_name'].split(",")):
            dkm_name = board.lower()+'_dkm_name'
            rtp_name = board.lower()+'_rtp_name'
            build_params.append({key: build_config[key]
                                for key in (dkm_name, rtp_name)})
    except Exception as err:
        status = 'FAIL'
        print ("[FLASH] Error : {0}".format(err))
        print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
        error_msg = "Issue in reading Build Parameters from 'config.ini'"
        print "[FLASH] " + error_msg
        writeToControlProperties(board, status, error_msg)
        sys.exit(1)

    return build_params


def prettyPrint(obj):
    """
    Pretty prints the object passed into it

    """
    try:
#       Dict
        if isinstance(obj, dict):
            for k, v in sorted(obj.items()):
                print '[FLASH] 'u'{0} = {1}'.format(k, v)

#       List or tuple
        elif isinstance(obj, list) or isinstance(obj, tuple):
            for x in obj:
                print x

#       Other
        else:
            print obj
    except Exception as err:
        print ("[FLASH] Error : {0}".format(err))
        print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
        print "[FLASH] An Exception occurred during pretty printing..."
        sys.exit(1)


def writeToControlProperties(board, err_stat, err_desc):
    """
    Function to write into the Control.properties file.

    """
    try:
        flash_status = board.upper()+'_Flash_Status='
        error_description = board.upper()+'_Flash_Error_Description='
        log_header = "[FLASH_"+board.upper()+"] "

#       Reading Control.properties and fetching required data.
        controlPath = os.environ["BAF_ULTRASONIC_LOAD_DIR"] + \
        '\\Framework_Files\\Control.properties'

#       Open Control.properties and read all lines
        with open(controlPath,'r') as controlFile:
            lines = controlFile.readlines()

#       Open Control.properties and write all lines except
#       Board Error Status and Error Description
        with open(controlPath,'w') as controlFile:
            for line in lines:
                if flash_status in line:
                    print log_header+"Updating 'Control.properties' ...\n"
                elif error_description in line:
                    print log_header+"Updating 'Control.properties' ...\n\n"
                else:
                    controlFile.write(line)

#       Open Control.properties and append the Error Status and Error Description
        with open(controlPath,'a') as controlFile:
            controlFile.writelines(['\n'+flash_status+err_stat, '\n'+
                                   error_description+err_desc])
    except Exception as err:
        print ("[FLASH] Error : {0}".format(err))
        print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
        print "[FLASH] Issue while writing to 'Control.properties'"
        sys.exit(1)


def sendCommand(com_port, binaries_path, baud_rate, board_name):
    """
    Sends serial command to a corrosponding board over serial communication

    """
    log_header = '[FLASH_'+board_name.upper()+'] '

#   Placeholder code here...
#   Checking if 'command_temp.in;i' is present,
#   If present it is replaced with the latest copy of 'command.ini'
    try:
        os.remove(os.environ["BAF_ULTRASONIC_LOAD_DIR"] +
                  '\\..\\BAF_Utilities\\command_temp.ini')
    except:
        pass

#   Making a copy of 'command.ini' as 'command_temp.ini'
#   for framework purposes.
    try:
        copyfile(os.environ["BAF_ULTRASONIC_LOAD_DIR"] +
                 '\\..\\BAF_Utilities\\command.ini',
                 os.environ["BAF_ULTRASONIC_LOAD_DIR"] +
                 '\\..\\BAF_Utilities\\command_temp.ini')
    except Exception as err:
        status = 'FAIL'
        print (log_header+"Error : {0}".format(err))
        print ('\n'+log_header+'Error : Line no. '+
               str(sys.exc_traceback.tb_lineno))
        error_msg = "Exception occurred in 'command_temp.ini'"
        print log_header+error_msg
        writeToControlProperties(board_name, status, error_msg)
        sys.exit(1)

#   Read cotents of 'command_temp.ini', in order to replace
#   DKM and RTP Names as read from the 'config.ini' files.
    try:
        with open(os.environ["BAF_ULTRASONIC_LOAD_DIR"] +
                  '\\..\\BAF_Utilities\\command_temp.ini', 'r') as file :
            command_temp_data = file.read()
    except Exception as err:
        status = 'FAIL'
        print (log_header+"Error : {0}".format(err))
        print ('\n'+log_header+'Error : Line no. '+
               str(sys.exc_traceback.tb_lineno))
        error_msg = "Exception occurred while reading 'command_temp.ini'"
        print log_header+error_msg
        writeToControlProperties(board_name, status, error_msg)
        sys.exit(1)

#   Replace the DKM and RTP names with their respective placeholders
    try:
        command_temp_data = command_temp_data.replace(board_name.upper() +
        '_DKM_NAME', eval(board_name.lower()+'_dkm_name'))
        command_temp_data_replaced1 = command_temp_data.replace(
        board_name.upper() + '_RTP_NAME', eval(board_name.lower()+'_rtp_name'))
        command_temp_data_replaced2 = command_temp_data_replaced1.replace(
        'SD_CARD_PATH', sd_card_path)
    except Exception as err:
        status = 'FAIL'
        print (log_header+"Error : {0}".format(err))
        print ('\n'+log_header+'Error : Line no. '+
               str(sys.exc_traceback.tb_lineno))
        writeToControlProperties(board_name, status, str(err))
        sys.exit(1)

#   Write replaced data back to 'command_temp.ini' again.
    try:
        with open(os.environ["BAF_ULTRASONIC_LOAD_DIR"] +
                  '\\..\\BAF_Utilities\\command_temp.ini', 'w') as file:
            file.write(command_temp_data_replaced2)
    except Exception as err:
        status = 'FAIL'
        print (log_header+"Error : {0}".format(err))
        print ('\n'+log_header+'Error : Line no. '+
               str(sys.exc_traceback.tb_lineno))
        error_msg = "Exception occurred while re-writing 'command_temp.ini'"
        print log_header+error_msg
        writeToControlProperties(board_name, status, error_msg)
        sys.exit(1)

#

#   Send serial commands to a selected board (SC, PC or AC)
    try:
        for command_data in readCommandFile():
            for command, validation in (collections.OrderedDict(command_data)
                                        .iteritems()):
                if serialComm(command, validation, com_port):
                    print ('\n\n['+board_name.upper() + '_FLASH] ***|' +
                           command + '| command sent successfully***\n\n')
                else:
                    status = 'FAIL'
                    error_msg = 'Issue occured while sending a serial command'
                    print ('\n['+board_name.upper() +
                           '_FLASH] Issue occured while sending - ' +
                           command + ' ...')
                    print ('\n[' + board_name.upper() +
                           '_FLASH] Exiting Flash Script.\n')
                    writeToControlProperties(board_name, status, error_msg)
                    sys.exit(1)
    except Exception as err:
        status = 'FAIL'
        print (log_header+"Error : {0}".format(err))
        print ('\n'+log_header+'Error : Line no. '+
               str(sys.exc_traceback.tb_lineno))
        error_msg = "Exception occurred while sending serial command"
        print log_header+error_msg
        writeToControlProperties(board_name, status, error_msg)
        sys.exit(1)


def readCommandFile():
    """
    Function to read command_temp.ini and store it's contents as a dictionary.

    """
    try:

        command = configparser.ConfigParser(delimiters=('='))
        command.optionxform = str
        commandFilePath = (os.environ["BAF_ULTRASONIC_LOAD_DIR"] +
                           '\\..\\BAF_Utilities\\command_temp.ini')
        command.read(commandFilePath)

        command_generic_info = list(tuple(command.items(board.lower() +
                                    '_command_set')))
        command_dkm_info = list(tuple(command.items(board.lower() +
                                '_dkm_command_set')))
        command_rtp_info = list(tuple(command.items(board.lower() +
                                '_rtp_command_set')))

        if (eval(board.lower()+'_dkm') == 'ON') and (eval(board.lower()+'_rtp') == 'ON'):
            return [command_generic_info, command_dkm_info, command_rtp_info]
        elif (eval(board.lower()+'_dkm') == 'ON') and (eval(board.lower()+'_rtp') == 'OFF'):
            return [command_generic_info, command_dkm_info]
        elif (eval(board.lower()+'_dkm') == 'OFF') and (eval(board.lower()+'_rtp') == 'ON'):
            return [command_generic_info, command_rtp_info]
        elif (eval(board.lower()+'_dkm') == 'OFF') and (eval(board.lower()+'_rtp') == 'OFF'):
            return [command_generic_info]
        else:
            status = 'FAIL'
            error_msg = "DKM and RTP Status has not been updated in \
Build Definition"
            print '[FLASH_'+board.upper()+'] ' + error_msg
            writeToControlProperties(board, status, error_msg)
            sys.exit(1)

    except Exception as err:
        status = 'FAIL'
        print ("[FLASH] Error : {0}".format(err))
        print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
        error_msg = "Issue in accessing 'command_temp.ini' file"
        print "[FLASH] " + error_msg
        writeToControlProperties(board, status, error_msg)
        sys.exit(1)

#


def serialComm(command, validation, com_port):
    """
    Function receives 'command_temp.ini' values as an input and returns whether the
    response is validated or not.

    """
    try:
        log_header = "[FLASH_"+board.upper()+"] "

#       Assigning different Serial Port timeouts for different operations
        if 'reboot' in command.encode('ascii'):
            time_out = reboot_timeout
        elif '.out' in command.encode('ascii'):
            time_out = dkm_timeout
        elif '.vxe' in command.encode('ascii'):
            time_out = rtp_timeout
        else:
            time_out = generic_timeout

        print ("\n" + log_header +
               "***Opening serial port for sending command***\n\n" +
               log_header + "#\n" + log_header + command.encode('ascii') +
               "\n"+log_header+"#\n")

        with serial.Serial(com_port, int(baud_rate), timeout=int(time_out)) \
        as ser:

            print log_header+"Connected to: " + ser.portstr
            print log_header+"Sending command...\n"

#           Sending Serial command.. Common for SC,PC and AC..
            ser.write(command.encode('ascii')+'\n')

#           Reading the response received due to the command sent
            for iter in range(3):
                print log_header+".\n"
            print log_header+"Collecting response data...\n\n"
            serial_validate = ser.read(int(data_read))

            print log_header+"***Closing serial port***"
            ser.close()

        time.sleep(2)
        print ("\n" + log_header + "Printing response data for - " +
               command.encode('ascii') + "...\n")

        print serial_validate

        if validation.encode('ascii') == '':
            return True
        elif validation.encode('ascii') in serial_validate:
            return True
        else:
            return False
    except Exception as err:
        status = 'FAIL'
        print ("[FLASH] Error : {0}".format(err))
        print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
        print '\n'
        traceback.print_exc()
        error_msg = 'An Issue occurred while flashing ' + board + ' board'
        print log_header + error_msg
        writeToControlProperties(board, status, error_msg)
        sys.exit(1)


#       Reading Control.properties as a dictionary
print '\n\n[FLASH]*********************************************'
print '[FLASH]  ****NEXT GEN ULTRASONIC FLASH STARTED****'
print '[FLASH]*********************************************'

try:
    cntrlinfo = ReadControlFile()
    print '\n\n[FLASH] Board(s) to be flashed: ', cntrlinfo['board_name']
except Exception as err:
    print ("[FLASH] Error : {0}".format(err))
    print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
    print "[FLASH] Exception occurred while \
reading or accessing 'Control.properties'..."
    sys.exit(1)

try:
    config_info = list()
    build_info = list()

    build_dkm = cntrlinfo['build_dkm']
    build_rtp = cntrlinfo['build_rtp']
    print '\n\n[FLASH] DKM and RTP Status\n:'
    print '[FLASH] build_dkm: '+build_dkm
    print '[FLASH] build_rtp: '+build_rtp
except Exception as err:
    print ("[FLASH] Error : {0}".format(err))
    print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
    sys.exit(1)

#   Reading config.ini contents as dictionary(loop)
try:
    for item in cntrlinfo['board_name'].split(","):
        configfileinfo = ReadConfigFile(item)
        config_info.append(configfileinfo[0])
        build_info.append(configfileinfo[1])
    generic_info = configfileinfo[2]
except Exception as err:
    print ("[FLASH] Error : {0}".format(err))
    print "[FLASH] Exception occurred while accessing 'Control.properties' \
or 'config.ini'..."
    print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
    sys.exit(1)

#   Printing Extracted Data from Config and Control files.
try:
    print '\n\n[FLASH] Flash Parameters:\n'
    flash_param = boardFlash()
    for item in flash_param:
        locals().update(item)
        prettyPrint(item)

    print '\n\n[FLASH] Build Parameters:\n'
    build_param = buildParameters()
    for item in build_param:
        locals().update(item)
        prettyPrint(item)

    print '\n\n[FLASH] Generic Flash Parameters:\n'
    locals().update(generic_info)
    prettyPrint(generic_info)
except Exception as err:
    print ("[FLASH] Error : {0}".format(err))
    print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
    sys.exit(1)


print '\n\n\n[FLASH] Initiating Flash for individual boards...\n\n'

try:
    for board in cntrlinfo['board_name'].split(","):
        log_header = '[FLASH_'+board+'] '

        if board == 'SC':
            print log_header+'SC Flash Started...'

#           Function to send commands over serial communication
            sendCommand(sc_com_port, sd_card_path, baud_rate, board.lower())
            print '\n'

        elif board == 'PC':
            print log_header+'PC Flash Started...'

#           Function to send commands over serial communication
            sendCommand(pc_com_port, sd_card_path, baud_rate, board.lower())
            print '\n'

        elif board == 'AC':
            print log_header+'AC Flash Started...'

#           Function to send commands over serial communication
            sendCommand(ac_com_port, sd_card_path, baud_rate, board.lower())
            print '\n'

        else:
            print '[FLASH] Incorrect board name entered in Build Definition'
            sys.exit(1)

        writeToControlProperties(board, 'PASS', '')
        print '\n\n[FLASH] *************FLASH SUCCESSFUL*************\n\n'

except Exception as err:
    err_stat = 'FAIL'
    print ("[FLASH] Error : {0}".format(err))
    print '\n[FLASH] Error : Line no. '+ str(sys.exc_traceback.tb_lineno)
    writeToControlProperties(board, err_stat, str(err))
    sys.exit(1)
