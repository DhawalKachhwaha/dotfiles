{pkgs, ...}: {
  programs = {
    firefox.enable = true;
    firejail.enable = true;
    kdeconnect.enable = true;
    xwayland.enable = true;
    direnv = {
      enable = true;
      nix-direnv.enable = true;
    };
    appimage.enable = true;
    git = {
      enable = true;

      config = {
        "credential.https://github.com".helper = "!gh auth git-credential";
        "credential.https://gist.github.com".helper = "!gh auth git-credential";
      };
    };

    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        libGL
        glibc
        glib
        fmodex
        libxcb
        zlib
        zstd
        stdenv.cc.cc
        curl
        openssl
        attr
        libssh
        bzip2
        libxml2
        acl
        libsodium
        util-linux
        xz
        systemd
      ];
    };
  };
}
