{ pkgs }:
with pkgs;
mkShell {
  buildInputs = [
    platformio
  ];

  shellHook = ''
    # ...
  '';
}
