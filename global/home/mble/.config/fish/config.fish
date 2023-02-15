# pnpm
set -gx PNPM_HOME "/home/mble/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

any-nix-shell fish | source

if test -f /etc/arch-release
  pyenv init - | source
end
