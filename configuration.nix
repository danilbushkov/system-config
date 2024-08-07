# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      /etc/nixos/hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;


  swapDevices = [ {
    device = "/var/lib/swapfile";
    size = 2*1024;
  } ];


  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;


  # Set your time zone.
  time.timeZone = "Europe/Moscow";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.danil = {
    isNormalUser = true;
    description = "danil";
    extraGroups = [ "networkmanager" "wheel" "audio" "bluetooth" "docker"];
    packages = with pkgs; [];
  };

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    
    # compilers and interpreters
    gcc
    clang
    nodejs

    # tools
    clang-tools
    gnumake
    ripgrep
    git
    gh

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
    alacritty  

    # terminal tools
    zellij
    starship

    # wayland tools
    wl-clipboard

    # lsp
    lua-language-server
    texlab

    # screenshot
    grim
    slurp

    # file converter
    pandoc

    # programs
    libreoffice
    krita
    zathura
    telegram-desktop
    firefox
    texlive.combined.scheme-full
    wofi
    waybar
    swww
    # audio 
    pavucontrol
    # video
    guvcview

  ];
  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];


  fonts.packages = with pkgs; [
    font-awesome
    (nerdfonts.override { fonts = [ "Noto" "NerdFontsSymbolsOnly"]; })
  ];


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
  programs = {
    hyprland= {
      enable = true;
      xwayland.enable = true;
    };
    thunar.enable = true;
    
  };


  virtualisation.docker.enable = true;


  hardware.pulseaudio.enable = true;
  nixpkgs.config.pulseaudio = true;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;
  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?

}
