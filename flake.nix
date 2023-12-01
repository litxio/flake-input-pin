{
  # Pin these
  inputs.nixpkgs.url = "nixpkgs/e12483116b3b51a185a33a272bf351e357ba9a99";
  inputs.haskellNix.url = "github:input-output-hk/haskell.nix/a9aa3790f542c023c198d01e31bdfecf4ea6e95a";

  inputs.fenix = {
    url = "github:nix-community/fenix";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { ... }: {};
}
