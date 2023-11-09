{ pkgs }:
with pkgs;
mkShell {
  buildInputs = [
    flutter
    cmake
    ninja
    gcc
    pkg-config
    libsecret
  ];

  shellHook = ''
  '';
}
