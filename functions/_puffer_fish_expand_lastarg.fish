function _puffer_fish_expand_lastarg
    set -l current_token (commandline -t)
    if not test (count $current_token) -eq 1
        commandline -i '$'
        return
    end
    switch (commandline -t)
      case '!'
        commandline -t ""
        commandline -f history-token-search-backward
      case '*'
        commandline -i '$'
    end
end
