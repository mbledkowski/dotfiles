{ pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
      polymc # Minecraft, multimc fork
      steam  
  ];
}
