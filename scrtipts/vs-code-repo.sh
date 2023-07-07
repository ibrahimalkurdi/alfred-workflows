#!/bin/bash

options=$(ls -d ./*)


dir_list=$(for line in $(ls -1 /Users/ibrahimalkurdi/Documents/ibrahim-nord-workspace/git-repos); do
echo ${line} "\\"
done)


selected_dir=$(whiptail --title "Directory menu" --menu "Selected a dir:" 0 0 0 $dir_list 3>&1 1>&2 2>&3)

if [ ! -z $selected_dir ]; then
  /Applications/VisuaL\ Studio\ Code.app/Contents/Resources/app/bin/code -n ~/Documents/ibrahim-nord-workspace/git-repos/$selected_dir
fi
