nx_source_lib_folder() {
  local base="$1"
  for f in $base/*/*.sh; do
    source $f
  done
}

this_dir="$(dirname "$BASH_SOURCE")"
nx_source_lib_folder $this_dir
