{config, ...}: {
  networking = {
    hostName = config.my.hostName;
    networkmanager.enable = true;
  };

  hardware.bluetooth.enable = true;

  services = {
    tailscale.enable = true;
  };
}
