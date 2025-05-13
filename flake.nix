{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        rs-python = pkgs.python312.withPackages (
          ps: with ps; [
            pandas
            numpy
            matplotlib
            seaborn

            notebook
            ipykernel
          ]
        );
      in
      with pkgs;
      {
        devShells.default = mkShell {
          buildInputs = [
            rs-python
            jupyter-all
          ];
        };
      }
    );
}
