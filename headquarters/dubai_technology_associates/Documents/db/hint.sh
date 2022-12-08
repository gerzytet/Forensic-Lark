if [ ! -f "$guide_dir/progress.txt" ]
then
    echo "use ${hili}tar -xf db_backup_18_11_2022.tar${norm}"
else
    if [ "$(cat $guide_dir/progress.txt)" = "0" ]
    then
        echo "Use ${hili}less customer_db.txt${norm} to look at the database"
    elif [ "$(cat $guide_dir/progress.txt)" = "1" ]
    then
        echo "use ${hili}wc -l customer_db.txt${norm}"
        echo "Then, send the number you get to hq with ${hili}hq (number)${norm}"
    elif [ "$(cat $guide_dir/progress.txt)" = "2" ]
    then
        echo "${hili}cat customer_db.txt | wc -l | hq${norm}"
    elif [ "$(cat $guide_dir/progress.txt)" = "3" ]
    then
        echo "use ${hili}cat customer_db.txt | uniq | wc -l | hq${norm}"
    elif  [ "$(cat $guide_dir/progress.txt)" = "4" ]
    then
        echo "use ${hili}cat customer_db.txt | uniq | sort | hq${norm}"
    fi
fi