# Automatically generated file: do not edit

##########################
# USB_MHDRC Section
##########################


ifdef _WRS_CONFIG_USB_MHDRC
VSBL_USB_MHDRC_SRC = 
VSBL_USB_MHDRC_DEPEND = 
ifdef _WRS_CONFIG_USB_1_1_0_6_CTLR_1_2_0_4_MHDRC_1_1_1_7
VSBL_USB_MHDRC_SRC += USB_MHDRC
VSBL_USB_MHDRC_DEPEND += USB_CCORE
VSBL_USB_MHDRC_DEPEND += USB_OTG
VSBL_USB_MHDRC_DEPEND += USB_PHY
VSBL_USB_MHDRC_DEPEND += USB_TCORE
USB_MHDRC_FASTBUILD = YES
VSBL_USB_MHDRC_PATH = $(WIND_BASE)/pkgs/connectivity/usb-1.1.0.6/ctlr/mhdrc-1.1.1.7
VSBL_USB_MHDRC_VERSION = USB_1_1_0_6_CTLR_1_2_0_4_MHDRC_1_1_1_7
endif
endif

