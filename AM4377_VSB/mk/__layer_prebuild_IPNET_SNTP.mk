
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_IPNET_SNTP)




	
	

	
# copying directory h to C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public/ipsntp_config.h

__FILES_TO_COPY_IPNET_SNTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public/ipsntp_config.h





 

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public/ipsntp_config.h : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/app/sntp-1.0.0.5/h/ipsntp_config.h | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public/ipsntp.h

__FILES_TO_COPY_IPNET_SNTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public/ipsntp.h





C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public/ipsntp.h : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/app/sntp-1.0.0.5/h/ipsntp.h | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
BUILD : IPNET_SNTP_src_diab__BUILD

.PHONY : IPNET_SNTP_src_diab__BUILD

__BUILD_FB_IDS += kernel_top_IPNET_SNTP_src_diab

IPNET_SNTP_src_diab__BUILD : 
	@ echo building IPNET_SNTP directory src
	+ @ cd C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/app/sntp-1.0.0.5/src && C:/WindRiverSR500New/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=IPNET_SNTP VSB_DIR=C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=kernel_top_IPNET_SNTP_src_diab BSPNAME=ti_sitara_ctxa9_branson_1_0_0_0 BUILDSTAGE=BUILD


	
	
	

	
	
	

	

	


	
# copying directory cdf to C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/02comp_ipnet_sntp.cdf

__FILES_TO_COPY_IPNET_SNTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/02comp_ipnet_sntp.cdf





 

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/02comp_ipnet_sntp.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/app/sntp-1.0.0.5/cdf/02comp_ipnet_sntp.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_IPNET_SNTP_FILES = cdf/02comp_ipnet_sntp.cdf

cdf_PRENOBUILD_IPNET_SNTP_DIR = C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/app/sntp-1.0.0.5

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_IPNET_SNTP_DIR)/,$(cdf_PRENOBUILD_IPNET_SNTP_FILES))

PRENOBUILD : PRENOBUILD_IPNET_SNTP

PRENOBUILD_IPNET_SNTP : cdf_PRENOBUILD_IPNET_SNTP

cdf_PRENOBUILD_IPNET_SNTP : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_SNTP.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_SNTP.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_SNTP.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer IPNET_SNTP

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_SNTP.tmp : | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_IPNET_SNTP_DIR)/,$(sort $(cdf_PRENOBUILD_IPNET_SNTP_FILES))),IPNET_SNTP))



	

	
# copying directory cfg to C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/ipsntp_config.c

__FILES_TO_COPY_IPNET_SNTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/ipsntp_config.c





 

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette/ipsntp_config.c : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/app/sntp-1.0.0.5/cfg/ipsntp_config.c | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif



	
__DIR_TARGETS += $(__DIR_TARGETS_IPNET_SNTP)

__DIR_TARGETS_IPNET_SNTP += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h/public C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/share/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/vsblCdf

