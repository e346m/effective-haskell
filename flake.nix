{
  description = "Effective Haskell";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" "aarch64-darwin" ];
      perSystem = { config, self', inputs', pkgs, system, ... }: {


        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            haskell.compiler.native-bignum.ghc948
          ];
        };
      };
    };
}
