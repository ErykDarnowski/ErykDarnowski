#!/bin/bash

clear='\033[0m'
function color_red () {
    echo -ne '\033[31m'"$1"$clear
}

function is_installed () {
	return $(which $1 > /dev/null 2>&1)
}


printf "\033c"

if is_installed 'grip'; then
	grip
	exit 0
else
	echo -e "$(color_red "Couldn't find \`grip\`!!!\nInstall it please:") https://github.com/joeyespo/grip#installation"
	exit 1
fi
