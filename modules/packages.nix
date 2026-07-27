{
  pkgs,
  lib,
  inputs,
  ...
}: {
  nixpkgs.config.allowUnfreePredicate = pkg:
    builtins.elem (lib.getName pkg) [
      "nvtopPackages.full"
      "nvidia-x11"
      "davinci-resolve"
      "burpsuite"
      "steam"
      "steam-unwrapped"
      "fmod"
      "nvidia-settings"
      "cuda-merged"
      "cuda_cuobjdump"
      "cuda_gdb"
      "cuda_nvcc"
      "cuda_nvdisasm"
      "cuda_nvprune"
      "cuda_cccl"
      "cuda_cudart"
      "cuda_cupti"
      "cuda_cuxxfilt"
      "cuda_nvml_dev"
      "cuda_nvrtc"
      "cuda_nvtx"
      "cuda_profiler_api"
      "cuda_sanitizer_api"
      "libcublas"
      "libcufft"
      "libcurand"
      "libcusolver"
      "libnvjitlink"
      "libcusparse"
      "libnpp"
      "cisco-packet-tracer"
      "android-studio"
      "cursor"
      "obsidian"
      "CiscoPacketTracer_900_Ubuntu_64bit.deb"
      "discord"
      "antigravity"
      "google-chrome"
      "nvidia-kernel-modules"
      "antigravity-ide"
    ];

  environment.systemPackages = with pkgs; [
    # system tools
    vim
    wget
    git
    tmux
    bat
    htop
    unzip
    bubblewrap
    zenity
    alejandra
    gparted
    lenovo-legion

    # system monitoring
    nvtopPackages.nvidia
    nvitop

    # terminals
    ghostty

    # wayland utilities
    cliphist
    wl-clipboard
    wtype
    xwayland-satellite

    # media
    obs-studio
    audacity
    ffmpeg
    foliate
    celluloid
    loupe
    mpv

    # graphics / design
    gimp
    blender
    stable.davinci-resolve

    # development
    uv
    vscodium
    zed-editor
    stable.aider-chat-full
    stable.ollama-cuda
    gh

    # networking / vpn
    proton-vpn
    v2rayn

    # misc
    chromium
    google-chrome
    qbittorrent
    obsidian
    discord
    onlyoffice-desktopeditors
    cisco-packet-tracer_9
    mediawriter
    gnome-network-displays
    pywalfox-native

    # theming
    adw-gtk3
    nwg-look
    kdePackages.qt6ct
    simp1e-cursors
    xdg-desktop-portal-gtk
    gnome-keyring
    nautilus
    mpvpaper

    # noctalia
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
