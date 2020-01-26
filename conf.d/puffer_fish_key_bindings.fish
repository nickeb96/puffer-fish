bind . _expanddots

set -l uninstall_event_name (basename (status -f) .fish){_uninstall}

function $uninstall_event_name --on-event $uninstall_event_name
    bind -e .
end
