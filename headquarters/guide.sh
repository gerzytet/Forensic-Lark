#!/bin/bash
if [ -f "$guide_dir/dubai_technology_associates/Documents/.files/2021/June/22/progress.txt" ]
then
    echo "stuff about naples nutri"
    echo "Now go there and fix it"
    hqlock ./naples_nutri
elif [ -f "$guide_dir/training_area/progress.txt" ]
then
    echo "Now with your basic training done, It's time for your ${bold}first mission${norm}"
    echo "Several Florida residents have been tricked by 'Dubai Technology Associates', which operate download website with fake popups claiming that your computer has been infected."
    echo "The popups show a number, and if you call it, they will convince you that you must pay them a large sum of money to fix the problem."
    echo "We have obtained the ${bold}contents of one of the scammer's computers${norm}"
    echo "Our goal is to find the information we need to ${bold}reverse the fraudulent transactions${norm}"
    echo "You will need more commands than the basic training covered, but I will show you them as we go along."
    echo "Continue running ${hili}hq${norm} in every new directory."
    echo "The contents of the computer are located at the ${hili}dubai_technology_associates${norm} directory.  Good luck!"
    hqunlock
else
    echo "Welcome to your basic training"
    echo "We're very glad to have you here... My desk is piling up with new cases, and our staffing issue isn't helping anything!"
    echo "I will be training you in everything you need to know to investigate"
    echo -e "use\ncd training_area\nto enter the training area"
    echo "Then run the hq command to get further instructions."
    hqlock ./training_area
fi
