{

  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      history.size = 10000;

      oh-my-zsh = {
        enable = true;
        plugins = [ "git" "docker" "docker-compose" ];
      };
    };
  };
}
