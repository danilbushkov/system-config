{ pkgs, ... }: {

  imports = [ ./helix.nix ./starship.nix ./git.nix ];

  programs = {
    bash.enable = true;
    gh.enable = true;
    zellij.enable = true;
  };

  home.packages = (import ./packages pkgs);

}

