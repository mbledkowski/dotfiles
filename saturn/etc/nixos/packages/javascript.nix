{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    nodejs
    yarn
    deno
    fnm
  ];
}
