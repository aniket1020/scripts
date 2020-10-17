#!/bin/bash
#Coursera Data Structures test script
cnt=1;
for fl in tests/*
do
	if [[ $fl == *.a ]]
	then
		if cmp -s $var $(cat $fl);
		then
			cnt=$((cnt+1));
			continue
		else
			echo "[$cnt] $var --> $(cat $fl)"
		fi
		cnt=$((cnt+1));
	else
		var=$(./a.out < $fl)
	fi;
done
