{...}: {
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  hardware.bluetooth.enable = true;

  services = {
    tailscale.enable = true;
  };
}
