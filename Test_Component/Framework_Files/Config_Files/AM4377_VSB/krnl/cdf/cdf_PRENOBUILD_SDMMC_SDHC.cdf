

/* this file is automatically generated */


Layer Layer::SDMMC_SDHC {
}




/*********************************
 Component INCLUDE_SDMMC_CFG 
 original object sources located at 
  "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbFslImxSdhcCtrl.cdf" 20 29  
  "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbFslSdhcCtrl.cdf" 21 30  
  "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbPciSdhcCtrl.cdf" 23 32  
  "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbZynqSdhcCtrl.cdf" 19 28  
**********************************/
Component	INCLUDE_SDMMC_CFG {
		LAYER += Layer::SDMMC_SDHC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbFslImxSdhcCtrl.cdf" 20 29 } { "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbFslSdhcCtrl.cdf" 21 30 } { "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbPciSdhcCtrl.cdf" 23 32 } { "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbZynqSdhcCtrl.cdf" 19 28 }
}


/*********************************
 Component DRV_IMX_SDHC_CTRL 
 original object sources located at 
  "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbFslImxSdhcCtrl.cdf" 30 41  
**********************************/
Component	DRV_IMX_SDHC_CTRL {
		LAYER += Layer::SDMMC_SDHC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbFslImxSdhcCtrl.cdf" 30 41 }
}


/*********************************
 Component DRV_FSL_SDHC_CTRL 
 original object sources located at 
  "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbFslSdhcCtrl.cdf" 32 40  
**********************************/
Component	DRV_FSL_SDHC_CTRL {
		LAYER += Layer::SDMMC_SDHC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbFslSdhcCtrl.cdf" 32 40 }
}


/*********************************
 Component DRV_PCI_SDHC_CTRL 
 original object sources located at 
  "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbPciSdhcCtrl.cdf" 33 41  
**********************************/
Component	DRV_PCI_SDHC_CTRL {
		LAYER += Layer::SDMMC_SDHC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbPciSdhcCtrl.cdf" 33 41 }
}


/*********************************
 Component DRV_ZYNQ_SDHC_CTRL 
 original object sources located at 
  "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbZynqSdhcCtrl.cdf" 30 38  
**********************************/
Component	DRV_ZYNQ_SDHC_CTRL {
		LAYER += Layer::SDMMC_SDHC
		LAYER_SOURCE		{ "$(WIND_BASE)/pkgs/connectivity/sdmmc-1.0.1.3/host/sdhc-1.0.3.0/cdf/40vxbZynqSdhcCtrl.cdf" 30 38 }
}


/*********************************
 Layer Layer::SDMMC_SDHC 
 original object sources located at 
  "C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_SDMMC_SDHC.tmp" 16 18  
**********************************/
Layer	Layer::SDMMC_SDHC {
		LAYER += Layer::SDMMC_SDHC
		LAYER_SOURCE		{ "C:/Users/builder5/Desktop/Paul/MyWorkspaces/NextGen/Integration/AM4377_VSB/krnl/cdf/cdf_PRENOBUILD_SDMMC_SDHC.tmp" 16 18 }
}