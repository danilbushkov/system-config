{ pkgs, config, ... }:
let programs = import ./programs/default.nix config pkgs;
in {

  imports = [ ./wallpapers.nix ];

  programs = programs.configs;

  home = {
    username = "danil";
    homeDirectory = "/home/danil";
    stateVersion = "24.05";

    packages = import ./packages/default.nix pkgs
      ++ programs.dependencies; # with pkgs; [  anki ];
  };

}
