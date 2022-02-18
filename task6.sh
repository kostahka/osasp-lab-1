#!/bin/bash
n=3
echo "">$1
if [ $n -eq $# ]
then
	if [ -d $2 ]
	then 
		if [ -w $1 -a -f $1 ]
		then find $2 -type f -name "*.$3" | xargs -I {} basename {} | sort -f > $1
		else
		echo "Cannot write in file $1">&2
		fi
	else
	echo "Second Argument is not directory!">&2
	fi
else
echo "File waiting for 3 parametres actually">&2
fi
