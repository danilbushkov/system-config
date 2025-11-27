{ pkgs, ... }: {

  imports = [ ./helix.nix ./starship.nix ./git.nix ./rust.nix ./zsh.nix ];

  programs = {
    gh.enable = true;
    zellij = {
      enable = true;
      enableZshIntegration = true;
      settings = { default_shell = "${pkgs.zsh}/bin/zsh"; };
    };
  };

  home.packages = (import ./packages pkgs);

}

