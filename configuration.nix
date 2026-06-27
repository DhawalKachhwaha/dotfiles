{
  inputs,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./host.nix
    ./modules
  ];

  system.stateVersion = "25.11";
}
