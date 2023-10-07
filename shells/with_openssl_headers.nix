{ pkgs }:
with pkgs;
mkShell {
  buildInputs = [
    openssl
    pkg-config
  ];

  shellHook = ''
    export PATH="${openssl.out}/bin:$PATH"
    export PKG_CONFIG_PATH="${openssl.dev}/lib/"
  '';
}
