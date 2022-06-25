function lunavide --wraps='neovide --neovim-bin (which lvim)' --description 'alias lunavide neovide --neovim-bin (which lvim)'
  neovide --neovim-bin (which lvim) $argv; 
end
