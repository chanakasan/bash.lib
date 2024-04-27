is_var_defined() {
  local -n candidate_ref=$1
  if [ -z "${candidate_ref+foo}" ]; then
    echo "false"
  else
    echo "true"
  fi
}


is_eq() {
  local v1="$1"
  local v2="$2"
  if [ "$v1" == "$v2" ]; then
    echo "true"
  else
    echo "false"
  fi
}

is_command() {
  local name="$1"
  if ! command -v $name &> /dev/null
  then
    echo false
  else
    echo true
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
