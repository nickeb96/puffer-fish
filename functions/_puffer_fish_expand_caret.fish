function _puffer_fish_expand_caret
    if commandline --search-field >/dev/null
        commandline --search-field --insert '^'
    else
        set -l current_token (commandline --current-token)
        if string match --quiet --regex -- '^\^([^^]+)\^([^^]*)$' "$current_token"
            set -l matches (string match --regex -- '^\^([^^]+)\^([^^]*)$' "$current_token")
            set -l old $matches[2]
            set -l new $matches[3]
            set -l prev_cmd $history[1]
            if string match --quiet -- "*$old*" "$prev_cmd"
                set -l expanded (string replace -- "$old" "$new" "$prev_cmd")
                commandline --current-token -- $expanded
            else
                commandline --insert '^'
            end
        else
            commandline --insert '^'
        end
    end
end
