
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

# LIB_BASE_NAMES = HASH

 
_STATIC_LIBOBJS_common_HASH_user_static_top_HASH_openssl-1_0_2_sha_diab = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objHASH/sha1dgst.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objHASH/sha1_one.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objHASH/sha256.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objHASH/sha512.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objHASH/sha_dgst.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objHASH/sha_one.o

_usrstarcmdfile_common_HASH : $(_STATIC_LIBOBJS_common_HASH_user_static_top_HASH_openssl-1_0_2_sha_diab)

_STATIC_LIBOBJS_common_HASH += $(_STATIC_LIBOBJS_common_HASH_user_static_top_HASH_openssl-1_0_2_sha_diab)

__OBJS_TO_CLEAN_HASH += $(_STATIC_LIBOBJS_common_HASH_user_static_top_HASH_openssl-1_0_2_sha_diab)

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libHASH.a : $(_STATIC_LIBOBJS_common_HASH_user_static_top_HASH_openssl-1_0_2_sha_diab)

ifndef _DONEBASE_USRST_LIB_common_HASH

_DONEBASE_USRST_LIB_common_HASH = TRUE

# LIBBASES += HASH

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common:
#	mkdir -p $@

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objHASH :
#	mkdir -p $@

usrstlib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libHASH.a

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libHASH.a : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common

__STATIC_BUILT_LIBS += common_HASH

__STLIB_common_HASH = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libHASH.a

arcmdfiles : _usrstarcmdfile_common_HASH

_usrstarcmdfile_common_HASH :
	$(file >$@,$(sort $(_STATIC_LIBOBJS_common_HASH)))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libHASH.a : _usrstarcmdfile_common_HASH | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @_usrstarcmdfile_common_HASH

clean  _layer_clean_HASH : _clean_USRST_LIB_BASE_common_HASH

_clean_USRST_LIB_BASE_common_HASH :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libHASH.a

endif


 

 

################
# rules defined locally in Makefile
##





################

objs : $(LIBOBJS)
 
# this is the end of the file 
