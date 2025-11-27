{ pkgs, nixpkgs-unstable, ... }:

{
  # Simply install just the packages
  environment.packages = with pkgs; [
    # User-facing stuff that you really really want to have
    vim # or some other editor, e.g. nano or neovim
    git
    gnumake
    neovim
    lua
    clang
    curl
    wget
    gnutar
    nodejs
    # Some common stuff that people expect to have
    #procps
    #killall
    #diffutils
    #findutils
    #utillinux
    #tzdata
    #hostname
    #man
    #gnugrep
    #gnupg
    #gnused
    #gnutar
    #bzip2
    gzip
    #xz
    #zip
    unzip
  ];

  user.shell = "${pkgs.zsh}/bin/zsh";
  # Backup etc files instead of failing to activate generation if a file already exists in /etc
  environment.etcBackupExtension = ".bak";

  # Read the changelog before changing this value
  system.stateVersion = "24.05";

  # Set up nix for flakes
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  terminal = {

    font =
      "${pkgs.nerd-fonts.noto}/share/fonts/truetype/NerdFonts/Noto/NotoMonoNerdFontMono-Regular.ttf";

    colors = {
      background = "#282c34";
      foreground = "#abb2bf";
      cursor = "#a6a28c";

      # normal
      color0 = "#282c34";
      color1 = "#e06c75";
      color2 = "#98c379";
      color3 = "#e5c07b";
      color4 = "#61afef";
      color5 = "#c678dd";
      color6 = "#56b6c2";
      color7 = "#abb2bf";

      # bright
      color8 = "#5c6370";
      color9 = "#e06c75";
      color10 = "#98c379";
      color11 = "#e5c07b";
      color12 = "#61afef";
      color13 = "#c678dd";
      color14 = "#56c6c2";
      color15 = "#ffffff";
    };
  };

  home-manager = {
    useGlobalPkgs = true;
    config = { pkgs, ... }: {

      home.enableNixpkgsReleaseCheck = false;
      imports = [ ../home-manager/modules/console ];
      # Read home-manager changelog before changing this value
      home.stateVersion = "25.05";

      # fonts.fontconfig.enable = true;
      # home.packages = with pkgs; [ nerd-fonts.noto ];

      # insert home-manager config
    };
  };

  #time.timeZone = "Europe/Berlin";
}
