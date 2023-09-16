################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/gcc-arm-none-eabi-6-2017-q1-update/bin/arm-none-eabi-gcc.exe" -c -mcpu=cortex-a9 -mtune=cortex-a9 -march=armv7-a -marm -mfloat-abi=hard -mfpu=vfpv3-d16 -Dam4379 -I"C:/ti/gcc-arm-none-eabi-6-2017-q1-update/arm-none-eabi/include" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/board" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include/am43xx/am437x" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/examples/mmcsd" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/mmcsd" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/examples/qspi" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/third_party/ff9b/port" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/device" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/qspilib/include" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/third_party/ff9b/src" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/mmcsd/include" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/examples/example_utils" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include/hw" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include/utils" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include/am43xx" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include" -g -gdwarf-3 -gstrict-dwarf -Wall -specs="nosys.specs" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

%.o: ../%.S $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: GNU Compiler'
	"C:/ti/gcc-arm-none-eabi-6-2017-q1-update/bin/arm-none-eabi-gcc.exe" -c -mcpu=cortex-a9 -mtune=cortex-a9 -march=armv7-a -marm -mfloat-abi=hard -mfpu=vfpv3-d16 -Dam4379 -I"C:/ti/gcc-arm-none-eabi-6-2017-q1-update/arm-none-eabi/include" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/board" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include/am43xx/am437x" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/examples/mmcsd" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/mmcsd" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/examples/qspi" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/third_party/ff9b/port" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/device" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/qspilib/include" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/third_party/ff9b/src" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/library/mmcsd/include" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/examples/example_utils" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include/hw" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include/utils" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include/am43xx" -I"C:/ti/pdk_am437x_1_0_9/packages/ti/starterware/include" -g -gdwarf-3 -gstrict-dwarf -Wall -specs="nosys.specs" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" $(GEN_OPTS__FLAG) -o"$@" "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


