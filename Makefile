all: nixos-rebuild nvim


nixos-rebuild: 
	sudo nixos-rebuild switch --flake .

# home-rebuild: 
# 	home-manager switch --flake .

droid:
	nix-on-droid switch --flake ./nix-on-droid

nvim: 
	./get_nvim_config.sh
