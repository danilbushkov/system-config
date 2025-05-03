config: {
  enable = true;
  settings = {
    general = {
      grace = 1;
      hide_cursor = true;
    };

    background = {
      monitor = "";
      path = "${config.home.homeDirectory}/Pictures/wallpapers/bodyOfWater.jpg";
      brightness = 0.3;
      blur_size = 2;
      blur_passes = 4;
    };

    input-field = [{
      monitor = "";
      size = "200, 50";
      hide_input = false;
      outline_thickness = 1;
      placeholder_text = "Password...";
    }];
  };
}
