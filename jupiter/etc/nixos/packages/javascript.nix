{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    nodejs
    yarn
    deno
    bun
    fnm
    nodePackages.pnpm
    nodePackages.ts-node
    nodePackages.typescript
  ];
}
