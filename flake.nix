{
    description = "Set of my owns Shells";

    outputs = { self, nixpkgs }:
    let
        system = "x86_64-linux";

        pkgs = import nixpkgs {
            inherit system;

            config.allowUnfress = true;
        };
    in {
        platformio = import ./platformio.nix {
                inherit pkgs
            };
    };
}
