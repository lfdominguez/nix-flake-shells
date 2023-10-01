{ pkgs }:
with pkgs;
mkShell {
  buildInputs = [
    platformio
  ];

  shellHook = ''
    mkdir -p $out/platformio/penv/bin

    ln -s ${platformio.out}/bin/pio $out/platformio/penv/bin/pio
    ln -s ${platformio.out}/bin/platformio $out/platformio/penv/bin/platformio

    ln -s ${platformio.out}/bin/pio $out/platformio/penv/bin/pio
    ln -s ${platformio.out}/bin/platformio $out/platformio/penv/bin/platformio
    
    export PATH="${platformio.out}/bin:$out/platformio/:$PATH"
  '';
}
