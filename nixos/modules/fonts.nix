{ pkgs, ... }: {
  fonts.packages = with pkgs; [
    nerd-fonts.noto
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
  ];
}
