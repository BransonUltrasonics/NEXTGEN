# Automatically generated file: do not edit

##########################
# USB_NETWORK Section
##########################


ifdef _WRS_CONFIG_USB_NETWORK
VSBL_USB_NETWORK_SRC = 
VSBL_USB_NETWORK_DEPEND = 
ifdef _WRS_CONFIG_USB_1_1_0_6_HOST_1_0_0_4_CLASS_1_0_0_3_NETWORK_1_0_0_9
VSBL_USB_NETWORK_SRC += USB_NETWORK
VSBL_USB_NETWORK_DEPEND += END_LIB
VSBL_USB_NETWORK_DEPEND += IPNET_COREIP
VSBL_USB_NETWORK_DEPEND += SOCKET
VSBL_USB_NETWORK_DEPEND += USB_HELPER
USB_NETWORK_FASTBUILD = YES
VSBL_USB_NETWORK_PATH = $(WIND_BASE)/pkgs/connectivity/usb-1.1.0.6/host/class/network-1.0.0.9
VSBL_USB_NETWORK_VERSION = USB_1_1_0_6_HOST_1_0_0_4_CLASS_1_0_0_3_NETWORK_1_0_0_9
endif
endif

