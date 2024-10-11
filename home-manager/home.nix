{ pkgs, config, ... }: {

  imports = [ ./wallpapers.nix ];

  programs = import ./programs/default.nix { inherit config; };

  home = {
    username = "danil";
    homeDirectory = "/home/danil";
    stateVersion = "24.05";

    packages = with pkgs; [ alacritty-theme anki ];
  };

}
