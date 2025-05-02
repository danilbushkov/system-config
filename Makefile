all: nixos-rebuild nvim


nixos-rebuild: 
	sudo nixos-rebuild switch --flake .

# home-rebuild: 
# 	home-manager switch --flake .

nvim: 
	./get_nvim_config.sh
