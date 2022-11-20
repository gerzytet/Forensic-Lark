#!/bin/bash

if [ $# -ge 1 ]
then
checker=$(diff $1 examp)
fi

if [ $# -eq 0 ]
then
echo "Nicely done, these scammers clearly have some poor spending habits."
echo "Luckily with this it could contain their banking information"
echo "Gawk seems like it would work here but instead you will be using a different command"
echo "You will be using grep, the grep command is more useful in this situation"
echo "This is because grep does not require as many parameters"
echo "Grep can be like so, grep (what your searching for) (file searching in)"
echo "When using grep do not include the parthesis"
echo "Then tunnel the information into hq, to do this simply type (| hq) after the grep, it will look like this"
echo "grep (filter) (file) | hq"
echo "Due to how simple minded the scammers are try filtering for the word bank"
elif [ "$checker" != "" ]
then
echo "We just recieved something but its bit what we are looking for, we are looking for the banking information of the scammers"
else
echo "Well done it may be small but now we have enough information to arrest these scammers"
echo "NOTE FOR CRAIG AND I: i dont know where to go from here my assumption is that we either look for something else or we go to the next assignment but neither of those are planned out so when we get there ill add something"
fi
