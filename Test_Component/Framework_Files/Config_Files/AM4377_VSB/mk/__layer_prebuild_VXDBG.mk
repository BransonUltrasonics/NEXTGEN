
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_VXDBG)




	
	

	
# copying directory h to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxdbgLib.h

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxdbgLib.h





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxdbgLib.h : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/h/vxdbgLib.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxdbgLibInit.h

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxdbgLibInit.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/vxdbgLibInit.h : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/h/vxdbgLibInit.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
# copying directory h/private to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgBpMsgQLibP.h

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgBpMsgQLibP.h





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgBpMsgQLibP.h : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/h/private/vxdbgBpMsgQLibP.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgUtilLibP.h

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgUtilLibP.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgUtilLibP.h : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/h/private/vxdbgUtilLibP.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgCpuLibP.h

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgCpuLibP.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgCpuLibP.h : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/h/private/vxdbgCpuLibP.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgLibP.h

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgLibP.h





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private/vxdbgLibP.h : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/h/private/vxdbgLibP.h | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif





	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	
BUILD : VXDBG_src_diab__BUILD

.PHONY : VXDBG_src_diab__BUILD

__BUILD_FB_IDS += kernel_top_VXDBG_src_diab

VXDBG_src_diab__BUILD : 
	@ echo building VXDBG directory src
	+ @ cd C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/src && C:/WindRiver/vxworks-7/host/binutils/x86-win32/bin/make _mk CPU=ARMARCH7 TOOL=diab TOOL_VERSION=diab_5_9_6_1 _CC_VERSION=diab_5_9_6_1 SPACE=kernel _VSB_CONFIG_ADDEDCFLAGS="" _WRS_CONFIG_APP_TOOL=diab VSBL_NAME=VXDBG VSB_DIR=C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB _WRS_CONFIG_FP=vector _WRS_CLI_CFLAGS="-I. " _FB_ID=kernel_top_VXDBG_src_diab BSPNAME=ti_sitara_ctxa9_branson_1_0_0_0 BUILDSTAGE=BUILD


	
	
	

	
	
	

	

	


	
# copying directory cdf to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/01vxdbg.cdf

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/01vxdbg.cdf





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/01vxdbg.cdf : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/cdf/01vxdbg.cdf | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_VXDBG_FILES = cdf/01vxdbg.cdf

cdf_PRENOBUILD_VXDBG_DIR = C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_VXDBG_DIR)/,$(cdf_PRENOBUILD_VXDBG_FILES))

PRENOBUILD : PRENOBUILD_VXDBG

PRENOBUILD_VXDBG : cdf_PRENOBUILD_VXDBG

cdf_PRENOBUILD_VXDBG : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_VXDBG.cdf

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_VXDBG.cdf : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_VXDBG.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer VXDBG

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_VXDBG.tmp : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_VXDBG_DIR)/,$(sort $(cdf_PRENOBUILD_VXDBG_FILES))),VXDBG))



	

	
# copying directory configlette to C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette




PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrVxdbg.c

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrVxdbg.c





 

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrVxdbg.c : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/configlette/usrVxdbg.c | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif
 
PRENOBUILD : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrBreakpoint.c

__FILES_TO_COPY_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrBreakpoint.c





C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette/usrBreakpoint.c : C:/WindRiver/vxworks-7/pkgs/os/debug/vxdbg-1.0.6.6/configlette/usrBreakpoint.c | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif



	
__DIR_TARGETS += $(__DIR_TARGETS_VXDBG)

__DIR_TARGETS_VXDBG += C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/configlette C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/h/public/private C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/share/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/h C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/vsblCdf
