let
  pkgs = import ./nix/nixpkgs.nix {};
  pythonEnv = pkgs.python39.withPackages (ps: [
    ps.black
    ps.flake8
    ps.hypothesis
    ps.isort
    ps.mypy
  ]);
in
pkgs.mkShell {
  name = "onehot";
  buildInputs = [
    pkgs.overmind
    pkgs.watchexec
    pythonEnv
  ];

  shellHook = ''
    mkdir -p $PROJECT_ROOT/.env/bin
    ln -sf $(which python) $PROJECT_ROOT/.env/bin/python
  '';
}
