
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_IPNET_PPP)




	
	

	
# copying directory h to C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp_config.h

__FILES_TO_COPY_IPNET_PPP += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp_config.h





 

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp_config.h : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/ppp-1.2.1.3/h/ipppp_config.h | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp.h

__FILES_TO_COPY_IPNET_PPP += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp.h





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp.h : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/ppp-1.2.1.3/h/ipppp.h | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp_ipstack.h

__FILES_TO_COPY_IPNET_PPP += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp_ipstack.h





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/ipppp_ipstack.h : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/ppp-1.2.1.3/h/ipppp_ipstack.h | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
BUILD : IPNET_PPP_src_diab__BUILD

.PHONY : IPNET_PPP_src_diab__BUILD

__BUILD_FB_IDS += kernel_top_IPNET_PPP_src_diab

IPNET_PPP_src_diab__BUILD : 
	@ echo building IPNET_PPP directory src
	+ @ cd C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/ppp-1.2.1.3/src && C:/WindRiverSR500New/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=IPNET_PPP VSB_DIR=C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=kernel_top_IPNET_PPP_src_diab BSPNAME=ti_sitara_ctxa15_branson_1_0_0_0 BUILDSTAGE=BUILD


	
	
	

	
	
	

	

	


	
# copying directory cdf to C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/02comp_ipnet_ppp.cdf

__FILES_TO_COPY_IPNET_PPP += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/02comp_ipnet_ppp.cdf





 

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/02comp_ipnet_ppp.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/ppp-1.2.1.3/cdf/02comp_ipnet_ppp.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_IPNET_PPP_FILES = cdf/02comp_ipnet_ppp.cdf

cdf_PRENOBUILD_IPNET_PPP_DIR = C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/ppp-1.2.1.3

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_IPNET_PPP_DIR)/,$(cdf_PRENOBUILD_IPNET_PPP_FILES))

PRENOBUILD : PRENOBUILD_IPNET_PPP

PRENOBUILD_IPNET_PPP : cdf_PRENOBUILD_IPNET_PPP

cdf_PRENOBUILD_IPNET_PPP : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_PPP.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_PPP.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_PPP.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer IPNET_PPP

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_PPP.tmp : | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_IPNET_PPP_DIR)/,$(sort $(cdf_PRENOBUILD_IPNET_PPP_FILES))),IPNET_PPP))



	

	
# copying directory cfg to C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/ipppp_config.c

__FILES_TO_COPY_IPNET_PPP += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/ipppp_config.c





 

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/ipppp_config.c : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/ppp-1.2.1.3/cfg/ipppp_config.c | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/ipppp_example.c

__FILES_TO_COPY_IPNET_PPP += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/ipppp_example.c





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/ipppp_example.c : C:/WindRiverSR500New/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/ppp-1.2.1.3/cfg/ipppp_example.c | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif



	
__DIR_TARGETS += $(__DIR_TARGETS_IPNET_PPP)

__DIR_TARGETS_IPNET_PPP += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/share/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/vsblCdf
