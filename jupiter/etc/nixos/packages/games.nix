{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
      prismlauncher # Minecraft, multimc fork
      jdk17
      steam  
  ];
}
