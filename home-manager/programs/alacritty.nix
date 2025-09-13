pkgs: {
  enable = true;
  settings = {
    window = { opacity = 0.9; };
    keyboard.bindings = [{
      key = "LBracket";
      mods = "Control";
      chars = "\\u001b";
    }];
  };
  theme = "one_dark";

}
