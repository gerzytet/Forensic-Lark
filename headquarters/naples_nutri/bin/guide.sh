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
    echo "brotten files fixed, go back"
    echo "1" > "$guide_dir/progress.txt"
    hqlock ..
else
    echo "fix the brotten scripts... OR ELESE"
    echo "$count still broken"
fi
