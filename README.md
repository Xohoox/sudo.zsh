sudo.zsh
========

A zsh plugin to prepend sudo to a command. The default bindinding is Alt+s. The keybinding can be configured using the `SUDO_ZSH_KEYBINDING` variable

```bash
some really long zsh command
```

Just remembered you'll have to sudo? you can now hit Alt+s to prepend a sudo to your long command without losing your place.

Installation
--------

Assuming you have [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), you can
simply write

```bash
git clone git@github.com:robertzk/sudo.zsh.git ~/.oh-my-zsh/custom/plugins/sudo
echo "plugins+=(sudo)" >> ~/.zshrc
```

(Alternatively, you can place the `sudo` plugin in the `plugins=(...)` local in your `~/.zshrc` manually.)

Unfortunately, due to use of `zle` (zsh line editor), this shell script will **not** work on bash terminal.
