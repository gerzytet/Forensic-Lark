if [ -f "$guide_dir/db/progress.txt" ]
then
    if ["$(cat $guide_dir/db/progress.txt)" = "5"]
    then
        echo "There's a hidden directory here containing more of the scammer's files.  We must investigate"
        echo "Hidden directories have names that start with ., and by default, they hide themselves from the ls command"
        echo "To ${bold}reveal hidden directories${norm} use ${hili}ls -A${norm}"
    fi
else
    echo "${bold}db${norm} usually stands for database... This could be useful to us"
    echo "Take a look inside!"
fi