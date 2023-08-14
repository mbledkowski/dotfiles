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
    icon-library
    onlyoffice-bin
    audacity
    obs-studio
    imagej
    anytype
    gimp-with-plugins
    radare2
    gparted
    zotero
  ];
}
