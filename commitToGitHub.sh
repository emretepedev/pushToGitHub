#!/bin/bash

# path of first dir
firstPath=$PWD

# path of the repository
repoPath="$HOME/pushToGitHub/"

# switch dir to push
cd $repoPath

file="./someChanges.txt"

if ! [ -f $file ]
then
    touch $file
    echo 0 > $file
fi

oldValue=$( cat $file )

if [ -z $oldValue ]
then
    echo 0 > $file
    git commit --allow-empty-message -am ''
    exit
fi

numberRegex="^[[:digit:]]+$"
maxValue=$(( (2 ** 16) - 1 ))
if [[ $oldValue =~ $numberRegex && $oldValue -lt $maxValue ]]
then
    newValue=$(( ${oldValue} + 1 ))
else
    newValue=0
fi

sed -i "s/$oldValue/$newValue/g" $file

git commit --allow-empty-message -am ''

# back to the first dir
cd $firstPath
