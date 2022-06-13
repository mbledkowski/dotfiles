function xpaste --wraps='xclip -selection clipboard -o' --description 'alias xpaste xclip -selection clipboard -o'
  xclip -selection clipboard -o $argv; 
end
