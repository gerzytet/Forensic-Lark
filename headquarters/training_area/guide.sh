#!/bin/bash

if [ -f "$guide_dir/a_directory/progress.txt" ] #this checks if the player learned cd yet
then
    if [ $# -eq 0 ]
    then
        echo "Good, now here's how you send the results of your investigation back to headquarters:"
        echo "Type ${hili}hq${norm} ${bold}(data)${norm}"
        echo "For example, ${hili}hq 3${norm} would send us the number 3"
        echo "Let's practice that now"
        echo "Use the file-listing command from earlier to find the ${typecolg}script${norm} in this directory."
        echo "Once you have the name, send it to me!"
    elif [ ! "$1" = "myscript.sh" ] #this checks if the player put in a wrong file instead of myscript.sh
    then
        echo "You didnt input the correct file name.  If you are stuck, use the ${hili}hint command${norm}."
    else
        echo "Perfect, you have completed your training you can now ${bold}exit the training area ${norm}and start your first mission."
        echo "1" > "$guide_dir/progress.txt"
        hqlock ..
    fi
elif [ $# -eq 0 ] #this is trying to check if the player put any arguments in for the introduction of the training area
then
    echo "Welcome to the training area"
    echo "Use the command ${hili}ls${norm} to list all the files in a the current directory"
    echo "A ${typecolb}blue${norm} name represents a directory"
    echo "A ${typecolg}green${norm} name represents a script"
    echo "And a ${typecolw}white${norm} name represents a normal file"
    echo "once you find the ${typecolb}directory${norm} enter it using ${hili}cd${norm} then use ${hili}hq${norm} to get your next instructions"
    hqunlock
    #unlock_notebook <script name> <display name>
    unlock_notebook ls ls
fi
