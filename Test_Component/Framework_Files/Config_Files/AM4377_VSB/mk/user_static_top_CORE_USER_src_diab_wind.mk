
#
# This file is automatically generated by mk/usr/defs.fastlibgen.mk.
#
# build configuration :
#	VSB : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB
#	CPU : ARMARCH7
#	TOOL : diab
#	FP : vector
# 	ENDIAN : little
#	LIB_DIR_TAG = 
#	LIBDIRBASE = common
#	LIBDIRBASE = $(TOOL_COMMON_DIR)$(LIB_DIR_TAG)






ifeq (,)



endif


# DEP_OBJS = (DEP_OBJS)

# LIB_BASE_NAMES = c

 
_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_wind = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/errnoLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/eventLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/handleLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/msgQLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/msgQEvLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/semEvLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/semLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/taskHookLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/taskInfo.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/taskLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/taskUtilLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/tickLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/tlsOldLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/tlsOldData.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/condVarLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/msgQInfo.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/taskPxLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/semRWLib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc/semInfo.o

_usrstarcmdfile_common_c : $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_wind)

_STATIC_LIBOBJS_common_c += $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_wind)

__OBJS_TO_CLEAN_CORE_USER += $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_wind)

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a : $(_STATIC_LIBOBJS_common_c_user_static_top_CORE_USER_src_diab_wind)

ifndef _DONEBASE_USRST_LIB_common_c

_DONEBASE_USRST_LIB_common_c = TRUE

# LIBBASES += c

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common:
#	mkdir -p $@

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objc :
#	mkdir -p $@

usrstlib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common

__STATIC_BUILT_LIBS += common_c

__STLIB_common_c = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a

arcmdfiles : _usrstarcmdfile_common_c

_usrstarcmdfile_common_c :
	$(file >$@,$(sort $(_STATIC_LIBOBJS_common_c)))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a : _usrstarcmdfile_common_c | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @_usrstarcmdfile_common_c

clean  _layer_clean_CORE_USER : _clean_USRST_LIB_BASE_common_c

_clean_USRST_LIB_BASE_common_c :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a

endif


 

 

################
# rules defined locally in Makefile
##





################

objs : $(LIBOBJS)
 
# this is the end of the file 
