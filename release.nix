{ pkgs ? import ./nix/nixpkgs.nix {}
, pythonEnv ? pkgs.python39.withPackages (import ./nix/python-packages.nix)
, stdenv ? pkgs.stdenv
}:

stdenv.mkDerivation {
  src = ./.;
  name = "onehot.nl";

  buildInputs = [
    pythonEnv
  ];

  buildPhase = ''
    export PROJECT_ROOT="$(pwd)"
    python ./bin/build site
  '';

  installPhase = ''
    mkdir -p $out
    cp -r ./ignore/dist $out/public_html
    cp ./config/headers.json $out/headers.json
  '';
}
