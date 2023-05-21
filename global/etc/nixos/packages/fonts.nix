{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    corefonts
    (import (fetchTarball "channel:nixos-22.11") {}).nerdfonts
    noto-fonts
    jetbrains-mono
    fira-code
    vistafonts
    victor-mono
  ];
}
