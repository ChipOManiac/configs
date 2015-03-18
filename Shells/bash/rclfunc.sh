# Chet's bash shell functions
# ---------------------------

function print_color() {
	echo -e "$1$2${col_reset}";
}

function last_command_status() {
	case $? in
		"0")	print_color ${col_okay} "OKY"	;;
		"130")	print_color ${col_other} "INT"	;;
		"127")	print_color ${col_other} "NCM" 	;;
		*)	print_color ${col_fail} "ERR"	;;
	esac
}
