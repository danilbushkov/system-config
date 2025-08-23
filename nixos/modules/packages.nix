{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [

    # compilers and interpreters
    gcc
    clang
    nodejs
    python3
    lua
    luarocks-nix

    # tools
    clang-tools
    gnumake
    ripgrep
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
    neovim
    vim

    # terminal
    #alacritty

    # terminal tools
    zellij
    starship

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
    krita
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
    #anki-bin
    #anki

    eclipses.eclipse-sdk

    nil
    nixfmt-classic

    home-manager

    xclip
    gparted

    chromium
    nomachine-client
  ];
}
