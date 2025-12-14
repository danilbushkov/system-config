{ config, ... }: {

  home.file."${config.home.homeDirectory}/Pictures/wallpapers/bodyOfWater.jpg".source =
    ../wallpapers/bodyOfWater.jpg;

}
