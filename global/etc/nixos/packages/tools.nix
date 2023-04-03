{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    wireshark
    burpsuite
    qbittorrent
    minder
    obsidian
    gaphor
    khronos
    textpieces
    icon-library
    onlyoffice-bin
    audacity
    obs-studio
    imagej
    anytype
    gimp-with-plugins
  ];
}
