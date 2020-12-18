#!/bin/bash

if [[ $# -gt 0 ]]
then
	list=$*
else
	list=$(echo dl{01..11})
fi

for i in $list; do
	ping $i -c 1 >& /dev/null
	if [ $? -eq 0 ]; then
		echo "$i: alive";
	else
		echo "$i: dead";
	fi

done

exit 0
