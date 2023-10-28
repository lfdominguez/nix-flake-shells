{
    description = "Set of my owns Shells";

    outputs = { self, nixpkgs, flake-utils }:
      flake-utils.lib.eachDefaultSystem
        (system:
          let pkgs = nixpkgs.legacyPackages.${system}; in
          {
            devShells.platformio = import ./shells/platformio.nix { inherit pkgs; };
            devShells.with_openssl_headers = import ./shells/with_openssl_headers.nix { inherit pkgs; };
            devShells.flutter = import ./shells/flutter.nix { inherit pkgs; };
          }
        );
}
