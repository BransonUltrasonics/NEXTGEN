
ifndef __HEADER_ACCESS_HASH_INCLUDED
__HEADER_ACCESS_HASH_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_HASH = 



ifneq ($(wildcard $(VSB_KERNEL_PROTECTED_INCLUDE_DIR)/HASH),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), HASH))
VSBL_LKH += $(OPTION_INCLUDE_DIR)$(VSB_KERNEL_PROTECTED_INCLUDE_DIR)/HASH
endif
endif

endif

endif
