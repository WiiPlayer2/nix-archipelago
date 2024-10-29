final: prev:
let
  callPackage = final.callPackage or (prev.lib.callPackageWith (prev // packages));
  packages = rec {
  };
in
  packages
