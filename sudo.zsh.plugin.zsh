# prepend sudo to buffer
function prepend-sudo { # Insert "sudo " at the beginning of the line
  if [[ $BUFFER != "sudo "* ]]; then
    BUFFER="sudo $BUFFER"; CURSOR+=5
  fi
}
zle -N prepend-sudo

bindkey ${SUDO_ZSH_KEYBINDING-'^[s'} prepend-sudo
