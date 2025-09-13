{
  description = "system config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

  };

  outputs = { nixpkgs, home-manager, nixpkgs-unstable, ... }:
    let
      system = "x86_64-linux";
      overlay-unstable = final: prev: {
        unstable = nixpkgs-unstable.legacyPackages.${prev.system};
      };
    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ({ config, pkgs, ... }: { nixpkgs.overlays = [ overlay-unstable ]; })

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
