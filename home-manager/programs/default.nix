config: pkgs:
let alacritty = import ./alacritty.nix config pkgs;
in {
  configs = {

    git = import ./git.nix;
    starship = import ./starship.nix;
    alacritty = alacritty.config;

    home-manager.enable = true;

    bash.enable = true;
  };
  dependencies = alacritty.dependencies;
}
