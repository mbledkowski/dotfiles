function gt --wraps='git ls-tree -r --name-only HEAD | tree --fromfile' --description 'alias gt git ls-tree -r --name-only HEAD | tree --fromfile'
  git ls-tree -r --name-only HEAD | tree --fromfile $argv; 
end
