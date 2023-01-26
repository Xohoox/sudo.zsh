if [ -z $SUDO_ZSH_KEYBINDING ]; then
    binding='^[s'
else
    binding=$SUDO_ZSH_KEYBINDING
fi

# Esc-S to insert sudo in front of command
function prepend-sudo { # Insert "sudo " at the beginning of the line
  if [[ $BUFFER != "sudo "* ]]; then
    BUFFER="sudo $BUFFER"; CURSOR+=5
  fi
}
zle -N prepend-sudo

bindkey $binding prepend-sudo
