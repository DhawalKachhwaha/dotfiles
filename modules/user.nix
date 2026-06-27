{
  inputs,
  config,
  pkgs,
  ...
}: {
  imports = [inputs.home-manager.nixosModules.default];

  home-manager = {
    extraSpecialArgs = {inherit inputs;};
    useGlobalPkgs = true;
    useUserPackages = true;
    users.${config.my.username} = ./home.nix;
    backupFileExtension = "backup";
  };

  users.users.${config.my.username} = {
    isNormalUser = true;
    description = config.my.fullName;
    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
      "wireshark"
    ];
  };
}
