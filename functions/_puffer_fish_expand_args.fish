function _puffer_fish_expand_args
    set -l current_token (commandline -t)
    if not test (count $current_token) -eq 1
        commandline -i '*'
        return
    end
    switch (commandline -t)
      case '!'
        set -l prev_cmd (history | head -n 1)
        set -l prev_args (string split ' ' $prev_cmd)
        set -e prev_args[1]  # remove command name
        set -l arg_str (string join ' ' $prev_args)
        # replace !* with all arguments
        commandline -t ""
        commandline -i $arg_str
      case '*'
        commandline -i '*'
    end
end
