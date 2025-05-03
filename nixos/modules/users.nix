{
  users.users.danil = {
    isNormalUser = true;
    description = "danil";
    extraGroups =
      [ "networkmanager" "wheel" "audio" "bluetooth" "docker" "i2c" ];
    # packages = with pkgs; [];
  };
}
