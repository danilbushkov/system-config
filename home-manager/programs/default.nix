config: pkgs:
let alacritty = import ./alacritty.nix config pkgs;
in {
  options = {

    git = import ./git.nix;
    gh = import ./gh.nix;
    starship = import ./starship.nix;
    alacritty = alacritty.options;
    waybar = import ./waybar.nix;

    home-manager.enable = true;

    bash.enable = true;
  };
  dependencies = alacritty.dependencies;
}
