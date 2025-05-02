{
  description = "system config";

  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/nixos-24.11"; };

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, ... }:
    let system = "x86_64-linux";
    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./nixos/hardware-configuration.nix
          ./nixos/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.danil = ./home-manager/home.nix;
          }

        ];
      };

      #      homeConfigurations.danil = home-manager.lib.homeManagerConfiguration {
      #        pkgs = nixpkgs.legacyPackages.${system};
      #        modules = [ ./home-manager/home.nix ];
      #      };

    };
}
