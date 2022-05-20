{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    nerdfonts
    noto-fonts
    jetbrains-mono
    fira-code
    vistafonts
    victor-mono
    dejavu_fonts
    source-code-pro
    source-sans-pro
    source-serif-pro
  ];
}
