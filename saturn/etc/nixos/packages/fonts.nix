{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    nerdfonts
    noto-fonts
    jetbrains-mono
    fira-code
    vistafonts
    victor-mono
  ];
}
