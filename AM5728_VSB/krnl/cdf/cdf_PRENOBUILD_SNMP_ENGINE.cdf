

/* this file is automatically generated */


Layer Layer::SNMP_ENGINE {
}




/*********************************
 Component INCLUDE_WINDMANAGE_SNMP_CORE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 88 105  
**********************************/
Component	INCLUDE_WINDMANAGE_SNMP_CORE {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 88 105 }
}


/*********************************
 Component INCLUDE_WINDMANAGE_SNMP_V3CORE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_v3.cdf" 45 77  
**********************************/
Component	INCLUDE_WINDMANAGE_SNMP_V3CORE {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_v3.cdf" 45 77 }
}


/*********************************
 Component INCLUDE_SNMP_STATIC_INIT 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 74 80  
**********************************/
Component	INCLUDE_SNMP_STATIC_INIT {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 74 80 }
}


/*********************************
 Component INCLUDE_SNMP_UDP_TRANSPORT 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 81 86  
**********************************/
Component	INCLUDE_SNMP_UDP_TRANSPORT {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 81 86 }
}


/*********************************
 Component INCLUDE_WM_SNMP_INIT 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 145 151  
**********************************/
Component	INCLUDE_WM_SNMP_INIT {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 145 151 }
}


/*********************************
 Component INCLUDE_SNMP_MANAGER 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 153 160  
**********************************/
Component	INCLUDE_SNMP_MANAGER {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 153 160 }
}


/*********************************
 Folder FOLDER_SNMPD 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00folder_windmanage_snmp.cdf" 30 44  
**********************************/
Folder	FOLDER_SNMPD {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00folder_windmanage_snmp.cdf" 30 44 }
}


/*********************************
 Layer Layer::SNMP_ENGINE 
 original object sources located at 
  "C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_SNMP_ENGINE.tmp" 16 18  
**********************************/
Layer	Layer::SNMP_ENGINE {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_SNMP_ENGINE.tmp" 16 18 }
}


/*********************************
 Parameter SNMP_USE_M2LIB 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 107 112  
**********************************/
Parameter	SNMP_USE_M2LIB {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 107 112 }
}


/*********************************
 Parameter SNMP_DEBUG_ENABLE 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 114 119  
**********************************/
Parameter	SNMP_DEBUG_ENABLE {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 114 119 }
}


/*********************************
 Parameter SNMP_GET_COMMUNITY_1 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 121 126  
**********************************/
Parameter	SNMP_GET_COMMUNITY_1 {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 121 126 }
}


/*********************************
 Parameter SNMP_GET_COMMUNITY_2 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 128 133  
**********************************/
Parameter	SNMP_GET_COMMUNITY_2 {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 128 133 }
}


/*********************************
 Parameter SNMP_GET_COMMUNITY_3 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 134 139  
**********************************/
Parameter	SNMP_GET_COMMUNITY_3 {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 134 139 }
}


/*********************************
 Parameter SNMP_GET_COMMUNITY_4 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 140 145  
**********************************/
Parameter	SNMP_GET_COMMUNITY_4 {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 140 145 }
}


/*********************************
 Parameter SNMP_GET_COMMUNITY_5 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 146 151  
**********************************/
Parameter	SNMP_GET_COMMUNITY_5 {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 146 151 }
}


/*********************************
 Parameter SNMP_SET_COMMUNITY_1 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 152 157  
**********************************/
Parameter	SNMP_SET_COMMUNITY_1 {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 152 157 }
}


/*********************************
 Parameter SNMP_SET_COMMUNITY_2 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 158 163  
**********************************/
Parameter	SNMP_SET_COMMUNITY_2 {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00comp_envoy_snmp_core.cdf" 158 163 }
}


/*********************************
 Selection SELECT_SNMP_INIT 
 original object sources located at 
  "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 47 57  
**********************************/
Selection	SELECT_SNMP_INIT {
		LAYER += Layer::SNMP_ENGINE
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/app/snmp-1.0.0.3/engine-1.0.1.7/cdf/00ssi_snmp.cdf" 47 57 }
}
