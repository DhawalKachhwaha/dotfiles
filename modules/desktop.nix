{
  inputs,
  pkgs,
  ...
}: {
  imports = [inputs.umbriel.nixosModules.default];
  services.xserver.enable = true;

  services.displayManager.noctalia-greeter = {
    enable = true;
    passwordlessSyncUsers = ["dhawal"];
    settings = {
      cursor.size = 24;
      keyboard.layout = "us";
    };
    cursorTheme = {
      package = pkgs.bibata-cursors;
      name = "Bibata-Modern-Classic";
    };
  };

  xdg = {
    mime = {
      enable = true;

      defaultApplications = {
        "inode/directory" = [
          "org.gnome.Nautilus.desktop"
        ];
      };

      addedAssociations = {
        "inode/directory" = [
          "org.gnome.Nautilus.desktop"
        ];
      };
    };
    portal = {
      enable = true;
      xdgOpenUsePortal = true;
      extraPortals = [pkgs.xdg-desktop-portal-gtk];
      configPackages = [pkgs.xdg-desktop-portal-gtk];
      config.common.default = "gtk";
    };
  };

  programs.niri = {
    enable = true;
  };
  programs.umbriel.enable = true;
}
