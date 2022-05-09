function la --wraps=ls --wraps='exa -a' --description 'alias la exa -a'
  exa -a $argv; 
end
