{
  description = "";

  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/nixpkgs-unstable"; };
    flake-utils = { url = "github:numtide/flake-utils"; };
    home-manager = {
     url = "github:nix-community/home-manager";
     inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, home-manager }:
    flake-utils.lib.eachDefaultSystem ( system:
      let
        inherit (nixpkgs.lib) optional;
	pkgs = import nixpkgs { inherit system; };
      in
      {
        homeConfigurations = {
	   "nixos@nixos" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."x86_64-linux"; # WSL
          modules = [ ./home/WSL.nix ];
          };
	};
        devShell = pkgs.mkShell {
	  buildInputs = [
	    pkgs.neovim
	    pkgs.mpv
	    pkgs.home-manager
	    pkgs.timidity
	    pkgs.soundfont-fluid
	    pkgs.fluidsynth
	    pkgs.ffmpeg
	    pkgs.git
	  ];
	};
      });
}
