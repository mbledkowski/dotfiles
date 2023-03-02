{ pkgs, ... }:
{
  programs.neovim.defaultEditor = true;
  environment.systemPackages = with pkgs; [
    neovim
    vscode
    sublime4
    jetbrains.webstorm
    jetbrains.idea-ultimate
    jetbrains.pycharm-professional
    jetbrains.mps
  ];
}
