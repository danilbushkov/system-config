config: pkgs: {
  options = {
    enable = true;
    settings = {
      import = [ "${config.home.profileDirectory}/one_dark.toml" ];
    };
  };
  dependencies = with pkgs; [ alacritty-theme ];
}
