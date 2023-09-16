################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Add inputs and outputs from these tool invocations to the build variables 
A_SRCS += \
../libboard.a \
../libboard_boot.a \
../libdal.a \
../libdal_boot.a \
../libdevice.a \
../libdevice_boot.a \
../libexample_utils.a \
../libff9b_lib.a \
../libmmcsd_lib.a \
../libnand_lib.a \
../libqspi_lib.a \
../libqspi_lib_boot.a \
../libsoc.a \
../libutils.a \
../libutils_boot.a 

S_UPPER_SRCS += \
../startup_ARMCA9.S 

LDS_SRCS += \
../AM437x.lds 

C_SRCS += \
../i2c.c \
../qspi.c \
../qspi_app.c \
../uart.c 

C_DEPS += \
./i2c.d \
./qspi.d \
./qspi_app.d \
./uart.d 

OBJS += \
./i2c.o \
./qspi.o \
./qspi_app.o \
./startup_ARMCA9.o \
./uart.o 

S_UPPER_DEPS += \
./startup_ARMCA9.d 

S_UPPER_DEPS__QUOTED += \
"startup_ARMCA9.d" 

OBJS__QUOTED += \
"i2c.o" \
"qspi.o" \
"qspi_app.o" \
"startup_ARMCA9.o" \
"uart.o" 

C_DEPS__QUOTED += \
"i2c.d" \
"qspi.d" \
"qspi_app.d" \
"uart.d" 

C_SRCS__QUOTED += \
"../i2c.c" \
"../qspi.c" \
"../qspi_app.c" \
"../uart.c" 

A_SRCS__QUOTED += \
"../libboard.a" \
"../libboard_boot.a" \
"../libdal.a" \
"../libdal_boot.a" \
"../libdevice.a" \
"../libdevice_boot.a" \
"../libexample_utils.a" \
"../libff9b_lib.a" \
"../libmmcsd_lib.a" \
"../libnand_lib.a" \
"../libqspi_lib.a" \
"../libqspi_lib_boot.a" \
"../libsoc.a" \
"../libutils.a" \
"../libutils_boot.a" 

S_UPPER_SRCS__QUOTED += \
"../startup_ARMCA9.S" 


