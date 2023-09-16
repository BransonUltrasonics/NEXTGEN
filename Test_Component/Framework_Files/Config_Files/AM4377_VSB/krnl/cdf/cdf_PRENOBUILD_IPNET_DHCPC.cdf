

/* this file is automatically generated */


Layer Layer::IPNET_DHCPC {
}




/*********************************
 Component INCLUDE_IPDHCPC 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 41 72  
**********************************/
Component	INCLUDE_IPDHCPC {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 41 72 }
}


/*********************************
 Folder FOLDER_DHCP 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 27 33  
**********************************/
Folder	FOLDER_DHCP {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 27 33 }
}


/*********************************
 Layer Layer::IPNET_DHCPC 
 original object sources located at 
  "C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_DHCPC.tmp" 13 15  
**********************************/
Layer	Layer::IPNET_DHCPC {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_IPNET_DHCPC.tmp" 13 15 }
}


/*********************************
 Parameter DHCPC_CLIENT_PORT 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 77 83  
**********************************/
Parameter	DHCPC_CLIENT_PORT {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 77 83 }
}


/*********************************
 Parameter DHCPC_SERVER_PORT 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 85 91  
**********************************/
Parameter	DHCPC_SERVER_PORT {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 85 91 }
}


/*********************************
 Parameter DHCPC_REQ_OPTS 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 215 222  
**********************************/
Parameter	DHCPC_REQ_OPTS {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 215 222 }
}


/*********************************
 Parameter DHCPC_CLIENT_ID 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 224 232  
**********************************/
Parameter	DHCPC_CLIENT_ID {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 224 232 }
}


/*********************************
 Parameter DHCPC_CLIENT_UUID 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 234 242  
**********************************/
Parameter	DHCPC_CLIENT_UUID {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 234 242 }
}


/*********************************
 Parameter DHCPC_RFC2131_INIT_DELAY 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 93 99  
**********************************/
Parameter	DHCPC_RFC2131_INIT_DELAY {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 93 99 }
}


/*********************************
 Parameter DHCPC_RFC2131_EXP_BACKOFF 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 101 107  
**********************************/
Parameter	DHCPC_RFC2131_EXP_BACKOFF {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 101 107 }
}


/*********************************
 Parameter DHCPC_DISCOVER_RETRIES 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 109 114  
**********************************/
Parameter	DHCPC_DISCOVER_RETRIES {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 109 114 }
}


/*********************************
 Parameter DHCPC_OFFER_TIMEOUT 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 116 121  
**********************************/
Parameter	DHCPC_OFFER_TIMEOUT {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 116 121 }
}


/*********************************
 Parameter DHCPC_IF_REQ_OPTS_LIST 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 193 202  
**********************************/
Parameter	DHCPC_IF_REQ_OPTS_LIST {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 193 202 }
}


/*********************************
 Parameter DHCPC_IF_CLIENT_ID_LIST 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 204 213  
**********************************/
Parameter	DHCPC_IF_CLIENT_ID_LIST {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 204 213 }
}


/*********************************
 Parameter DHCPC_INSTALL_OPTION_CALLBACK_HOOK 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 123 131  
**********************************/
Parameter	DHCPC_INSTALL_OPTION_CALLBACK_HOOK {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 123 131 }
}


/*********************************
 Parameter DHCPC_INSTALL_REPLY_CALLBACK_HOOK 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 147 155  
**********************************/
Parameter	DHCPC_INSTALL_REPLY_CALLBACK_HOOK {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 147 155 }
}


/*********************************
 Parameter DHCPC_OPTION_CALLBACK_HOOK 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 133 145  
**********************************/
Parameter	DHCPC_OPTION_CALLBACK_HOOK {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 133 145 }
}


/*********************************
 Parameter DHCPC_REPLY_CALLBACK_HOOK 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 157 166  
**********************************/
Parameter	DHCPC_REPLY_CALLBACK_HOOK {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 157 166 }
}


/*********************************
 Parameter DHCPC_BOOTP_MODE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 168 175  
**********************************/
Parameter	DHCPC_BOOTP_MODE {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 168 175 }
}


