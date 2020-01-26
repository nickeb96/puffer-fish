Expansion for the Fish Shell
============================

Typing `...` will expand to `../..`, `....` will expand to `../../..` and so on.  This can be useful with any command where you want to reference a parent directory that is more than one back.  i.e. `cd ....` or `mv .../file ..`  The dots will expand as you type to allow directory tap-completion to work.

To install with [fisher](https://github.com/jorgebucaran/fisher "fish package manager") run the following:

```shell
fisher add nickeb96/puffer-fish
```
