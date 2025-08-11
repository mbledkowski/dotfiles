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

# bun
set --export BUN_INSTALL "/home/mble/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
# export PATH=/home/mble/.pyenv/shims:/home/mble/.nimble/bin:/home/mble/.bun/bin:/home/mble/.local/share/pnpm:/home/mble/anaconda3/condabin:/home/mble/.pyenv/bin:/home/mble/.local/bin:/home/mble/.yarn/bin:/home/mble/.tea/tea.xyz/v0.39.6/bin:/var/home/mble/.local/bin:/home/mble/.bun/bin:/home/mble/.local/share/pnpm:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin

# Starship
starship init fish | source

# >>> coursier install directory >>>
set -gx PATH "$PATH:/home/mble/.local/share/coursier/bin"
# <<< coursier install directory <<<

# Add go binaries
set -gx PATH "$PATH:/home/mble/go/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/mble/anaconda3/bin/conda
    eval /home/mble/anaconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/mble/anaconda3/etc/fish/conf.d/conda.fish"
        . "/home/mble/anaconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/mble/anaconda3/bin" $PATH
    end
end
# <<< conda initialize <<<


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
