config: pkgs:
let alacritty = import ./alacritty.nix config pkgs;
in {
  options = {

    git = import ./git.nix;
    starship = import ./starship.nix;
    alacritty = alacritty.options;

    home-manager.enable = true;

    bash.enable = true;
  };
  dependencies = alacritty.dependencies;
}
