
ifndef __HEADER_ACCESS_FS_HRFS_INCLUDED
__HEADER_ACCESS_FS_HRFS_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_FS_HRFS = 



ifneq ($(wildcard $(VSB_USER_PROTECTED_INCLUDE_DIR)/FS_HRFS),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), FS_HRFS))
VSBL_LUH += $(OPTION_INCLUDE_DIR)$(VSB_USER_PROTECTED_INCLUDE_DIR)/FS_HRFS
endif
endif

endif

endif
