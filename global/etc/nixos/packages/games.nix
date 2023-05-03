{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
      (import (fetchTarball "channel:nixos-22.11") {}).prismlauncher # Minecraft, multimc fork
      jdk17
      steam  
  ];
}
