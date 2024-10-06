{
  description = "system config";

  inputs = {
    nixpkgs = {
    	url = "github:NixOS/nixpkgs/nixos-24.05";
    };

    home-manager = {
	url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... } : {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ 

          ./nixos/hardware-configuration.nix
          ./nixos/configuration.nix
        ];
      };  
      homeConfigurations.danil = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
	#extraSpecialArgs = {inherit inputs outputs;};
	modules = [
	#  ./home-manager/home.nix
	];
      };
    
  };
}
