abort_if_true() {
  local v="$1"
  local msg="$2"
  if [ "$v" == "true" ]; then
    echo " $msg"
    echo
    exit 1
  fi
}

# Ex:
# abort_if_not_true $(is_eq "y" $my_ans) "Error: Aborted by user"
abort_if_not_true() {
  local v="$1"
  local msg="$2"
  if [ "$v" != "true" ]; then
    echo " $msg"
    echo
    exit 1
  fi
}