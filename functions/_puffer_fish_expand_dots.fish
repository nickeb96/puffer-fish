function _puffer_fish_expand_dots -d 'expand ... to ../.. etc'
    set -l cmd (commandline --cut-at-cursor)
    switch $cmd[-1]
        case '*..'; commandline --insert '/..'
        case '*'; commandline --insert '.'
    end
end
