# pnpm
set -gx PNPM_HOME "/home/mble/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end


if test -f /etc/os-release
  pyenv init - | source
  # test -d "$HOME/.tea" && "$HOME/.tea/tea.xyz/v*/bin/tea" --magic=fish --silent | source
else
  any-nix-shell fish | source
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/mble/anaconda3/bin/conda
    eval /home/mble/anaconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<


# bun
set --export BUN_INSTALL "/home/mble/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
export PATH=/home/mble/.nimble/bin:/home/mble/.bun/bin:/home/mble/.pyenv/shims:/home/mble/.local/share/pnpm:/home/mble/anaconda3/condabin:/home/mble/.pyenv/bin:/home/mble/.local/bin:/home/mble/.yarn/bin:/home/mble/.tea/tea.xyz/v0.39.6/bin:/var/home/mble/.local/bin:/home/mble/.bun/bin:/home/mble/.local/share/pnpm:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin
