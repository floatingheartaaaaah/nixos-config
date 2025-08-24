{
  description = "Nix Flake configuration for hmmmaaah and hmmmuuuh";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    stable-nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-25.05";
   home-manager = {
    	url = "github:nix-community/home-manager";
	inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
	url = "github:danth/stylix";
	inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, stable-nixpkgs, home-manager , ... } @ inputs:
  let
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
    stable-pkgs = stable-nixpkgs.legacyPackages.x86_64-linux;
    dotsDir = "/etc/nixos/dots/";
  in {
    nixosConfigurations.hmmmuuuh = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs dotsDir; };
      modules = [
        ./hosts/hmmmuuuh
      ];
    };

    homeConfigurations."kali" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
	specialArgs = { inherit inputs dotsDir; };
        modules = [ ./hosts/kali ];

      };

  };
}
