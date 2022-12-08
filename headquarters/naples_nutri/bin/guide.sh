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
    echo "Well done the brotten files are gone, go back to the naples_nutri directory for your next objective."
    echo "1" > "$guide_dir/progress.txt"
    hqlock ..
else
    echo "There are 3 files in this directory that are infected with brotten.  Remove the brotten lines, and call me whan you're done."
    echo "$count scripts still broken"
fi
