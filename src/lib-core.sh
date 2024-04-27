tmp_base_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
for f in $tmp_base_dir/core/*.sh; do
  source $f
done

