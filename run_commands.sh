#!/bin/bash

if ! xset q &>/dev/null; then

	NumCommands=${#Commands[@]}
	for i in "${!Commands[@]}"; do 
		Percentage=$((i * 100 / NumCommands))
		echo $Percentage
		echo "# ${Notes[$i]}"
		eval ${Commands[$i]}
	done

else
	DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
	source $DIR/run_x_commands.sh
fi
