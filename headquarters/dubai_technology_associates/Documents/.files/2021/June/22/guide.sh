#!/bin/bash
hili=$(tput setab 1)
bold=$(tput bold)
norm=$(tput sgr0)

cat > $guide_dir/tempfile
if [ -s tempfile ]
then
checker=$(diff tempfile "$guide_dir/examp")
fi

if [ $# -eq 0 ]
then
echo "Nicely done, these scammers clearly have some poor spending habits."
echo "Luckily with this it could contain their banking information."
echo "${hili}Gawk${norm} seems like it would work here but instead you will be using a different command."
echo "You will be using ${hili}grep${norm}, the ${hili}grep${norm} command is more useful in this situation."
echo "This is because ${hili}grep${grep} can search for keywords in file."
echo "Grep can be used like so: {bold}grep (filter) (file){norm}"
echo "Then pipe the information into ${hili}hq${norm}."
echo "Try filtering for the word ${bold}bank${norm}."
elif [ "$checker" != "" ]
then
echo "We just received something but it is not what we are looking for, we are looking for the banking information of the scammers."
else
echo "Well done. It may be small but now we have enough information to arrest these scammers."
echo "Call ${hili}hq${norm} in the techsupport_scam directory for further instructions."
echo "1" > "$guide_dir/progress.txt"
fi
