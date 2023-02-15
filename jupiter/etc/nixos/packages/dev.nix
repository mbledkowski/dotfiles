{ pkgs, ... }:
{
  programs.neovim.defaultEditor = true;
  environment.systemPackages = with pkgs; [
    cargo #rust
    openai
  ];
}
