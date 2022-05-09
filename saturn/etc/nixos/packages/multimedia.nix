{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    spotifyd
    spotify-qt
    spotify-tui
  ];
}
