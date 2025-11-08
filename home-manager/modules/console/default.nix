{ pkgs, ... }: {

  imports = [ ./helix.nix ./starship.nix ./git.nix ./rust.nix ./zsh.nix ];

  programs = {
    gh.enable = true;
    zellij.enable = true;
  };

  home.packages = (import ./packages pkgs);

}

