if [ -f "brotten-0.sh" ]
then
        echo "As we were saying, the command you will need to use if the ${hili}chmod${norm} command."
        echo "${hili}chmod${norm} allows the user to edit the permission on a file."
        echo "There are 2 ways use ${hili}chmod${hili}, the letter method and the octal method, we will be using the ${bold}octal method${norm}."
        echo "This method allows us to use 3 numbers to edit who can use the file, the syntax of ${hili}chmod${norm} is as follows"
        echo "${bold}chmod 000 (filename)${norm}"
        echo "Each permission is given using those 3 digits before the file name (in this case its 000), the first digit corresponds to the owner, the second digit corresponds to the group and the third digit corresponds to everyone else."
        echo "Once you have changed the permissions, use ${bold}rm (file)${norm} to delete the file"
        echo "The octal values will be ${bold}within you notebook${norm} under ${hili}chmod${norm}."
        echo "Once completed call ${hili}hq${norm} within this directory."
        unlock_notebook chmod chmod
        unlock_notebook rm rm
else
    echo "${bold}You win yay!${norm}"
    echo "${bold}hope you enjoyed our lark.${norm}"
    hqunlock
fi
