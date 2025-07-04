#!/usr/bin/env sh

printf "this will overwrite ~/.config, ~/.bash* and other stuff you might want to keep,\n\n"
printf "if you want to initiate the configuration in a specific directory, chose settings option\n\n"
printf "continue?([y]es, [n]o, [s]ettings): "
read opt

option=""

if [ "$opt" = "y" ] || [ "$opt" = "yes" ]; then

	printf "overwriting ~ configurations"
	option="yes"

elif [ "$opt" = "s" ] || [ "$opt" = "settings" ]; then

	printf "directory to init config in: "
	read target_dir

	if [ -d "$target_dir" ]; then
		printf "\ndirectory exists, initializing configuration \n"
		option="set"
	fi

elif [ "$opt" = "n" ] || [ "$opt" = "no" ]; then

	printf "no changes done, exiting"
	exit

fi

echo "sexxy"


