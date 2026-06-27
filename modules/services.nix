{config, ...}: {
  services = {
    printing.enable = true;
    flatpak.enable = true;
    power-profiles-daemon.enable = true;
    upower.enable = true;

    syncthing = {
      enable = true;
      user = config.my.username;
      dataDir = "/home/${config.my.username}/brain/obsidian/";
      configDir = "/home/${config.my.username}/.config/syncthing";
    };
  };
}
