{
  # Pin these
  inputs.haskellNix.url = "github:input-output-hk/haskell.nix";
  inputs.nixpkgs.follows = "haskellNix/nixpkgs-unstable";

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
