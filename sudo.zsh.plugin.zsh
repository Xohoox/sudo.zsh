# prepend sudo to buffer
function prepend-sudo {
  [[ $BUFFER = "sudo "* ]] && return
  BUFFER="sudo $BUFFER"; CURSOR+=5
}
zle -N prepend-sudo

bindkey ${SUDO_ZSH_KEYBINDING-'^[s'} prepend-sudo
