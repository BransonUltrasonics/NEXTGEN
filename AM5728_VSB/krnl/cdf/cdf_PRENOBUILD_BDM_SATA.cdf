

/* this file is automatically generated */


Layer Layer::BDM_SATA {
}




/*********************************
 Component INCLUDE_SATA_DISK_NAME_CFG 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 99 118  
**********************************/
Component	INCLUDE_SATA_DISK_NAME_CFG {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 99 118 }
}


/*********************************
 Component INCLUDE_DRV_STORAGE_AHCI 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 25 37  
**********************************/
Component	INCLUDE_DRV_STORAGE_AHCI {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 25 37 }
}


/*********************************
 Component PCI_DRV_STORAGE_AHCI 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 45 51  
**********************************/
Component	PCI_DRV_STORAGE_AHCI {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 45 51 }
}


/*********************************
 Component FDT_DRV_STORAGE_FSLAHCI 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 59 67  
**********************************/
Component	FDT_DRV_STORAGE_FSLAHCI {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 59 67 }
}


/*********************************
 Component DRV_STORAGE_ATA_HOST 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 76 87  
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 90 92  
**********************************/
Component	DRV_STORAGE_ATA_HOST {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 76 87 } { "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbAhciStorage.cdf" 90 92 }
}


/*********************************
 Component DRV_STORAGE_FSLSATA 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbFslSataStorage.cdf" 27 38  
**********************************/
Component	DRV_STORAGE_FSLSATA {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbFslSataStorage.cdf" 27 38 }
}


/*********************************
 Component FDT_DRV_STORAGE_FSLSATA 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbFslSataStorage.cdf" 40 48  
**********************************/
Component	FDT_DRV_STORAGE_FSLSATA {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbFslSataStorage.cdf" 40 48 }
}


/*********************************
 Component INCLUDE_DRV_STORAGE_INTEL_AHCI 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 22 38  
**********************************/
Component	INCLUDE_DRV_STORAGE_INTEL_AHCI {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 22 38 }
}


/*********************************
 Component INCLUDE_DRV_STORAGE_INTEL_AHCI_SHOW 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 40 51  
**********************************/
Component	INCLUDE_DRV_STORAGE_INTEL_AHCI_SHOW {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 40 51 }
}


/*********************************
 Component INCLUDE_DRV_STORAGE_INTEL_ICH 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelIchStorage.cdf" 15 28  
**********************************/
Component	INCLUDE_DRV_STORAGE_INTEL_ICH {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelIchStorage.cdf" 15 28 }
}


/*********************************
 Component INCLUDE_DRV_STORAGE_INTEL_ICH_SHOW 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelIchStorage.cdf" 36 46  
**********************************/
Component	INCLUDE_DRV_STORAGE_INTEL_ICH_SHOW {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelIchStorage.cdf" 36 46 }
}


/*********************************
 Component INCLUDE_DRV_STORAGE_PIIX 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbPiixStorage.cdf" 21 40  
**********************************/
Component	INCLUDE_DRV_STORAGE_PIIX {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbPiixStorage.cdf" 21 40 }
}


/*********************************
 Component DRV_STORAGE_SI31XX 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbSI31xxStorage.cdf" 41 49  
**********************************/
Component	DRV_STORAGE_SI31XX {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbSI31xxStorage.cdf" 41 49 }
}


/*********************************
 Layer Layer::BDM_SATA 
 original object sources located at 
  "C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_BDM_SATA.tmp" 19 21  
**********************************/
Layer	Layer::BDM_SATA {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "C:/ScriptGSX2_4/GSX2_4Stream/AM5728_VSB/krnl/cdf/cdf_PRENOBUILD_BDM_SATA.tmp" 19 21 }
}


/*********************************
 Parameter FS_NAMES_SATA_DISK0 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 17 34  
**********************************/
Parameter	FS_NAMES_SATA_DISK0 {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 17 34 }
}


/*********************************
 Parameter FS_NAMES_SATA_DISK1 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 36 53  
**********************************/
Parameter	FS_NAMES_SATA_DISK1 {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 36 53 }
}


/*********************************
 Parameter FS_NAMES_SATA_DISK2 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 55 66  
**********************************/
Parameter	FS_NAMES_SATA_DISK2 {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 55 66 }
}


/*********************************
 Parameter FS_NAMES_SATA_DISK3 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 67 78  
**********************************/
Parameter	FS_NAMES_SATA_DISK3 {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40ataDevNameConfig.cdf" 67 78 }
}


/*********************************
 Parameter AHCI_SEM_TIMEOUT_DEF 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 53 58  
**********************************/
Parameter	AHCI_SEM_TIMEOUT_DEF {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 53 58 }
}


/*********************************
 Parameter AHCI_WDG_TIMEOUT_DEF 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 60 65  
**********************************/
Parameter	AHCI_WDG_TIMEOUT_DEF {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 60 65 }
}


/*********************************
 Parameter AHCI_SVC_TASK_COUNT 
 original object sources located at 
  "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 67 72  
**********************************/
Parameter	AHCI_SVC_TASK_COUNT {
		LAYER += Layer::BDM_SATA
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/storage/bdm-1.0.1.3/sata-1.1.3.2/cdf/40vxbIntelAhciStorage.cdf" 67 72 }
}
