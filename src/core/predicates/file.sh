is_file() {
  local name="$1"
  if [ -f "$name" ]; then
    echo "true"
  else
    echo "false"
  fi
}

is_dir() {
  local name="$1"
  if [ -d "$name" ]; then
    echo "true"
  else
    echo "false"
  fi
}
