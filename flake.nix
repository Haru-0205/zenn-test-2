{
  description = "";

  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/nixpkgs-unstable"; };
    flake-utils = { url = "github:numtide/flake-utils"; };
  };

  outputs = { self, nixpkgs,flake-utils }:
  flake-utils.lib.eachDefaultSystem (system:
      let
        inherit (nixpkgs.lib) optional;
        pkgs = import nixpkgs { inherit system; };
      in
       {
        devShell = pkgs.mkShell {
        buildInputs = [
        pkgs.neovim
        pkgs.mpv
        pkgs.timidity
        pkgs.soundfont-fluid
        pkgs.fluidsynth
        pkgs.ffmpeg
        pkgs.git
        pkgs.deno
        pkgs.lilypond
        pkgs.alsa-oss
        pkgs.alsa-lib
        pkgs.ripgrep
        pkgs.fd
        pkgs.okular
        pkgs.noto-fonts
        pkgs.noto-fonts-extra
        pkgs.noto-fonts-cjk
        pkgs.noto-fonts-emoji
	pkgs.texliveFull
        ];
      };
    });
}


