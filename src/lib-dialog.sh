# ex:
# ask_input my_ans "confirm create: $wd ?"
ask_input() {
  local -n answer_ref=$1
  local text="$2"
  printf "$text (y/n) "
  read _answer
  answer_ref="$_answer"
}