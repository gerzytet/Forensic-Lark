if [ -f "customer_db.txt" ]
then
    if [ ! -f "$guide_dir/progress.txt" ]
    then
        echo "What a find!  The entire \"customer\" database is in here!"
        echo "Use less to take a look inside the customer database, then use hq again when you've looked at some of its contents."
        echo "0" > "$guide_dir/progress.txt"
        
        exit 0
    elif [ "$(cat $guide_dir/progress.txt)" = "0" ]
    then
        echo "The higher-ups want to know what the scope of their scamming operation really was."
        echo "To do this, we need to report how many customers there are in the database."
        echo "In the file, each line contains the record for one customer"
        echo "To get the number of customers, we need to use the wc program."
        echo "wc will usually report the number of words in a file, but we can tell it to count the number of lines by using it like so:"
        echo "${hili}wc -l (file)${norm}"
        echo "Figure out how many people have potentially been scammed with ${hili}wc -l${norm}, then report this number back using hq <number>"
        echo "1" > "$guide_dir/progress.txt"
        unlock_notebook wc-l wc-l
    elif [ "$(cat $guide_dir/progress.txt)" = "1" ]
    then
        if [ "$1" = "$(cat ./customer_db.txt | wc -l)" ]
        then
            echo "good job!"
            echo "2" > "$progress"
            echo "To make future work easier, you can use piping to send the output of a command directly to another command (including hq)."
            echo "To send the line count of the customer database straight to hq, use this command:"
            echo "${hili}cat ./customer_db.txt | wc -l | hq${norm}"
            echo "cat will normally just print the file, but using |, you can redirect that to the line-count program.  Using one last pipe, we redirect the output of the line counter to hq"
            echo "Try it now.  Afterwards, I have an assignment for you where this technique is very helpful."
            unlock_notebook pipe piping
        else
            echo "You appear to have the wrong number, or you did not send any number.  Please try again.  It is of critical importance that we report the right information!"
            echo "Remember: use ${hili}hq (number)${norm} to send this information to us"
        fi
    elif [ "$(cat $guide_dir/progress.txt)" = "2" ]
    then
        if [ -t 0 ]
        then
            echo "" > "$guide_dir/tempfile"
        else
            cat > "$guide_dir/tempfile"
        fi
        if [ "$(cat $guide_dir/tempfile)" = "$(cat ./customer_db.txt | wc -l)" ]
        then
            echo "Correct!"
            echo "3" > "$progress"
            echo "Now for the assignment:"
            echo "As it turns out, the customer database contains duplicate records."
            echo "So the line count is greater than the actual number of customers.  We need to filter out duplicate lines to report the true number of customers."
            echo "the uniq command does this.  You can use it with the piping technique:"
            echo "${hili}cat ./customer_db.txt | uniq${norm}"
            echo "will filter out duplicate lines from the file, then print it out"
            echo "Use further piping to get the filtered line count, then send it to hq"
            unlock_notebook uniq uniq
        else
            echo "Wrong answer."
            echo "Remember, the command you should use is:"
            echo "${hili}cat ./customer_db.txt | wc -l | hq${norm}"
        fi
    elif [ "$(cat $guide_dir/progress.txt)" = "3" ]
    then
        if [ -t 0 ]
        then
            echo "" > "$guide_dir/tempfile"
        else
            cat > "$guide_dir/tempfile"
        fi
        if [ "$(cat $guide_dir/tempfile)" = "$(cat ./customer_db.txt | uniq | wc -l)" ]
        then
            echo "Correct!"
            echo "4" > "$progress"
            echo "Now for one final request:"
            echo "I want the customer database, sorted, with unique lines only"
            echo "To sort the information, use the ${hili}sort${norm} command.  Use pipes to input the data into sort."
            echo "For example: ${hili}cat ./customer_db.txt | sort${norm}"
            echo "With this information, we will ponentially be able to refund the victims."
            echo "Don't forget to remove the duplicate lines and pipe the result to hq"
            unlock_notebook sort sort
        else
            echo "Wrong answer."
            echo "Your sequence of commands should look something like this:"
            echo "${hili}cat the database | uniq | line count | hq${nor,}"
        fi
    elif [ "$(cat $guide_dir/progress.txt)" = "4" ]
    then
        if [ -t 0 ]
        then
            echo "" > "$guide_dir/tempfile"
        else
            cat > "$guide_dir/tempfile"
        fi
        if [ "$(cat $guide_dir/tempfile)" = "$(cat ./customer_db.txt | uniq | sort)" ]
        then
            echo "Good work!"
            echo "5" > "$progress"
            echo "There is one other thing I need you to go investigate in the Documents folder"
            echo "Go to the documents folder and run hq for further instructions"
        else
            echo "Wrong answer"
            echo "Remember, you need the following steps:"
            echo "1. cat the database"
            echo "2-3. remove duplicate lines, sort"
            echo "4. pipe to hq"
        fi
    fi
else
    echo "There are some interesting files here...  particularly db_backup_18_11_2022.tar"
    echo "Based on the keywords in that file name, we can take a guess at what its contents are"
    echo "db is usually an abbreviation for database"
    echo "This file is a backup, which means it could be out of date"
    echo "But the file name contains the date 18_11_2022.  This backup was taken late November, so it's recent!"
    echo "finally, this file is .tar.  A tar file is a file that contains other files, usually compressed"
    echo "Putting it all together, this is a recent backup of a database.  However, to be able to look inside, we need to extract the tar file"
    echo "To do this, use the command tar -xf (file)"
fi
