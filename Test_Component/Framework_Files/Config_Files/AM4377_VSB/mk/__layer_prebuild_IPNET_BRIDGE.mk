
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_IPNET_BRIDGE)




	
	

	
# copying directory h to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/mirrorEnd.h

__FILES_TO_COPY_IPNET_BRIDGE += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/mirrorEnd.h





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/mirrorEnd.h : C:/WindRiver/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/bridge-1.0.1.3/h/mirrorEnd.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/bridge.h

__FILES_TO_COPY_IPNET_BRIDGE += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/bridge.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/bridge.h : C:/WindRiver/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/bridge-1.0.1.3/h/bridge.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
BUILD : IPNET_BRIDGE_src_diab__BUILD

.PHONY : IPNET_BRIDGE_src_diab__BUILD

__BUILD_FB_IDS += kernel_top_IPNET_BRIDGE_src_diab

IPNET_BRIDGE_src_diab__BUILD : 
	@ echo building IPNET_BRIDGE directory src
	+ @ cd C:/WindRiver/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/bridge-1.0.1.3/src && C:/WindRiver/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=IPNET_BRIDGE VSB_DIR=C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=kernel_top_IPNET_BRIDGE_src_diab BSPNAME=ti_sitara_ctxa9_branson_1_0_0_0 BUILDSTAGE=BUILD


	
	
	

	
	
	

	

	


	
# copying directory cdf to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/10bridge.cdf

__FILES_TO_COPY_IPNET_BRIDGE += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/10bridge.cdf





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/10bridge.cdf : C:/WindRiver/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/bridge-1.0.1.3/cdf/10bridge.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_IPNET_BRIDGE_FILES = cdf/10bridge.cdf

cdf_PRENOBUILD_IPNET_BRIDGE_DIR = C:/WindRiver/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/bridge-1.0.1.3

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_IPNET_BRIDGE_DIR)/,$(cdf_PRENOBUILD_IPNET_BRIDGE_FILES))

PRENOBUILD : PRENOBUILD_IPNET_BRIDGE

PRENOBUILD_IPNET_BRIDGE : cdf_PRENOBUILD_IPNET_BRIDGE

cdf_PRENOBUILD_IPNET_BRIDGE : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_BRIDGE.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_BRIDGE.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_BRIDGE.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer IPNET_BRIDGE

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_BRIDGE.tmp : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_IPNET_BRIDGE_DIR)/,$(sort $(cdf_PRENOBUILD_IPNET_BRIDGE_FILES))),IPNET_BRIDGE))



	

	
# copying directory cfg to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrNetBridgeCfg.c

__FILES_TO_COPY_IPNET_BRIDGE += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrNetBridgeCfg.c





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrNetBridgeCfg.c : C:/WindRiver/vxworks-7/pkgs/net/ipnet-1.1.1.2/linkproto/bridge-1.0.1.3/cfg/usrNetBridgeCfg.c | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif



	
__DIR_TARGETS += $(__DIR_TARGETS_IPNET_BRIDGE)

__DIR_TARGETS_IPNET_BRIDGE += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/share/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/vsblCdf

