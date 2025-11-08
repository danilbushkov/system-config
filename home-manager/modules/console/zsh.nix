{

  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      history.size = 10000;

      oh-my-zsh = {
        enable = true;
        plugins = [ "git" ];
      };
      #  initExtra = ''
      #    if [ -f ~/.profile ]; then
      #      . ~/.profile
      #    fi
      #  '';

    };
  };
}
