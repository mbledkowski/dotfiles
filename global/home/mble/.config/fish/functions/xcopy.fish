function xcopy --wraps='xclip -selection clipboard' --description 'alias xcopy xclip -selection clipboard'
  xclip -selection clipboard $argv; 
end
