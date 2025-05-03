{ pkgs, ... }: {
  wayland.windowManager.hyprland = import ./hyprland;

  services.hypridle.enable = true;

  packages = with pkgs; [ wofi swww grim slurp brightnessctl wl-kbptr wlrctl ];
}
