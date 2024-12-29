pkgs:
let
  options = {
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
        kb_options = "grp:win_space_toggle";
      };

      monitor = [ "eDP-1, prefered, auto, 1.25" ];
      bind = [
        "$mod, T, exec, $terminal"
        "$mod, C, killactive,"
        "$mod, Q, exit,"
        "$mod, E, exec, $fileManager"
        "$mod, V, togglefloating,"
        "$mod, R, exec, $menu"
        "$mod, P, pseudo," # dwindle
        "$mod, I, togglesplit," # dwindle

        #Move focus with mainMod + arrow keys
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"

        "$mod, h, movefocus, l"
        "$mod, l, movefocus, r"
        "$mod, k, movefocus, u"
        "$mod, j, movefocus, d"

        # Switch workspaces with mainMod + [0-9]
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        # Move active window to a workspace with mainMod + SHIFT + [0-9]
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"

        # Example special workspace (scratchpad)
        "$mod, S, togglespecialworkspace, magic"
        "$mod SHIFT, S, movetoworkspace, special:magic"

        # Scroll through existing workspaces with mainMod + scroll
        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"

        '', Print, exec, grim -g "$(slurp -d)" - | wl-copy''

        ", XF86MonBrightnessUp, exec, brightnessctl set +10%"
        ", XF86MonBrightnessDown, exec, brightnessctl set 10%-"

      ];

      bindm = [
        # mouse movements
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

    };
    extraConfig = ''

      # Cursor submap (similar to the Mouse mode in Sway)
      submap=cursor

      # Jump cursor to a position
      bind=,a,exec,hyprctl dispatch submap reset && wl-kbptr && hyprctl dispatch submap cursor

      # Cursor movement
      binde=,j,exec,wlrctl pointer move 0 10
      binde=,k,exec,wlrctl pointer move 0 -10
      binde=,l,exec,wlrctl pointer move 10 0
      binde=,h,exec,wlrctl pointer move -10 0

      binde=SHIFT,j,exec,wlrctl pointer move 0 50
      binde=SHIFT,k,exec,wlrctl pointer move 0 -50
      binde=SHIFT,l,exec,wlrctl pointer move 50 0
      binde=SHIFT,h,exec,wlrctl pointer move -50 0

      # Left button
      bind=,s,exec,wlrctl pointer click left
      # Middle button
      bind=,d,exec,wlrctl pointer click middle
      # Right button
      bind=,f,exec,wlrctl pointer click right

      # Scroll up and down
      binde=,e,exec,wlrctl pointer scroll 10 0
      binde=,r,exec,wlrctl pointer scroll -10 0

      # Scroll left and right
      binde=,t,exec,wlrctl pointer scroll 0 -10
      binde=,g,exec,wlrctl pointer scroll 0 10

      # Exit cursor submap
      # If you do not use cursor timeout or cursor:hide_on_key_press, you can delete its respective cals
      bind=,escape,exec,hyprctl keyword cursor:inactive_timeout 3; hyprctl keyword cursor:hide_on_key_press true; hyprctl dispatch submap reset 

      submap = reset

      # Entrypoint
      # If you do not use cursor timeout or cursor:hide_on_key_press, you can delete its respective cals
      bind=$mod,g,exec,hyprctl keyword cursor:inactive_timeout 0; hyprctl keyword cursor:hide_on_key_press false; hyprctl dispatch submap cursor

    '';
  };
  dependencies = with pkgs; [
    wofi
    swww
    grim
    slurp
    brightnessctl
    wl-kbptr
    wlrctl
  ];
in {
  inherit options;
  inherit dependencies;
}
