{
  # Pin these
  inputs.nixpkgs.url = "nixpkgs/f5c27c6136db4d76c30e533c20517df6864c46ee";
  inputs.haskellNix.url = "github:input-output-hk/haskell.nix/1aaffd26caf84fa48d884177f283321f193daede";

  inputs.fenix = {
    url = "github:nix-community/fenix";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, haskellNix, fenix, ... }: {
    inherit nixpkgs;
    inherit fenix;
    inherit haskellNix;
  };
}
