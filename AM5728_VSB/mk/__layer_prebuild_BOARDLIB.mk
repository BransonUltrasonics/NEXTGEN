
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_BOARDLIB)




	
	

	
# copying directory h to C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/boardLib.h

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/boardLib.h





 

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/boardLib.h : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/h/boardLib.h | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/warmBootLib.h

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/warmBootLib.h





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public/warmBootLib.h : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/h/warmBootLib.h | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif




	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
BUILD : BOARDLIB_src_diab__BUILD

.PHONY : BOARDLIB_src_diab__BUILD

__BUILD_FB_IDS += kernel_top_BOARDLIB_src_diab

BOARDLIB_src_diab__BUILD : 
	@ echo building BOARDLIB directory src
	+ @ cd C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/src && C:/WindRiverSR500New/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=BOARDLIB VSB_DIR=C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=kernel_top_BOARDLIB_src_diab BSPNAME=ti_sitara_ctxa15_branson_1_0_0_0 BUILDSTAGE=BUILD


	
	
	

	
	
	

	

	


	
# copying directory cdf to C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/01boardLib.cdf

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/01boardLib.cdf





 

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/01boardLib.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cdf/01boardLib.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10memDesc.cdf

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10memDesc.cdf





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10memDesc.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cdf/10memDesc.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10timer.cdf

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10timer.cdf





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10timer.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cdf/10timer.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/01warmBoot.cdf

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/01warmBoot.cdf





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/01warmBoot.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cdf/01warmBoot.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10serial.cdf

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10serial.cdf





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/10serial.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cdf/10serial.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_BOARDLIB_FILES = cdf/01boardLib.cdf cdf/10memDesc.cdf cdf/10timer.cdf cdf/01warmBoot.cdf cdf/10serial.cdf

cdf_PRENOBUILD_BOARDLIB_DIR = C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_BOARDLIB_DIR)/,$(cdf_PRENOBUILD_BOARDLIB_FILES))

PRENOBUILD : PRENOBUILD_BOARDLIB

PRENOBUILD_BOARDLIB : cdf_PRENOBUILD_BOARDLIB

cdf_PRENOBUILD_BOARDLIB : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_BOARDLIB.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_BOARDLIB.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_BOARDLIB.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer BOARDLIB

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_BOARDLIB.tmp : | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_BOARDLIB_DIR)/,$(sort $(cdf_PRENOBUILD_BOARDLIB_FILES))),BOARDLIB))



	

	
# copying directory cfg to C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrWarmBootLib.c

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrWarmBootLib.c





 

C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrWarmBootLib.c : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cfg/usrWarmBootLib.c | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/sysClkInit.c

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/sysClkInit.c





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/sysClkInit.c : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cfg/sysClkInit.c | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrBoardLibInit.c

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrBoardLibInit.c





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrBoardLibInit.c : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cfg/usrBoardLibInit.c | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrMemDesc.c

__FILES_TO_COPY_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrMemDesc.c





C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette/usrMemDesc.c : C:/WindRiverSR500New/vxworks-7/pkgs/os/utils/boardlib-1.1.1.0/cfg/usrMemDesc.c | C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif



	
__DIR_TARGETS += $(__DIR_TARGETS_BOARDLIB)

__DIR_TARGETS_BOARDLIB += C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/configlette C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/h/public C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/share/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/usr/h C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/vsblCdf

