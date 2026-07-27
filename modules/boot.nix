{...}: {
  boot = {
    kernel.sysctl."kernel.sysrq" = 1;
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    #kernelPackages = pkgs.linuxPackages_6_12;
    # initrd and kernelParams for GPU passthrough
    # initrd.kernelModules = [ "vfio_pci" "vfio" "vfio_iommu_type1" ];
    #kernelParams = [
    #];
  };
}
