{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    corefonts
    (import (fetchTarball "channel:nixos-23.05") {}).nerdfonts
    noto-fonts
    jetbrains-mono
    fira-code
    vistafonts
    victor-mono
  ];
}
