
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_USB_XHCI)




	
	

	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
BUILD : USB_XHCI_src_diab__BUILD

.PHONY : USB_XHCI_src_diab__BUILD

__BUILD_FB_IDS += kernel_top_USB_XHCI_src_diab

USB_XHCI_src_diab__BUILD : 
	@ echo building USB_XHCI directory src
	+ @ cd C:/WindRiverSR500New/vxworks-7/pkgs/connectivity/usb-1.1.0.6/ctlr/xhci-1.0.3.1/src && C:/WindRiverSR500New/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=USB_XHCI VSB_DIR=C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=kernel_top_USB_XHCI_src_diab BSPNAME=ti_sitara_ctxa15_branson_1_0_0_0 BUILDSTAGE=BUILD


	
	
	

	
	
	

	

	


	
# copying directory cdf to C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/41usb_controller_xhci.cdf

__FILES_TO_COPY_USB_XHCI += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/41usb_controller_xhci.cdf





 

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/41usb_controller_xhci.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/connectivity/usb-1.1.0.6/ctlr/xhci-1.0.3.1/cdf/41usb_controller_xhci.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_USB_XHCI_FILES = cdf/41usb_controller_xhci.cdf

cdf_PRENOBUILD_USB_XHCI_DIR = C:/WindRiverSR500New/vxworks-7/pkgs/connectivity/usb-1.1.0.6/ctlr/xhci-1.0.3.1

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_USB_XHCI_DIR)/,$(cdf_PRENOBUILD_USB_XHCI_FILES))

PRENOBUILD : PRENOBUILD_USB_XHCI

PRENOBUILD_USB_XHCI : cdf_PRENOBUILD_USB_XHCI

cdf_PRENOBUILD_USB_XHCI : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_USB_XHCI.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_USB_XHCI.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_USB_XHCI.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer USB_XHCI

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_USB_XHCI.tmp : | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_USB_XHCI_DIR)/,$(sort $(cdf_PRENOBUILD_USB_XHCI_FILES))),USB_XHCI))



	

	

	
__DIR_TARGETS += $(__DIR_TARGETS_USB_XHCI)

__DIR_TARGETS_USB_XHCI += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/share/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/vsblCdf

