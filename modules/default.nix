{...}: {
  imports = [
    ./options.nix
    ./nvidia.nix
    ./nix-settings.nix
    ./audio.nix
    ./virtualisation.nix
    ./security.nix
    ./boot.nix
    ./networking.nix
    ./gaming.nix
    ./locale.nix
    ./services.nix
    ./programs.nix
    ./nvf.nix
    ./user.nix
    ./packages.nix
    ./system.nix
    ./desktop.nix
  ];
}
