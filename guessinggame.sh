#!/usr/bin/env bash
number_of_files=$(ls | wc -l)

check_response() {
	if [[ $1 -lt number_of_files ]]; then
		echo "Your answer was too low, try again."
		return 1
	elif [[ $1 -gt number_of_files ]]; then
		echo "Your answer was too high, try again."
		return 1
	else
		echo "Your answer ($1) was correct!"
		return 0
	fi
}

while true; do
	read -p "Guess the number of files in the current working directory: " response
	if check_response $response; then
		break
	fi
done
