{ pkgs, ... }: {
  fonts.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "Noto" ]; })
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-emoji
  ];
}
