
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_CORE_RTP)




	
	

	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
BUILD : CORE_RTP_src_diab__BUILD

.PHONY : CORE_RTP_src_diab__BUILD

__BUILD_FB_IDS += kernel_top_CORE_RTP_src_diab

CORE_RTP_src_diab__BUILD : 
	@ echo building CORE_RTP directory src
	+ @ cd C:/WindRiverSR500New/vxworks-7/pkgs/os/core/rtp-1.1.2.1/src && C:/WindRiverSR500New/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=CORE_RTP VSB_DIR=C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=kernel_top_CORE_RTP_src_diab BSPNAME=ti_sitara_ctxa9_branson_1_0_0_0 BUILDSTAGE=BUILD


	
	
	

	
	
	

	

	


	
# copying directory cdf to C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01rtp.cdf

__FILES_TO_COPY_CORE_RTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01rtp.cdf





 

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01rtp.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/os/core/rtp-1.1.2.1/cdf/01rtp.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01bundle_rtp.cdf

__FILES_TO_COPY_CORE_RTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01bundle_rtp.cdf





C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01bundle_rtp.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/os/core/rtp-1.1.2.1/cdf/01bundle_rtp.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01bundle_rtp_posix_pse52.cdf

__FILES_TO_COPY_CORE_RTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01bundle_rtp_posix_pse52.cdf





C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/01bundle_rtp_posix_pse52.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/os/core/rtp-1.1.2.1/cdf/01bundle_rtp_posix_pse52.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_CORE_RTP_FILES = cdf/01rtp.cdf cdf/01bundle_rtp.cdf cdf/01bundle_rtp_posix_pse52.cdf

cdf_PRENOBUILD_CORE_RTP_DIR = C:/WindRiverSR500New/vxworks-7/pkgs/os/core/rtp-1.1.2.1

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_CORE_RTP_DIR)/,$(cdf_PRENOBUILD_CORE_RTP_FILES))

PRENOBUILD : PRENOBUILD_CORE_RTP

PRENOBUILD_CORE_RTP : cdf_PRENOBUILD_CORE_RTP

cdf_PRENOBUILD_CORE_RTP : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_CORE_RTP.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_CORE_RTP.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_CORE_RTP.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer CORE_RTP

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_CORE_RTP.tmp : | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_CORE_RTP_DIR)/,$(sort $(cdf_PRENOBUILD_CORE_RTP_FILES))),CORE_RTP))



	

	
# copying directory configlette to C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/rtpLaunch.c

__FILES_TO_COPY_CORE_RTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/rtpLaunch.c





 

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/rtpLaunch.c : C:/WindRiverSR500New/vxworks-7/pkgs/os/core/rtp-1.1.2.1/configlette/rtpLaunch.c | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/usrRtpAppInitBootline.c

__FILES_TO_COPY_CORE_RTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/usrRtpAppInitBootline.c





C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/usrRtpAppInitBootline.c : C:/WindRiverSR500New/vxworks-7/pkgs/os/core/rtp-1.1.2.1/configlette/usrRtpAppInitBootline.c | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/usrRtpAppInitString.c

__FILES_TO_COPY_CORE_RTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/usrRtpAppInitString.c





C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/usrRtpAppInitString.c : C:/WindRiverSR500New/vxworks-7/pkgs/os/core/rtp-1.1.2.1/configlette/usrRtpAppInitString.c | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif



	
__DIR_TARGETS += $(__DIR_TARGETS_CORE_RTP)

__DIR_TARGETS_CORE_RTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/share/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/vsblCdf
