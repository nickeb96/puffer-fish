# Puffer Fish

> Text Expansions for [Fish](https://fishshell.com/)

Typing consecutive dots after `..` will automatically expand to `../..`, then `../../..` and so on.  It expands in place as you type to allow directory tab-completion to work.  This can be useful with any command where you want to reference a parent directory that is more than one back.  i.e. `cd ....` or `vi .../Cargo.toml`.

![dot dot demo](./media/dot-dot-demo.gif)

It's a little hard to see in the demo because it expands as you type, but `cp ..../template/Makefile .` is being typed.

--------------------------------------------------------------------------------

Typing `!!` will expand to the previous command, similar to Zsh, Bash, and other shells.  For example, if you type `apt update` you will likely see a permisison error.  You can then type `sudo !!` and it will expand to `sudo apt update`.

![exclamation demo](./media/exclamation-demo.gif)

This can be especially useful if you don't want to retype a long command, or navigate around with the arrow keys.  Or if you want to re-run a command as part of pipeline.

```console
> some-long-command -abcdef --long-option --another-long-option /a/long/path/to/somewhere
...
> cat file1 file2 | !! | grep 'search-key' | wrap -s
...
```

## Installation

Install with [Fisher](https://github.com/jorgebucaran/fisher "fish plugin manager"):

```console
fisher install nickeb96/puffer-fish
```

#### Manually

Just copy `functions/*` and `conf.d/*` to your `$__fish_config_dir` directory. Make sure to create them if they don't already exist.

## LICENSE

[MIT](LICENSE)
