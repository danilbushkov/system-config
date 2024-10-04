{
  description = "system config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  };

  outputs = { self, nixpkgs }: {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ 

          /etc/nixos/hardware-configuration.nix
          ./configuration.nix
        ];
      };  
    
  };
}
