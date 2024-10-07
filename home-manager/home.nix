{ config, pkgs, ... }: {
  home = {
    username = "danil";
    homeDirectory = "/home/danil";
    stateVersion = "24.05";

    packages = with pkgs; [ alacritty-theme ];
  };

  programs = {
    imports =
      [ ./programs/git.nix ./programs/starship.nix ./programs/alacritty.nix ];

    home-manager.enable = true;

    bash.enable = true;

  };

}
