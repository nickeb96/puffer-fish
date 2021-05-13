function _puffer_fish_key_bindings --on-variable fish_key_bindings
    if test "$fish_key_bindings" = fish_default_key_bindings
        bind . _puffer_fish_expand_dots
        bind ! _puffer_fish_expand_bang
    else
        bind . -M insert _puffer_fish_expand_dots
        bind ! -M insert _puffer_fish_expand_bang
    end
end

_puffer_fish_key_bindings

set -l uninstall_event (basename (status -f) .fish)_uninstall

function $uninstall_event --on-event $uninstall_event
    bind -e .
    bind -e !
end
