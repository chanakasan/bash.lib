is_number() {
  local a1="$1"
  if [ -n "$a1" ] && [ "$a1" -eq "$a1" ] 2>/dev/null; then
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