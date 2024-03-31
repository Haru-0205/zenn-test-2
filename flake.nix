{
  description = "";

  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/nixpkgs-unstable"; };
  };

  outputs = { self, nixpkgs }:
      let
        inherit (nixpkgs.lib) optional;
        pkgs = import nixpkgs { inherit system; };
        tex = (pkgs.texlive.combine {
          inherit (pkgs.texlive) scheme-full;
          });
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
        tex
        ];
      };
    });
}


