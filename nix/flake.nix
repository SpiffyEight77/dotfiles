{
  description = "A very basic development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    packages.aarch64-darwin.default = let
      pkgs = nixpkgs.legacyPackages.aarch64-darwin;
    in
    pkgs.buildEnv {
      name = "global-env";
      paths = with pkgs; [
        k9s
        htop
		mycli
		pgcli
		shfmt
		kubectl
      ];
    };
  };
}
