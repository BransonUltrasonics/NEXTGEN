
ifndef __HEADER_ACCESS_VXBUS_SUBSYSTEM_INCLUDED
__HEADER_ACCESS_VXBUS_SUBSYSTEM_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_VXBUS_SUBSYSTEM = 



ifneq ($(wildcard $(VSB_USER_PROTECTED_INCLUDE_DIR)/VXBUS_SUBSYSTEM),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), VXBUS_SUBSYSTEM))
VSBL_LUH += $(OPTION_INCLUDE_DIR)$(VSB_USER_PROTECTED_INCLUDE_DIR)/VXBUS_SUBSYSTEM
endif
endif

endif

endif

