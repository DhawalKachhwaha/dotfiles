{pkgs, ...}: {
  programs.virt-manager.enable = true;

  virtualisation = {
    spiceUSBRedirection.enable = true;

    libvirtd = {
      enable = true;
      qemu = {
        package = pkgs.qemu_kvm;
        swtpm.enable = true;
        # ovmf = {
        #   enable = true;
        #   packages = [(pkgs.OVMF.override {
        #     secureBoot = true;
        #     tpmSupport = true;
        #   }).fd];
        # };
      };
    };

    docker = {
      rootless = {
        enable = true;
        setSocketVariable = true;
      };
    };
  };

  environment.systemPackages = with pkgs; [
    virtio-win
    docker-compose
  ];
}
