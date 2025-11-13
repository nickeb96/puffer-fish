function _puffer_fish_expand_star
    if commandline --search-field >/dev/null
        commandline --search-field --insert '*'
    else if string match --quiet -- '!' "$(commandline --current-token)"
        set -l prev_cmd $history[1]
        set -l prev_args (string split ' ' $prev_cmd)
        set -e prev_args[1]  # remove command name
        set -l arg_str (string join ' ' $prev_args)
        # replace !* with all arguments
        commandline --current-token ''
        commandline --insert $arg_str
    else
        commandline --insert '*'
    end
end
