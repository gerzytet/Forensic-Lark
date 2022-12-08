#!/bin/bash
if [ -f "$guide_dir/a_directory/progress.txt" ]
then
    echo "The name of the script file is ${typecolg}myscript.sh${norm}"
else 
    echo "cd a_directory"
fi
