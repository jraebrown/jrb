#compdef jrb

(( $+functions[_arguments] )) || return

_jrb() {
  local -a cmds
  local jrb_dir="${JRB_DIR:-$HOME/.jrb}"
  local cmd_dir="$jrb_dir/commands"

  cmds=(${(f)"$(ls -1 $cmd_dir 2>/dev/null)"})
  _arguments '1:command:->cmds' '*::args:->args'

  case $state in
    cmds)
      _describe 'command' cmds
      ;;
  esac
}

_jrb "$@"
