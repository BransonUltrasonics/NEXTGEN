# Automatically generated file: do not edit

##########################
# IPNET_DHCPC6 Section
##########################


ifdef _WRS_CONFIG_IPNET_DHCPC6
VSBL_IPNET_DHCPC6_SRC = 
VSBL_IPNET_DHCPC6_DEPEND = 
ifdef _WRS_CONFIG_IPNET_1_1_1_2_DHCPC6_1_0_1_7
VSBL_IPNET_DHCPC6_SRC += IPNET_DHCPC6
VSBL_IPNET_DHCPC6_DEPEND += IPNET_DNSC
VSBL_IPNET_DHCPC6_DEPEND += SEC_HASH
VSBL_IPNET_DHCPC6_DEPEND += IPNET_COREIP
IPNET_DHCPC6_FASTBUILD = YES
VSBL_IPNET_DHCPC6_PATH = $(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc6-1.0.1.7
VSBL_IPNET_DHCPC6_VERSION = IPNET_1_1_1_2_DHCPC6_1_0_1_7
endif
endif

