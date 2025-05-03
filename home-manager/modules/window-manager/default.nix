{ pkgs, ... }: {
  wayland.windowManager.hyprland = import ./hyprland;

  services.hypridle = import ./hypridle;

  programs.hyprlock = import ./hyprlock;

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
