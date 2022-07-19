if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Bun
set -Ux BUN_INSTALL "/home/mble/.bun"
set -px --path PATH "/home/mble/.bun/bin"

