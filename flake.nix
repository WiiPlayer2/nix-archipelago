{
  description = "A very basic flake";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake
    { inherit inputs; }
    {
      imports = [
        ./pkgs
      ];

      systems = [
        "x86_64-linux"
      ];
    };
}
