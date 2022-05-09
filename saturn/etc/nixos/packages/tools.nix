{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    wireshark
    burpsuite
    qbittorrent
  ];
}