/*********************************
 Parameter DHCPC_BOOT_FILENAME 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 177 183  
**********************************/
Parameter	DHCPC_BOOT_FILENAME {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 177 183 }
}


/*********************************
 Parameter DHCPC_SERVER_HOSTNAME 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 185 191  
**********************************/
Parameter	DHCPC_SERVER_HOSTNAME {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 185 191 }
}


/*********************************
 Parameter DHCPC_OPTION_HOSTNAME 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 244 249  
**********************************/
Parameter	DHCPC_OPTION_HOSTNAME {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 244 249 }
}


/*********************************
 Parameter DHCPC_OPTION_NETMASK 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 251 256  
**********************************/
Parameter	DHCPC_OPTION_NETMASK {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 251 256 }
}


/*********************************
 Parameter DHCPC_OPTION_VENDOR_CLASS_ID 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 268 273  
**********************************/
Parameter	DHCPC_OPTION_VENDOR_CLASS_ID {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 268 273 }
}


/*********************************
 Parameter DHCPC_OPTION_IPADDRESS_LEASE_TIME 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 258 266  
**********************************/
Parameter	DHCPC_OPTION_IPADDRESS_LEASE_TIME {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 258 266 }
}


/*********************************
 Parameter DHCPC_OPTION_VI_VENDOR_CLASS 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 275 283  
**********************************/
Parameter	DHCPC_OPTION_VI_VENDOR_CLASS {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 275 283 }
}


/*********************************
 Parameter DHCPC_REMOVE_EXISTING_ADDRESSES 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 307 314  
**********************************/
Parameter	DHCPC_REMOVE_EXISTING_ADDRESSES {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 307 314 }
}


/*********************************
 Parameter DHCPC_REMOVE_LEASED_ADDRESS 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 316 323  
**********************************/
Parameter	DHCPC_REMOVE_LEASED_ADDRESS {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 316 323 }
}


/*********************************
 Parameter DHCPC_AUTO_DISABLE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 325 332  
**********************************/
Parameter	DHCPC_AUTO_DISABLE {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 325 332 }
}


/*********************************
 Parameter DHCPC_TTL 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 334 340  
**********************************/
Parameter	DHCPC_TTL {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 334 340 }
}


/*********************************
 Parameter DHCPC_OPTION_MAX_MESSAGE_SIZE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 285 291  
**********************************/
Parameter	DHCPC_OPTION_MAX_MESSAGE_SIZE {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 285 291 }
}


/*********************************
 Parameter DHCPC_OPTION_USER_SPECIFIED 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 293 305  
**********************************/
Parameter	DHCPC_OPTION_USER_SPECIFIED {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 293 305 }
}


/*********************************
 Parameter DHCPC_IF_INFORMATION_ONLY_LIST 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 342 348  
**********************************/
Parameter	DHCPC_IF_INFORMATION_ONLY_LIST {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 342 348 }
}


/*********************************
 Parameter DHCPC_FLAGS_BIT_BROADCAST 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 350 355  
**********************************/
Parameter	DHCPC_FLAGS_BIT_BROADCAST {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 350 355 }
}


/*********************************
 Parameter DHCPC_TASK_PRIORITY 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 357 365  
**********************************/
Parameter	DHCPC_TASK_PRIORITY {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 357 365 }
}


/*********************************
 Parameter DHCPC_DEBUG_ENABLE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 367 373  
**********************************/
Parameter	DHCPC_DEBUG_ENABLE {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 367 373 }
}


/*********************************
 Parameter DHCPC_CFGFILE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 374 382  
**********************************/
Parameter	DHCPC_CFGFILE {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 374 382 }
}


/*********************************
 SubProject DHCPC_CFGFILE_EXAMPLE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 35 39  
**********************************/
SubProject	DHCPC_CFGFILE_EXAMPLE {
		LAYER += Layer::IPNET_DHCPC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/net/ipnet-1.1.1.2/app/dhcpc-1.0.1.8/cdf/00comp_ipnet_appl_dhcp.cdf" 35 39 }
}