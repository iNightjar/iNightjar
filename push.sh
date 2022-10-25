#!/bin/bash

# Pushing Changes to Your Remote Repo

echo -e "\e[0;35m############################# \e[0m"
echo -e "\e[0;35m#      Push Your Changes      # \e[0m"
echo -e "\e[0;35m############################# \e[0m"

# get branch name (e.g master, main, etc... ) #
Branch=$(git branch --show-current) 

# get new updates if it founded #
echo ""
echo "#################"
echo "# Updating Repo #"
echo "#################"
git pull 


echo ""
echo "##################################"
echo "# Adding new changes to the repo #"
echo "##################################"
git add --all .

if [ "$1" == "-m" ];
then
    # commit changes#
    echo ""
    git commit -m "$2"
else
    # read commit comment from user #
    echo ""
    echo "##################################"
    echo "# Write your commit comment! :-  #"
    read yourCommit

    # commit changes#
    echo ""
    git commit -m "$yourCommit"
fi

# push to repo #
echo ""
git push -u origin $Branch

echo ""
echo -e "\e[0;35m########################### \e[0m"
echo -e "\e[0;35m#      Branch Published       # \e[0m"
echo -e "\e[0;35m########################### \e[0m"
