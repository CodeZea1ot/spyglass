#!/bin/bash

########## DEFAULTS ##########

# -d | Default value for delay between lines
line_delay=0.1

# -D | Default value for delay between groups
group_delay=0

# -k, -K | Default behavior regarding keeping terminal output if -k or -K not used
keep_final_group=false
keep_previous_group=false

# -n | Default value for max number of lines to display or group
max_lines=8

# -s | Default value for spacing
spacing=0

########## END DEFAULTS ##########

########## FUNCTIONS ##########

apply_group_delay() {
	sleep ${group_delay}
}

apply_line_delay() {
	sleep ${line_delay}
}

clear_previous_lines() {
	local lines=$1
	local additional_lines=$((lines * spacing))
	total_lines_to_clear=$((lines + additional_lines))
	for ((i = 0; i < total_lines_to_clear; i++)); do
		tput cuu1
		tput el
	done
}

usage() {
	echo "Usage: spyglass [-d] [-D] [-h] [-k] [-K] [-n] [-s] <file>"
	echo "Options:"
	echo "	-d <line_delay>			Set the delay in seconds between each line output (default is ${line_delay})"
	echo "	-D <group_delay>		Set the delay in seconds between each group of -n lines output (default is ${group_delay})"
	echo "	-h <help>			Displays this usage menu"
	echo "	-k <keep-final-group>			Keep the final group of output drawn to the terminal (default is to clear)"
	echo "	-K <keep-all-groups>			Keep all output groups drawn to the terminal (default is to clear)"
	echo "	-n <lines>			Specify the maximum number of lines to display as a group (default is ${max_lines})"
	echo "	-s <spacing>			Set the amount of line breaks that should appear after each line (default is ${spacing})"
	exit 1
}

########## END FUNCTIONS ##########

########## MAIN ##########

# Check if any arguments are provided
if [[ $# -eq 0 ]]; then
	usage
fi

# Parse command line options
while getopts ":d:D:hkKn:s:" opt; do
	case $opt in
	d)
		line_delay=$OPTARG
		;;
	D)
		group_delay=$OPTARG
		;;
	h)
		usage
		exit 0
		;;
	k)
		keep_final_group=true
		;;
	K)
		keep_final_group=true
		keep_previous_group=true
		;;
	n)
		max_lines=$OPTARG
		;;
	s)
		spacing=$OPTARG
		;;
	\?)
		echo "Invalid option: -$OPTARG" >&2
		usage
		;;
	:)
		echo "Option -$OPTARG requires an argument." >&2
		usage
		;;
	esac
done

shift $((OPTIND - 1))

# Check if a file argument is provided
if [[ $# -eq 0 ]]; then
	echo "Error: Please provide a file." >&2
	usage
	exit 1
fi

line_count=0
while IFS= read -r line || [[ -n "$line" ]]; do

	((line_count++))

	# Check if maximum number of lines is reached
	# If it is, clear the lines that have been drawn to the terminal
	if [[ $line_count -gt $max_lines ]]; then
		apply_group_delay
		if ! $keep_previous_group; then
			clear_previous_lines $max_lines
		fi
		line_count=1
	fi

	# Output line
	echo "$line"

	# Output additional spaces if present
	if [[ ! ${spacing} -eq 0 ]]; then
		for ((i = 0; i < spacing; i++)); do
			echo ""
		done
	fi

	apply_line_delay

done <"$1"

# Ensure group delay is applied to final group
apply_group_delay

# Clear remaining lines after reading the file if -k option is not provided
if ! $keep_final_group; then
	clear_previous_lines $line_count
fi

########## END MAIN ##########
