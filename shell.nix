{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = [
        pkgs.jekyll
        pkgs.rubyPackages.jekyll-feed
    ];
}

