# Automatically generated file: do not edit

##########################
# ARM Section
##########################


ifdef _WRS_CONFIG_ARM
VSBL_ARM_SRC = 
VSBL_ARM_DEPEND = 
ifdef _WRS_CONFIG_ARM_1_1_9_1
ifdef _WRS_CONFIG_ARM_KERNEL
VSBL_ARM_SRC += ARM_KERNEL
endif
ifdef _WRS_CONFIG_ARM_ARMBASE
VSBL_ARM_SRC += ARM_ARMBASE
endif
ifdef _WRS_CONFIG_ARM_ARMV7A
VSBL_ARM_SRC += ARM_ARMV7A
endif
ifdef _WRS_CONFIG_ARM_ARMV7M
VSBL_ARM_SRC += ARM_ARMV7M
endif
ifdef _WRS_CONFIG_ARM_ARMV8A
VSBL_ARM_SRC += ARM_ARMV8A
endif
ifdef _WRS_CONFIG_ARM_DRV
VSBL_ARM_SRC += ARM_DRV
endif
ifdef _WRS_CONFIG_ARM_MATH_fp
VSBL_ARM_SRC += ARM_MATH_fp
endif
ifdef _WRS_CONFIG_ARM_USER
VSBL_ARM_SRC += ARM_USER
endif
ifdef _WRS_CONFIG_ARM_VXTEST
VSBL_ARM_SRC += ARM_VXTEST
endif
VSBL_ARM_SRC += ARM
VSBL_ARM_DEPEND += CORE_KERNEL
ifdef _WRS_CONFIG_COMPAT69&
endif
ifndef _WRS_CONFIG_VXBUS_SUBSYSTEM
VSBL_ARM_DEPEND += VXBUS_SUBSYSTEM
endif
ARM_FASTBUILD = YES
VSBL_ARM_PATH = $(WIND_BASE)/pkgs/os/arch/arm-1.1.9.1
VSBL_ARM_VERSION = ARM_1_1_9_1
endif
endif

