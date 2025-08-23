{
  enable = true;
  settings = {
    "$mod" = "SUPER";
    "$menu" = "wofi --show drun";
    "$terminal" = "alacritty";

    "exec-once" = [
      "swww-daemon && swww img ~/Pictures/wallpapers/bodyOfWater.jpg"
      "waybar"
    ];

    general = {
      border_size = 0;
      gaps_in = 5;
      gaps_out = 7;
    };

    decoration = {
      rounding = 10;
      active_opacity = 1;
      inactive_opacity = 0.8;
    };

    input = {
      kb_layout = "us, ru";
      kb_options = "grp:win_space_toggle,ctrl:nocaps";
    };

    monitor = [ "eDP-1, prefered, auto, 1.25" ];
    bind = import ./bind.nix;

    bindm = [
      # mouse movements
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];

  };
  extraConfig = import ./extra-config.nix;
}
