
ifndef __HEADER_ACCESS_VXDBG_INCLUDED
__HEADER_ACCESS_VXDBG_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_VXDBG = 



ifneq ($(wildcard $(VSB_USER_PROTECTED_INCLUDE_DIR)/VXDBG),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), VXDBG))
VSBL_LUH += $(OPTION_INCLUDE_DIR)$(VSB_USER_PROTECTED_INCLUDE_DIR)/VXDBG
endif
endif

endif

endif

