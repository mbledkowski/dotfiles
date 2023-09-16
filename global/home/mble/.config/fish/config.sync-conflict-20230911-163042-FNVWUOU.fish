# pnpm
set -gx PNPM_HOME "/home/mble/.local/share/pnpm"
set -gx PATH "$PNPM_HOME" $PATH
# pnpm end

any-nix-shell fish | source

if test -f /etc/arch-release
  pyenv init - | source
  test -d "$HOME/.tea" && "$HOME/.tea/tea.xyz/v*/bin/tea" --magic=fish --silent | source
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/mble/miniconda3/bin/conda
    eval /home/mble/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

