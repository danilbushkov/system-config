{ pkgs, config, ... }: {
  home = {
    packages = with pkgs; [ rustup ];

    sessionPath = [ "${config.home.homeDirectory}/.cargo/bin" ];

  };
}
