self: super:
rec {
  python39 = super.python39.override {
    packageOverrides = pythonSelf: pythonSuper: {
    };
  };

  python39Packages = super.recurseIntoAttrs (python39.pkgs);
}
