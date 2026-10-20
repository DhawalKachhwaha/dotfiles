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
      "android-studio"
      "cursor"
      "obsidian"
      "discord"
      "discord-unwrapped"
      "antigravity"
      "google-chrome"
      "nvidia-kernel-modules"
      "antigravity-ide"
      "lmstudio"
      "cccl"
      "libnvvm"
      "cuda_crt"
    ];

  environment.systemPackages = with pkgs; [
    # system tools
    vim
    wget
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
    gh
    (llama-cpp.override {
      cudaSupport = true;
    })
    stable.antigravity-fhs

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
    mediawriter
    gnome-network-displays
    pywalfox-native

    # theming
    adw-gtk3
    nwg-look
    kdePackages.qt6ct
    xdg-desktop-portal-gtk
    gnome-keyring
    nautilus
    mpvpaper
    bibata-cursors

    # noctalia
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
