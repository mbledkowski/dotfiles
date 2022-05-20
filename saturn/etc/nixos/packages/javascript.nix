{pkgs, ...}:
{
  environment.systemPackages = with pkgs; [
    nodejs-18_x
    nodePackages.yarn
    nodePackages.typescript
    nodePackages.ts-node
    deno
    fnm
  ];
}
