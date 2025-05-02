pkgs: {
  enable = true;
  settings = {
    general.import = [ pkgs.alacritty-theme.one_dark ];
    window = { opacity = 0.9; };
  };
}
