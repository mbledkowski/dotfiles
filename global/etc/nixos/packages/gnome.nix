{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnome.gnome-boxes
    gnome.dconf-editor
    # gnomeExtensions.clipboard-indicator
    gnomeExtensions.pano
    gnomeExtensions.just-perfection
    gnomeExtensions.caffeine
    gnomeExtensions.night-theme-switcher
    gnomeExtensions.pop-shell
    gnomeExtensions.gsconnect
    # gnomeExtensions.power-profile-switcher
    gnomeExtensions.paperwm
    gnomeExtensions.material-shell
    textpieces
    gnome-firmware
  ];
}
