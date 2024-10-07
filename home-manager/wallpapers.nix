{ config, ... }: {

  home.file."${config.home.homeDirectory}/Pictures/wallpapers/bodyOfWater.jpg".source =
    builtins.fetchurl {
      url =
        "https://unsplash.com/photos/iB7gjOsLrEQ/download?ixid=M3wxMjA3fDB8MXxhbGx8NDF8fHx8fHx8fDE3MjgzMTcwNzd8&force=true";
      sha256 = "1w0ihvj4v4lvbz7n1a15advn25xkyrs6q5m60xi68h7s0wvbx5yh";
      name = "bodyOfWater";
    };

}
