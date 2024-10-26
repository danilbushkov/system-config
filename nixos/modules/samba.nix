{
  services.samba = {
    enable = true;
    securityType = "user";
    openFirewall = true;
    shares = {
      global = {
        "server string" = "smbnix";
        "netbios name" = "smbnix";
        security = "user";
        "hosts allow" = "192.168.1. 127.0.0.1 localhost";
        "hosts deny" = "0.0.0.0/0";
        "guest account" = "danil";
        "map to guest" = "bad user";
      };
      "public" = {
        path = "/home/danil/backups";
        browseable = "yes";
        writable = "yes";
        "guest ok" = "yes";
        "create mask" = "0777";
        "directory mask" = "0777";
      };
    };
  };

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;
  };

  networking.firewall.enable = true;
  networking.firewall.allowPing = true;
}
