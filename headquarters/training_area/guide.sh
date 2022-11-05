#!/bin/bash
if [ -f /a_directory/progress.txt  ]; #this checks if the player learned cd yet
then
echo "Good, now before we conclude your training we will need to teach you the last and one of the most important things"
echo "We will teach you how to send files and directories to us."
echo "It is a very simple process to send a file and or directory to us, you must type hq (the name of the file or directory)"
echo "This is called passing through and can be done with not only us but with functions as well."
echo "Send us the myscript.sh file."
elif [ $1 -eq myscript.sh ]; #this checks if the player passed in myscript.sh this completeing the training
echo "Perfect, you have completed your training you can now exit the training area and start your first mission."
exit
#i do not understand the progress.txt files but you will need to insert one here
echo "1" > "$guide_dir/progress.txt"
elif [ $# -eq 0 ]; #this is trying to check if the player put any arguments in for the introduction of the training area
echo "Welcome to the training area"
echo "I told you the name of the file but you will not always know in the investagation"
echo "Use the command ls to list all the files in a the current directory"
echo "A blue name represents a directory"
echo "A green name represents a script"
echo "And a white name represents a normal file"
echo "once you find the directory enter it using cd then use hq to get your next instructions"
exit
elif [ $1 -ne myscript.sh ]; #this checks if the player put in a wrong file instead of myscript.sh
echo "You didnt input the correct file, try inputing myscript.sh"
fi