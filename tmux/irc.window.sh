new_window "irc"

split_h 15

select_pane 2
run_cmd "cat ~/.irssi/nicklistfifo"

sleep 1

select_pane 1
run_cmd "irssi"
