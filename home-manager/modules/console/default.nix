{ pkgs, ... }: {

  imports = [ ./helix.nix ./starship.nix ./git.nix ./rust.nix ];

  programs = {
    bash = {
      enable = true;
      initExtra = ''
        if [ -f ~/.profile ]; then
          . ~/.profile
        fi
      '';
    };
    gh.enable = true;
    zellij.enable = true;
  };

  home.packages = (import ./packages pkgs);

}

