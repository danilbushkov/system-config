{ config, pkgs, ... }: {
  home = {
    username = "danil";
    homeDirectory = "/home/danil";
    stateVersion = "24.05";

    packages = with pkgs; [ alacritty-theme ];
  };

  programs = {

    git = {
      enable = true;
      userName = "danilbushkov";
      userEmail = "danil1357997@gmail.com";
    };

    home-manager.enable = true;

    alacritty = {
      enable = true;
      settings = {
        import = [ "${config.home.profileDirectory}/one_dark.toml" ];
      };
    };

    bash.enable = true;

    starship = {
      enable = true;
      enableBashIntegration = true;
    };

  };

}
