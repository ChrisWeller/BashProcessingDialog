#!/bin/bash

if ! xset q &>/dev/null; then

	for i in "${!Commands[@]}"; do 
		Percentage=$((i * 100 / NumCommands))
		echo $Percentage
		echo "# ${Notes[$i]}"
		${Commands[$i]}
	done

else
	DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
	source $DIR/run_x_commands.sh
fi
