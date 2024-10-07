{config, pkgs, ...}: 
let
#nvim = builtins.fetchGit {
#  url = "https://github.com/danilbushkov/nvim-config.git";
#  ref = "refs/heads/main";
#};
  nvim = pkgs.fetchFromGitHub {
    owner = "danilbushkov";
    repo = "nvim-config";
    rev = "refs/heads/main";
  };
in {
  home = {

  username = "danil";
  homeDirectory = "/home/danil";
    stateVersion = "24.05";
  };

  programs.home-manager.enable = true;
  programs.git = {
  enable = true;
  userName = "danilbushkov";
  userEmail = "danil1357997@gmail.com";
  };

#  home.file."${config.xdg.configHome}/nvim" = {
#    source = "${nvim}";
#  };
  
}
