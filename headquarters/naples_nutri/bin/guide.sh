grepresult1="$(grep "brotten" checkstatus.sh)"
grepresult2="$(grep "brotten" cleanup.sh)"
grepresult3="$(grep "brotten" restart.sh)"
count=0

if [ ! -z "$grepresult1" ]
then
    (( count += 1 ))
fi
if [ ! -z "$grepresult2" ]
then
    (( count += 1 ))
fi
if [ ! -z "$grepresult3" ]
then
    (( count += 1 ))
fi

if [ $count -eq 0 ]
then
    echo "Well done the brotten files are gone, go back to the nutri_naples directory for your next objective."
    echo "1" > "$guide_dir/progress.txt"
    hqlock ..
else
    echo "You did not fix it yet, if you dont get rid of it, then the brotten will spread again."
    echo "$count still broken"
fi
