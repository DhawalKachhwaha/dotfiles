{ config, pkgs, home-manager, niri, quickshell, noctalia, ... }:

{
    imports = [
        #./noctalia.nix
        #./dms.nix
    	#home-manager.nixosModules.home-manager
	#niri.homeModules.niri
        #noctalia.homeModules.default
    ];

    home.stateVersion = "25.11";
}
