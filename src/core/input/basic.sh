# Ex:
# ask_input ans_1 "confirm create: $wd ?"
ask_input() {
  local -n answer_ref=$1
  local text="$2"
  local _answer=""
  printf "$text (y/n) "
  read _answer
  answer_ref="$_answer"
}
