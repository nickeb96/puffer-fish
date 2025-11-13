function _puffer_fish_expand_bang
    if commandline --search-field >/dev/null
        commandline --search-field --insert '!'
    else if string match --quiet -- '!' "$(commandline --current-token)"
        commandline --current-token $history[1]
    else
        commandline --insert '!'
    end
end

