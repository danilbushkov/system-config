{pkgs, ...}:{
  # networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
      insertNameservers = [ "8.8.8.8" "1.1.1.1" ];
      enableStrongSwan = true;
      packages = with pkgs; [
         networkmanager-l2tp
         networkmanager_strongswan
      ];
    };

  };
  services.xl2tpd.enable = true;
  services.strongswan.enable = true;
  environment.etc."strongswan.conf".text = "";
}
