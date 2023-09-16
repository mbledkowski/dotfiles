function rpm --wraps='rpm-ostree --apply-live' --description 'alias rpm rpm-ostree --apply-live'
  rpm-ostree --apply-live $argv
        
end
