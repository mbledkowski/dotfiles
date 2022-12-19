{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    haskellPackages.haskell-language-server
    haskellPackages.hoogle
    cabal-install
    stack
    #haskellPackages.xmonad
    #haskellPackages.xmonad-contrib
    #haskellPackages.xmonad-extras
  ];
}
