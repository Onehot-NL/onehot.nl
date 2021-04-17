{ pythonEnv
, stdenv
}:

stdenv.mkDerivation {
  src = ./.;
  name = "onehot.nl";

  buildInputs = [
    pythonEnv
  ];

  buildPhase = ''
    export PROJECT_ROOT="$(pwd)"
    python ./bin/build
  '';

  installPhase = ''
    mkdir -p $out
    cp -r ./ignore/dist $out/public_html
  '';
}
