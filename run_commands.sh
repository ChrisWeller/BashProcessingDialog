#!/bin/bash
if [ -s $DISPLAY ]; then
	DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
	source $DIR/run_x_commands.sh

else

	NumCommands=${#Commands[@]}
	for i in "${!Commands[@]}"; do 
		Percentage=$((i * 100 / NumCommands))
		echo $Percentage
		echo "# ${Notes[$i]}"
		eval ${Commands[$i]}
	done

fi
