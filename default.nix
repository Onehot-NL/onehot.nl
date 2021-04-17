let
  pkgs = import ./nix/nixpkgs.nix {};
  pythonEnv = pkgs.python39.withPackages (import ./nix/python-packages.nix);
in
  pkgs.callPackage ./release.nix { inherit pythonEnv; }
