#!/bin/bash
(
NumCommands=${#Commands[@]}
echo "Num Commands $NumCommands"
for i in "${!Commands[@]}"; do 
	Percentage=$((i * 100 / NumCommands))
	echo $Percentage
	echo "# ${Notes[$i]}"
	eval ${Commands[$i]}
done
) |
zenity --progress --title="Run SVN update on IMP" --text="Starting..."  --percentage=0 --auto-close --no-cancel --width=300
