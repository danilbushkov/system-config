{
  programs.helix = {
    enable = true;
    settings = {
      theme = "onedark";
      editor = {
        whitespace = {
          render = {
            space = "all";
            tab = "all";
          };
          characters = { };
        };
        cursor-shape = {
          insert = "bar";
          normal = "block";
        };
      };
    };
    languages = {

      language = [
        {
          name = "rust";
          auto-format = true;
        }
        {
          name = "go";
          auto-format = true;
        }
      ];
    };
  };
}
