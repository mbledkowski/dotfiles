{ pkgs, ... }:
{
  programs.neovim.defaultEditor = true;
  environment.systemPackages = with pkgs; [
    neovim
    neovide
    vscode
    sublime4
    lapce
    emacs
    #oni2
    jetbrains.webstorm
    jetbrains.idea-ultimate
    jetbrains.pycharm-professional
    jetbrains.gateway
    jetbrains.mps
    lyx
    helix
  ];
}
