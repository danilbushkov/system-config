{ pkgs, config, ... }: {
  wayland.windowManager.hyprland = import ./hyprland;

  services.hypridle = import ./hypridle;

  programs.hyprlock = import ./hyprlock config;

  home.packages = with pkgs; [
    wofi
    swww
    grim
    slurp
    brightnessctl
    wl-kbptr
    wlrctl
  ];
}
