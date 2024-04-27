is_number() {
  if [ -n "$1" ] && [ "$1" -eq "$1" ] 2>/dev/null; then
    echo true
  else
    echo false
  fi
}

is_function() {
  local a1="$1"
  if [[ $(type -t $a1 ) == function ]]; then
    echo true
  else
    echo false
  fi
}

is_command() {
  local name="$1"
  if ! command -v $name &> /dev/null
  then
    echo "false"
  else
    echo "true"
  fi
}
