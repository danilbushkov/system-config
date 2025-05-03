{
  enable = true;
  settings = {
    general = { ignore_dbus_inhibit = false; };

    listener = [
      {
        timeout = 300;
        on-timeout = "brightnessctl s 10% && ddcutil setvcp 10 10";
        on-resume = "brightnessctl s 30% && ddcutil setvcp 10 30";
      }
      {
        timeout = 600;
        on-timeout = "hyprlock";
      }
      {
        timeout = 900;
        on-timeout = "hyprctl dispatch dpms off";
        on-resume = "hyprctl dispatch dpms on";
      }
    ];
  };
}
