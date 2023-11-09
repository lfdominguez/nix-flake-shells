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
    pcre
    pcre2
    gtk3
    util-linux
    libselinux
    libsepol
    libthai
    libgcrypt
    libdatrie
    libgpg-error
    xorg.libXdmcp
  ];

  shellHook = ''
    export PKG_CONFIG_PATH=${xorg.libXdmcp.dev}/lib/pkgconfig:${libgpg-error.dev}/lib/pkgconfig:${libdatrie.dev}/lib/pkgconfig:${libgcrypt.dev}/lib/pkgconfig:${libthai.dev}/lib/pkgconfig:${pcre.dev}/lib/pkgconfig:${libsepol}/lib/pkgconfig:${libselinux.dev}/lib/pkgconfig:${util-linux.dev}/lib/pkgconfig:${gtk3.dev}/lib/pkgconfig:${pcre2.dev}/lib/pkgconfig:${libsecret.dev}/lib/pkgconfig:$PKG_CONFIG_PATH
  '';
}
