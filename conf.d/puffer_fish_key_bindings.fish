bind . _puffer_fish_expand_dots

set -l uninstall_event (basename (status -f) .fish){_uninstall}

function $uninstall_event --on-event $uninstall_event
    bind -e .
end
