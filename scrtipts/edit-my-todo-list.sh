#!/bin/bash


my_todo_list_file="/Users/ibrahimalkurdi/Documents/ibrahim-nord-workspace/todo-lists/my-scheduled-tasks.todo"
current_date=$(date +%d/%m/%Y)
ensure_current_date="$(grep ${current_date} ${my_todo_list_file} | wc -l | awk '{print $1}')"

if [ "$ensure_current_date" -eq "0" ] && [ ! -z "$1" ]; then
  echo -e "\n${current_date}:" >> ${my_todo_list_file}
  echo -e "    ☐ $1" >> ${my_todo_list_file}
elif [[ ! -z "$1" ]]; then
  echo -e "    ☐ $1" >> ${my_todo_list_file}
fi 



#echo -e "    ☐ $1\n$(cat ${my_todo_list_file})" > ${my_todo_list_file}
#echo -e "$(date +%d/%m/%Y):\n\n$(cat ${my_todo_list_file})" > ${my_todo_list_file}
#/Applications/VisuaL\ Studio\ Code.app/Contents/Resources/app/bin/code -n ${my_todo_list_file}
#open -a TextEdit ${my_todo_list_file}

