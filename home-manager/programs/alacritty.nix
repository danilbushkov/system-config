config: pkgs: {
  options = {
    enable = true;
    settings = {
      import = [ "${config.home.profileDirectory}/one_dark.toml" ];
      window = { opacity = 0.9; };
    };
  };
  dependencies = with pkgs; [ alacritty-theme ];
}
