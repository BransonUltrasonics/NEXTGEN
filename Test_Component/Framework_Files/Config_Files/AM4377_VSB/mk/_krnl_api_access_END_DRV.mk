
ifndef __HEADER_ACCESS_END_DRV_INCLUDED
__HEADER_ACCESS_END_DRV_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_END_DRV = 



ifneq ($(wildcard $(VSB_KERNEL_PROTECTED_INCLUDE_DIR)/END_DRV),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), END_DRV))
VSBL_LKH += $(OPTION_INCLUDE_DIR)$(VSB_KERNEL_PROTECTED_INCLUDE_DIR)/END_DRV
endif
endif

endif

endif

