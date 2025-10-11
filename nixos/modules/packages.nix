{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [

    # compilers and interpreters
    gcc
    clang
    nodejs
    python3

    # tools
    clang-tools
    gnumake
    git
    # gh

    # archives
    zip
    unzip
    gnutar

    # libs
    zlib
    readline

    # editors
    vim

    # terminal
    #alacritty

    # wayland tools
    wl-clipboard

    # lsp

    # screenshot
    # grim
    # slurp

    # file converter
    pandoc

    # programs
    libreoffice
    zathura
    telegram-desktop
    firefox
    #texlive.combined.scheme-full
    #wofi
    #waybar
    #swww
    # discord
    # audio 
    pavucontrol
    # video
    guvcview

    # learning
    # anki-bin
    # anki

    # eclipses.eclipse-sdk

    home-manager

    xclip
    gparted

    chromium
    nomachine-client
  ];
}
