#!/bin/bash

clear='\033[0m'

function color_red () {
    echo -ne '\033[31m'"$1"$clear
}
function is_installed () {
	return $(which $1 > /dev/null 2>&1)
}


# Clear terminal
printf "\033c"

if is_installed 'nvim'; then
	nvim README.md +'CocCommand markdown-preview-enhanced.openPreview'
	exit 0
else
	echo -e "$(color_red "Couldn't find \`neovim\`!!!\nPlease install both it and this extension:") https://github.com/weirongxu/coc-markdown-preview-enhanced"
	exit 1
fi
