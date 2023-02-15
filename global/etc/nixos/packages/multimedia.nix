{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    spotifyd
    #    spotify-qt
    spotify
    spotify-tui
    reaper
  ];
}
