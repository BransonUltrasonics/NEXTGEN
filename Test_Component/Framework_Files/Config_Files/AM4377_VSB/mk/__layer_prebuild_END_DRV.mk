
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_END_DRV)




	
	

	
# copying directory h to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxbMiiClause45.h

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxbMiiClause45.h





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxbMiiClause45.h : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/h/vxbMiiClause45.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxbMiiLib.h

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxbMiiLib.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxbMiiLib.h : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/h/vxbMiiLib.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/miiBus.h

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/miiBus.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/miiBus.h : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/h/miiBus.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif




	
	
	
	
	
	
	
	
	
	
# copying directory h to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/vxbMiiClause45.h

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/vxbMiiClause45.h





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/vxbMiiClause45.h : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/h/vxbMiiClause45.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/vxbMiiLib.h

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/vxbMiiLib.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/vxbMiiLib.h : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/h/vxbMiiLib.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/miiBus.h

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/miiBus.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public/miiBus.h : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/h/miiBus.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
	
	
	
	
	
	


	
PREBUILD_GENHEADERS : END_DRV_genh_diab__PREBUILD_GENHEADERS



END_DRV_genh_diab__PREBUILD_GENHEADERS : 
	@ echo building END_DRV directory genh
	+ @ cd C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/genh && C:/WindRiver/vxworks-7/host/binutils/x86-win32/bin/make CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=END_DRV VSB_DIR=C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=_PREBUILD_GENHEADERS_END_DRV_genh_diab __WRS_TARGET=PREBUILD_GENHEADERS BSPNAME=ti_sitara_ctxa9_branson_1_0_0_0  BUILDSTAGE=PREBUILD_GENHEADERS

	
	
	
	
	
	
BUILD : END_DRV_src_diab__BUILD

.PHONY : END_DRV_src_diab__BUILD

__BUILD_FB_IDS += kernel_top_END_DRV_src_diab

END_DRV_src_diab__BUILD : 
	@ echo building END_DRV directory src
	+ @ cd C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/src && C:/WindRiver/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=END_DRV VSB_DIR=C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=kernel_top_END_DRV_src_diab BSPNAME=ti_sitara_ctxa9_branson_1_0_0_0 BUILDSTAGE=BUILD


	
BUILD_USR_STATIC : END_DRV_src_diab__BUILD_USR_STATIC

.PHONY : END_DRV_src_diab__BUILD_USR_STATIC

__BUILD_USR_STATIC_FB_IDS += user_static_top_END_DRV_src_diab

END_DRV_src_diab__BUILD_USR_STATIC : 
	@ echo building END_DRV directory src
	+ @ cd C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/src && C:/WindRiver/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=user LAYER_FORMAT=static _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=END_DRV VSB_DIR=C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=user_static_top_END_DRV_src_diab BSPNAME=ti_sitara_ctxa9_branson_1_0_0_0 BUILDSTAGE=BUILD_USR_STATIC

	
	
BUILD_USR_SHARED : END_DRV_src_diab__BUILD_USR_SHARED

.PHONY : END_DRV_src_diab__BUILD_USR_SHARED

__BUILD_USR_SHARED_FB_IDS += user_shared_top_END_DRV_src_diab

END_DRV_src_diab__BUILD_USR_SHARED : 
	@ echo building END_DRV directory src
	+ @ cd C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/src && C:/WindRiver/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=user LAYER_FORMAT=shared _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=END_DRV VSB_DIR=C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=user_shared_top_END_DRV_src_diab BSPNAME=ti_sitara_ctxa9_branson_1_0_0_0 BUILDSTAGE=BUILD_USR_SHARED


	
	
	

	

	


	
# copying directory cdf to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtFslFecEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtFslFecEnd.cdf





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtFslFecEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbFdtFslFecEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbEtsecEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbEtsecEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbEtsecEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbEtsecEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbStm32fEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbStm32fEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbStm32fEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbStm32fEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbRtlEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbRtlEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbRtlEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbRtlEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtAltSocGen5DwEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtAltSocGen5DwEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtAltSocGen5DwEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbFdtAltSocGen5DwEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbCpswEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbCpswEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbCpswEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbCpswEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/10mii.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/10mii.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/10mii.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/10mii.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbTeiEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbTeiEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbTeiEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbTeiEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtTiCpswEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtTiCpswEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtTiCpswEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbFdtTiCpswEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtFslImxEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtFslImxEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtFslImxEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbFdtFslImxEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFeiEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFeiEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFeiEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbFeiEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtZynq7kAxiEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtZynq7kAxiEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtZynq7kAxiEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbFdtZynq7kAxiEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtTiNetcpEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtTiNetcpEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtTiNetcpEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbFdtTiNetcpEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtZynqGemEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtZynqGemEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbFdtZynqGemEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbFdtZynqGemEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbGeiEnd.cdf

__FILES_TO_COPY_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbGeiEnd.cdf





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/40vxbGeiEnd.cdf : C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv/cdf/40vxbGeiEnd.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_END_DRV_FILES = cdf/40vxbFdtFslFecEnd.cdf cdf/40vxbEtsecEnd.cdf cdf/40vxbStm32fEnd.cdf cdf/40vxbRtlEnd.cdf cdf/40vxbFdtAltSocGen5DwEnd.cdf cdf/40vxbCpswEnd.cdf cdf/10mii.cdf cdf/40vxbTeiEnd.cdf cdf/40vxbFdtTiCpswEnd.cdf cdf/40vxbFdtFslImxEnd.cdf cdf/40vxbFeiEnd.cdf cdf/40vxbFdtZynq7kAxiEnd.cdf cdf/40vxbFdtTiNetcpEnd.cdf cdf/40vxbFdtZynqGemEnd.cdf cdf/40vxbGeiEnd.cdf

cdf_PRENOBUILD_END_DRV_DIR = C:/WindRiver/vxworks-7/pkgs/net/end-1.2.5.0/drv

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_END_DRV_DIR)/,$(cdf_PRENOBUILD_END_DRV_FILES))

PRENOBUILD : PRENOBUILD_END_DRV

PRENOBUILD_END_DRV : cdf_PRENOBUILD_END_DRV

cdf_PRENOBUILD_END_DRV : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_END_DRV.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_END_DRV.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_END_DRV.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer END_DRV

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_END_DRV.tmp : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_END_DRV_DIR)/,$(sort $(cdf_PRENOBUILD_END_DRV_FILES))),END_DRV))



	

	

	
__DIR_TARGETS += $(__DIR_TARGETS_END_DRV)

__DIR_TARGETS_END_DRV += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/share/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h/public C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/vsblCdf

