{pkgs, ...}: {
  programs.steam = {
    enable = true;
    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];
    # remotePlay.openFirewall = true;
    # dedicatedServer.openFirewall = true;
  };

  environment.systemPackages = with pkgs; [
    heroic # GOG/Epic launcher
    prismlauncher # Minecraft launcher
  ];
}
