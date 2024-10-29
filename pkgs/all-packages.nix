final: prev:
let
  callPackage = final.callPackage or (prev.lib.callPackageWith (prev // packages));
  packages = rec {
    archipelago-appimage = callPackage ./archipelago-appimage {};
  };
in
  packages
