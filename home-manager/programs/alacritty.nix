{ config, ... }: {

  alacritty = {
    enable = true;
    settings = {
      import = [ "${config.home.profileDirectory}/one_dark.toml" ];
    };
  };
}
