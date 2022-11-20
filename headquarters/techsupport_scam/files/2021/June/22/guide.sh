#!/bin/bash
cat > tempfile
if [ -s tempfile ]
then
checker=$(diff $1 "$guide_dir/examp")
fi

if [ $# -eq 0 ]
then
echo "Nicely done, these scammers clearly have some poor spending habits."
echo "Luckily with this it could contain their banking information"
echo "Gawk seems like it would work here but instead you will be using a different command"
echo "You will be using grep, the grep command is more useful in this situation"
echo "This is because grep does not require as many parameters"
echo "Grep can be like so, grep (filter) (file)"
echo "When using grep do not include the parenthesis"
echo "Then pipe the information into hq."
echo "Due to how simple minded the scammers are try filtering for the word bank."
elif [ "$checker" != "" ]
then
echo "We just received something but it is not what we are looking for, we are looking for the banking information of the scammers."
else
echo "Well done. It may be small but now we have enough information to arrest these scammers."
echo "Call hq in the techsupport_scam directory for further instructions."
echo "1" > "$guide_dir/progress.txt"
fi
