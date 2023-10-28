{ pkgs }:
with pkgs;
mkShell {
  buildInputs = [
    flutter
  ];

  shellHook = ''
  '';
}
