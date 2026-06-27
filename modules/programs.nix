{pkgs, ...}: {
  programs = {
    firefox.enable = true;
    firejail.enable = true;
    kdeconnect.enable = true;
    xwayland.enable = true;

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
