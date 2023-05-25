#!/bin/bash

if [ ! "$2" ] 
then
	echo 'usage: ./change_extension prev_ext new_ext [dir]'
	exit 99
fi

prev_ext="$1"
new_ext="$2"
save_ifs="$IFS"

concat() {
	if [ $2 ]
	then
		local -n res=$1
		res="$res$IFS$2"
	fi
}

change_ext() {
	IFS="."
	read -ra ARR <<< "$1"
	len=${#ARR[@]}
	pre=${ARR[0]}
	diff=$(($len - 1))
	for (( i=1; i<$diff; i++ ))
	do
		concat pre ${ARR[$i]}  # pre is not having $ because we are passing it by ref
		# look https://stackoverflow.com/a/50281697
	done
	mv "$1" "$pre.$2"
	IFS="$save_ifs"
}

changeDir() {

	dir="$1"

	if [ "$dir" ] && [ "$dir" != "dir" ]
	then
		if  [ ! -d "$dir" ] && [ "$dir" != "*" ]
		then
			echo "directory does not exist"
			exit 99
		fi

		if  [ "$dir" != "*" ]
		then
			cd "$dir"
		fi
	fi
}

main() {
	dir="$3"
	changeDir "$dir"

	if [ "$dir" != "*" ]
	then
		for file in $(find -maxdepth 1 -name "*.$prev_ext")
		do
			change_ext "$file" "$new_ext"
		done
	else
		for file in $(find -name "*.$prev_ext")
		do
			change_ext "$file" "$new_ext"
		done
	fi
}

main "$1" "$2" "$3"
