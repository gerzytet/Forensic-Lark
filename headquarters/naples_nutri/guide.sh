if [ -f "$guide_dir/bin/progress.txt" ]
then
    chmod 000 db/brotten-0.sh
    num_brotten=$(find -name brotten* | wc -l)
    if [ $num_brotten -eq 1 ]
    then
        echo "Yay, now go to db and remove the brotten final boss"
        hqlock ./db
    else
        echo "remove all the brotten files"
    fi
else
    grepresult="$(grep "brotten" .bashrc)"
    if [ -z "$grepresult" ]
    then
        echo "move on to bin"
        hqlock ./bin
    else
        echo ".bashrc looks brotten..."
        echo "fix it"
    fi
fi