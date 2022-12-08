chmod 000 db/brotten-0.sh

if [ -f "$guide_dir/bin/progress.txt" ]
then
    num_brotten=$(find -name brotten* | wc -l)
    if [ $num_brotten -eq 1 ]
    then
        echo "Nicely done, all the brottens have been deleted except for one, The master file."
        echo "The last and main file for brotten is within the db file, and it has used servers admin permissions to allow no one to modily or delete it"
        echo "luckily there is one command that can allow us to change these permissions, go into the db directory for more information on it."
        hqlock ./db
    else
        echo "Well done there are a few brotten files within other folders on this server, instead of going through each file what we will do is use the ${hili}find${norm} command again but with an extension."
        echo "To add the extention onto the the ${hili}find${norm} command to delete the files you simply need to type command as you normally would but instead follow it by ${hili}-delete${norm}."
        echo "Once again call ${hili}hq${norm} again within this directory once the deed has been done."
        unlock_notebook find-delete find-delete
    fi
else
    grepresult="$(grep "brotten" .bashrc)"
    if [ -z "$grepresult" ]
    then
        echo "Good job!"
        echo "I also need you to also clean up the server's maintainance scripts, which are located in the ${hili}bin${norm} directory"
        hqlock ./bin
    else
        echo "The first area we need you to look is the .bashrc file which is hidden because it starts with ."
        echo "Specifically we will need you to edit this file manually using ${hili}vim${norm}."
        echo "${hili}vim${norm} allows you to edit files or scripts, and to start by editing a file with vim you will need to type ${hili}vim${norm} followed by the file you would like to edit."
        echo "Upon entering it you will need to delete the line it is on by using the delete line shortcut ${hili}dd${norm}, once it has been deleted you may leave the vim by pressing the escape key and typing ${hili}:wq${norm}"
        echo "Once finished call us again using ${hili}hq${norm}."
        unlock_notebook vim vim
    fi
fi
