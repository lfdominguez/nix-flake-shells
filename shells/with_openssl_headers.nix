{ pkgs }:
with pkgs;
mkShell {
  buildInputs = [
    openssl
  ];

  shellHook = ''
    export PATH="${openssl.out}/bin:$PATH"
  '';
}
