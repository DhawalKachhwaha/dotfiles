{
  inputs,
  pkgs,
  ...
}: let
  sddm-astronaut = pkgs.sddm-astronaut.override {
    embeddedTheme = "jake_the_dog";
    themeConfig = {
      Background = "/var/lib/sddm/wallpaper";
    };
  };
in {
  imports = [inputs.umbriel.nixosModules.default];
  services.xserver.enable = true;

  environment.systemPackages = [sddm-astronaut];

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    package = pkgs.kdePackages.sddm;
    theme = "sddm-astronaut-theme";
    extraPackages = with pkgs; [
      kdePackages.qtmultimedia
    ];
  };

  xdg.portal = {
    enable = true;
    xdgOpenUsePortal = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
    configPackages = [pkgs.xdg-desktop-portal-gtk];
    config.common.default = "gtk";
  };

  programs.niri = {
    enable = true;
  };

  programs.umbriel.enable = true;
}
