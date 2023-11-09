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
    pcre2
    gtk3
    util-linux
    libselinux
    libsepol
  ];

  shellHook = ''
    export PKG_CONFIG_PATH=${libsepol}/lib/pkgconfig:${libselinux.dev}/lib/pkgconfig:${util-linux.dev}/lib/pkgconfig:${gtk3.dev}/lib/pkgconfig:${pcre2.dev}/lib/pkgconfig:${libsecret.dev}/lib/pkgconfig:$PKG_CONFIG_PATH
  '';
}
