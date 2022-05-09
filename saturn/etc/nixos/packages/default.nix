{...}:

{
  imports = [
    ./browsers.nix
    ./games.nix
    ./editors.nix
    ./utils.nix
    ./python.nix
    ./javascript.nix
    ./gnome.nix
    ./tools.nix
    ./fonts.nix
    ./haskell.nix
    ./multimedia.nix
  ];
  
  # Allow non-free packages
  nixpkgs.config.allowUnfree = true;
}
