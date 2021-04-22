self: super:
rec {
  python39 = super.python39.override {
    packageOverrides = pythonSelf: pythonSuper: {
      mashumaro = pythonSelf.callPackage ./mashumaro.nix {};
    };
  };

  python39Packages = super.recurseIntoAttrs (python39.pkgs);
}
