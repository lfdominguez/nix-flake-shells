{
    description = "Set of my owns Shells";

    outputs = { self, nixpkgs, flake-utils }:
      flake-utils.lib.eachDefaultSystem
        (system:
          let pkgs = nixpkgs.legacyPackages.${system}; in
          {
            devShells.platformio = import ./platformio.nix { inherit pkgs; };
          }
        );
}
