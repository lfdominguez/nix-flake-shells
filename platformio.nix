{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    platformio
  ];

  shellHook = ''
    # ...
  '';
}
