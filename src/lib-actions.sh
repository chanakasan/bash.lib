abort_if_true() {
  local v="$1"
  local msg="$2"
  if [ "$v" == "true" ]; then
    echo " $msg"
    exit 1
  fi
}

# Ex:
# abort_if_not_true $(is_equal "y" $my_ans) "Error: Aborted by user"
abort_if_not_true() {
  local v="$1"
  local msg="$2"
  if [ "$v" != "true" ]; then
    echo " $msg"
    exit 1
  fi
}