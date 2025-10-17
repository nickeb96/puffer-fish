function _puffer_fish_expand_bang
    set -l current_token (commandline -t)
    if not test (count $current_token) -eq 1
        commandline -i '!'
        return
    end
    switch (commandline -t)
      case '!'
        commandline -t $history[1]
      case '*'
        commandline -i '!'
    end
end

