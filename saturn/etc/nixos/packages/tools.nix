{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    wireshark
    burpsuite
    qbittorrent
    minder
    obsidian
    tigervnc
    mpv
    youtube-dl
    obs-studio
  ];
}
