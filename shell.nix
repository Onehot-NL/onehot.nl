let
  pkgs = import ./nix/nixpkgs.nix {};
  pythonEnv = pkgs.python39.withPackages (import ./nix/python-packages.nix);
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
