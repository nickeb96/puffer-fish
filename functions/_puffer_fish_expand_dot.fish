function _puffer_fish_expand_dot
    if commandline --search-field >/dev/null
        commandline --search-field --insert '.'
    else if string match --quiet --regex -- '^(\.\./)*\.\.$' "$(commandline --current-token)"
        commandline --insert '/..'
    else
        commandline --insert '.'
    end
end
