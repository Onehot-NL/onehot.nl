self: super:
rec {
  python39 = super.python39.override {
    packageOverrides = pythonSelf: pythonSuper: {
      markdown2 = pythonSelf.callPackage ./markdown2.nix {};
    };
  };

  python39Packages = super.recurseIntoAttrs (python39.pkgs);
}
