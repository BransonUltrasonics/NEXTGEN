
	
# this file is automatically generated by mk/krnl/defs.layers.mk. Please do not edit

__FILE_COPIED += $(__FILES_COPIED_EVDEV)




	
	

	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	
	
	
	
	
	
	

	
	
	

	
	
	

	

	


	
# copying directory cdf to C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf




PRENOBUILD : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/20evdev.cdf

__FILES_TO_COPY_EVDEV += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/20evdev.cdf





 

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/20evdev.cdf : C:/WindRiverSR500New/vxworks-7/pkgs/ui/evdev-1.0.0.3/cdf/20evdev.cdf | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf
ifdef __LAYER_DEPENDENCY_TEST
	cp -rfLs $< $@
else
	cp -rfL $< $@
endif


	
cdf_PRENOBUILD_EVDEV_FILES = cdf/20evdev.cdf

cdf_PRENOBUILD_EVDEV_DIR = C:/WindRiverSR500New/vxworks-7/pkgs/ui/evdev-1.0.0.3

PRENOBUILD_FILES += $(addprefix $(cdf_PRENOBUILD_EVDEV_DIR)/,$(cdf_PRENOBUILD_EVDEV_FILES))

PRENOBUILD : PRENOBUILD_EVDEV

PRENOBUILD_EVDEV : cdf_PRENOBUILD_EVDEV

cdf_PRENOBUILD_EVDEV : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_EVDEV.cdf

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_EVDEV.cdf : C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_EVDEV.tmp
	$(CDFCOMP) -i $^ -o $@ -cpp "$(CPP) $(__OPTION_LANG_CDF)" -cpu ARMARCH7 -layer EVDEV

C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_EVDEV.tmp : | C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf
	$(file >$@,$(call __vsb_tmpl_cdf_inter,$(addprefix $(cdf_PRENOBUILD_EVDEV_DIR)/,$(sort $(cdf_PRENOBUILD_EVDEV_FILES))),EVDEV))



	

	

	
__DIR_TARGETS += $(__DIR_TARGETS_EVDEV)

__DIR_TARGETS_EVDEV += C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/cdf C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/configlette C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/krnl/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/share/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/usr/h C:/ScriptGSX2_4/GSX2_4Stream/AM4377_VSB/vsblCdf

