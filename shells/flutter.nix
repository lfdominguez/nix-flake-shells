{ pkgs }:
with pkgs;
mkShell {
  buildInputs = [
    flutter
    cmake
  ];

  shellHook = ''
  '';
}
