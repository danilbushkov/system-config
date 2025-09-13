{ pkgs, config, ... }: {
  home = {
    packages = with pkgs; [

      cargo
      clippy
      rustfmt
      unstable.rustc
      rust-analyzer
    ];

    sessionPath = [ "${config.home.homeDirectory}/.cargo/bin" ];

  };
}
