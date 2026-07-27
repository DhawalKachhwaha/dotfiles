{config, ...}: {
  networking = {
    hostName = config.my.hostName;
    networkmanager.enable = true;
  };

  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services = {
    tailscale.enable = true;
  };
}
