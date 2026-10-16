{pkgs, ...}: {
  programs = {
    firefox.enable = true;
    firejail.enable = true;
    kdeconnect.enable = true;
    xwayland.enable = true;
    direnv = {
      enable = true;
      nix-direnv.enable = true;
      enableZshIntegration = true;
    };
    appimage.enable = true;
    git = {
      enable = true;

      config = {
        "credential.https://github.com".helper = "!gh auth git-credential";
        "credential.https://gist.github.com".helper = "!gh auth git-credential";
      };
    };
    zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;
    };
    starship = {
      enable = true;
      enableZshIntegration = true;
    };
    nix-index = {
      enable = true;
      enableBashIntegration = true;
    };

    nix-ld = {
      enable = true;

      libraries =
        pkgs.steam-run.args.multiPkgs pkgs
        ++ (with pkgs; [
          glib
        ]);
    };
  };
}
