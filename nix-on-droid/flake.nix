{
  description = "system config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-on-droid = {
      url = "github:nix-community/nix-on-droid/release-24.05";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };
  };

  outputs = { nix-on-droid, nixpkgs, nixpkgs-unstable, ... }:
    let
      system = "aarch64-linux";
      overlay-unstable = final: prev: {
        unstable = nixpkgs-unstable.legacyPackages.${system};
      };
    in {

      nixOnDroidConfigurations.default =
        nix-on-droid.lib.nixOnDroidConfiguration {
          pkgs = import nixpkgs {
            inherit system;
            overlays = [ overlay-unstable ];
          };
          modules = [ ./nix-on-droid.nix ];
        };
    };
}

