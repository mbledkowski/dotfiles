{ pkgs, ... }:
{
  programs.neovim.defaultEditor = true;
  environment.systemPackages = with pkgs; [
    (import (fetchTarball "channel:nixos-22.11") {}).neovim
    vscode
    sublime4
    jetbrains.webstorm
    jetbrains.idea-ultimate
    jetbrains.pycharm-professional
    jetbrains.mps
  ];
}
