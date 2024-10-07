{
  users.users.danil = {
    isNormalUser = true;
    description = "danil";
    extraGroups = [ "networkmanager" "wheel" "audio" "bluetooth" "docker" ];
    # packages = with pkgs; [];
  };
}
