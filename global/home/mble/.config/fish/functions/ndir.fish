function ndir
  set -l a
  while read line
    set a $a $line
  end
  set b (echo -n $a | tr '\t' ' ' | tr -s ' ' | sed 's/ *$//' | tr " " "_")
  mkdir $b
  cd $b
end

