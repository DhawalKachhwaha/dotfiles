{...}: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    # kernelPackages = pkgs.linuxPackages;
    # initrd and kernelParams for GPU passthrough
    # initrd.kernelModules = [ "vfio_pci" "vfio" "vfio_iommu_type1" ];
    # kernelParams = [ "intel_iommu=on" "vfio-pci.ids=..." ];
  };
}
