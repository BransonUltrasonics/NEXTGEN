
ifndef __HEADER_ACCESS_USB_XHCI_INCLUDED
__HEADER_ACCESS_USB_XHCI_INCLUDED = TRUE





__SUBSCRIBE_ACCESS_USB_XHCI = 



ifneq ($(wildcard $(VSB_USER_PROTECTED_INCLUDE_DIR)/USB_XHCI),)

ifneq ($(VSBL_NAME),)
ifeq ($(VSBL_NAME),$(filter $(VSBL_NAME), USB_XHCI))
VSBL_LUH += $(OPTION_INCLUDE_DIR)$(VSB_USER_PROTECTED_INCLUDE_DIR)/USB_XHCI
endif
endif

endif

endif

