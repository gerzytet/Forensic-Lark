#!/bin/bash
if [ -t 0 ]
then
    echo "" > $guide_dir/tempfile
else
    cat > $guide_dir/tempfile
fi

if [ -s tempfile ]
then
    checker=$(diff tempfile "$guide_dir/examp")
fi

if [ -t 0 ]
then
echo "Nicely done, these scammers clearly have some poor spending habits."
echo "Luckily it could contain some of their banking information."
echo "Instead of using the find command to search for file we will now using the ${hili}grep${norm} command to search inside of files."
echo "The ${hili}grep${norm} command is more useful in this situation."
echo "This is because ${hili}grep${grep} can search for keywords in file."
echo "Grep can be used like so: ${bold}grep (filter) (file)${norm}"
echo "Then pipe the information into ${hili}hq${norm}."
echo "Try filtering for the word ${bold}bank${norm}."
elif [ "$checker" != "" ]
then
echo "We just received something but it is not what we are looking for, we are looking for the banking information of the scammers."
else
echo "Well done. It may be small but now we have enough information to arrest these scammers."
echo "Call ${hili}hq${norm} in the root agent directory for further instructions."
echo "Get there using ${hili}cd ../../../../../..${norm}"
echo "1" > "$guide_dir/progress.txt"
   #unlock_notebook <script name> <display name>
    unlock_notebook grep grep
hqlock $HQ_DATA_DIR
fi
