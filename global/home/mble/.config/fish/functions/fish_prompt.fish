function fish_prompt
  #  if test -n "$SSH_TTY"
  #      echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
  #  end

  #  echo -n (set_color blue)(prompt_pwd)' '

  #  set_color -o
  #  if fish_is_root_user
  #      echo -n (set_color red)'# '
  #  end
  #  echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
  #  set_color normal

  if set -q VIRTUAL_ENV
    echo -n -s (set_color brmagenta) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
  end
  echo -n (set_color normal)'λ ' #(set_color brmagenta)'λ '
  set_color normal
end
