
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

# LIB_BASE_NAMES = dl

 
_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab_funcs = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/getenv.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/memcmp.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/memcpy.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/memset.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strcat.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strchr.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strcmp.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strcpy.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strlen.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strncmp.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strncpy.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strrchr.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/torn_getauxv.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/bALib.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/syscallCommon.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__close.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__ioctl.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB_mmap.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB_munmap.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__open.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__read.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__write.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__exit.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__shlClose.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__shlGet.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__shlOpen.o  C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB_mprotect.o

_usrstarcmdfile_common_dl : $(_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab_funcs)

_STATIC_LIBOBJS_common_dl += $(_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab_funcs)

__OBJS_TO_CLEAN_LIBDL_7X += $(_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab_funcs)

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a : $(_STATIC_LIBOBJS_common_dl_user_static_top_LIBDL_7X_libdl_diab_funcs)

ifndef _DONEBASE_USRST_LIB_common_dl

_DONEBASE_USRST_LIB_common_dl = TRUE

# LIBBASES += dl

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common:
#	mkdir -p $@

# C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl :
#	mkdir -p $@

usrstlib : C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a : | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common

__STATIC_BUILT_LIBS += common_dl

__STLIB_common_dl = C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a

arcmdfiles : _usrstarcmdfile_common_dl

_usrstarcmdfile_common_dl :
	$(file >$@,$(sort $(_STATIC_LIBOBJS_common_dl)))
	@echo created $@

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a : _usrstarcmdfile_common_dl | C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar crusv $@ @_usrstarcmdfile_common_dl

clean  _layer_clean_LIBDL_7X : _clean_USRST_LIB_BASE_common_dl

_clean_USRST_LIB_BASE_common_dl :
	rm -f C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libdl.a

endif


 

 

################
# rules defined locally in Makefile
##




C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/getenv.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/memcmp.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/memcpy.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/memset.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strcat.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strchr.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strcmp.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strcpy.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strlen.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strncmp.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strncpy.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/strrchr.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/torn_getauxv.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/bALib.o: C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a
	cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl && C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar x C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a $(@F)
	mv $@ $@.tmp
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dld -tARMCORTEXA9MV:cross -r -L . -R _close=_rtld_close -R __errno=_rtld___errno -R _exit=_rtld__exit -R getenv=_rtld_getenv -R getpid=_rtld_getpid -R _ioctl=_rtld__ioctl -R memcmp=_rtld_memcmp -R memcpy=_rtld_memcpy -R memset=_rtld_memset -R mmap=_rtld_mmap -R munmap=_rtld_munmap -R _open=_rtld__open -R _read=_rtld_read -R rtpInfoGet=_rtld_rtpInfoGet -R _sdOpen=_rtld__sdOpen -R sdProtect=_rtld_sdProtect -R sdUnmap=_rtld_sdUnmap -R _shlClose=_rtld__shlClose -R _shlGet=_rtld__shlGet -R _shlOpen=_rtld__shlOpen -R _shlPut=_rtld__shlPut -R _shlUnlock=_rtld__shlUnlock -R strcat=_rtld_strcat -R strchr=_rtld_strchr -R strrchr=_rtld_strrchr -R strcmp=_rtld_strcmp -R strcpy=_rtld_strcpy -R strlen=_rtld_strlen -R strncmp=_rtld_strncmp -R strncpy=_rtld_strncpy -R syscall=_rtld_syscall -R syscallErrorExit=_rtld_syscallErrorExit -R sysctl=_rtld_sysctl -R _write=_rtld_write -R syscall_long=_rtld_syscall_long -R vxFsGet=_rtld_vxFsGet -R vxFsSet=_rtld_vxFsSet -R getauxv=_rtld_getauxv -R mprotect=_rtld_mprotect -R bcopy=_rtld_bcopy -R bfill=_rtld_bfill  $@.tmp -o $@
	rm -f $@.tmp
	touch $(@:.o=.d)

C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/syscallCommon.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__close.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__ioctl.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB_mmap.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB_munmap.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__open.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__read.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__write.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__exit.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__shlClose.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__shlGet.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB__shlOpen.o C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl/SYSCALL_STUB_mprotect.o: C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a
	cd C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/objdl && C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dar x C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/usr/lib/common/libc.a $(@F)
	mv $@ $@.tmp
	C:/WindRiver/compilers/diab-5.9.6.1/WIN32/bin/dld -tARMCORTEXA9MV:cross -r -L . -R _close=_rtld_close -R __errno=_rtld___errno -R _exit=_rtld__exit -R getenv=_rtld_getenv -R getpid=_rtld_getpid -R _ioctl=_rtld__ioctl -R memcmp=_rtld_memcmp -R memcpy=_rtld_memcpy -R memset=_rtld_memset -R mmap=_rtld_mmap -R munmap=_rtld_munmap -R _open=_rtld__open -R _read=_rtld_read -R rtpInfoGet=_rtld_rtpInfoGet -R _sdOpen=_rtld__sdOpen -R sdProtect=_rtld_sdProtect -R sdUnmap=_rtld_sdUnmap -R _shlClose=_rtld__shlClose -R _shlGet=_rtld__shlGet -R _shlOpen=_rtld__shlOpen -R _shlPut=_rtld__shlPut -R _shlUnlock=_rtld__shlUnlock -R strcat=_rtld_strcat -R strchr=_rtld_strchr -R strrchr=_rtld_strrchr -R strcmp=_rtld_strcmp -R strcpy=_rtld_strcpy -R strlen=_rtld_strlen -R strncmp=_rtld_strncmp -R strncpy=_rtld_strncpy -R syscall=_rtld_syscall -R syscallErrorExit=_rtld_syscallErrorExit -R sysctl=_rtld_sysctl -R _write=_rtld_write -R syscall_long=_rtld_syscall_long -R vxFsGet=_rtld_vxFsGet -R vxFsSet=_rtld_vxFsSet -R getauxv=_rtld_getauxv -R mprotect=_rtld_mprotect -R bcopy=_rtld_bcopy -R bfill=_rtld_bfill  $@.tmp -o $@
	rm -f $@.tmp
	touch $(@:.o=.d)


################

objs : $(LIBOBJS)
 
# this is the end of the file 
