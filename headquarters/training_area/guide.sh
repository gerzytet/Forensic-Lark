#!/bin/bash
hili=$(tput setab 1)
typecolb=$(tput setaf 4)
typecolg=$(tput setaf 2)
typecolw=$(tput setaf 7)
bold=$(tput bold)
norm=$(tput sgr0)

if [ -f "$guide_dir/a_directory/progress.txt" ] #this checks if the player learned cd yet
then
    if [ $# -eq 0 ]
    then
        echo "Good, now before we conclude your training we will need to teach you the last and one of the most important things"
        echo "We will teach you how to send files and directories to us."
        echo "It is a very simple process to send a file and or directory to us, you must type ${hili}hq${norm} ${bold}(the name of the file or directory)${norm}"
        echo "This is called passing through and can be done with not only us but with functions as well."
        echo "Send us the ${bold}myscript.sh${norm} file."    
    elif [ ! "$1" = "myscript.sh" ] #this checks if the player put in a wrong file instead of myscript.sh
    then
        echo "You didnt input the correct file, try inputing ${bold}myscript.sh ${norm}"
    else
        echo "Perfect, you have completed your training you can now ${bold}exit the training area ${norm}and start your first mission."
        echo "1" > "$guide_dir/progress.txt"
    fi
elif [ $# -eq 0 ] #this is trying to check if the player put any arguments in for the introduction of the training area
then
    echo "Welcome to the training area"
    echo "Use the command ${hili}ls${norm} to list all the files in a the current directory"
    echo "A ${typecolb}blue name${norm} represents a directory"
    echo "A ${typecolg}green name${norm} represents a script"
    echo "And a ${typecolw}white${norm} name represents a normal file"
    echo "once you find the directory enter it using ${hili}cd${norm} then use ${hili}hq${norm} to get your next instructions"
fi
