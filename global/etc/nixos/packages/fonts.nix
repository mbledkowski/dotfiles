{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    corefonts
    nerdfonts
    noto-fonts
    jetbrains-mono
    fira-code
    vistafonts
    victor-mono
  ];
}
