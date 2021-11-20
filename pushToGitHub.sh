#!/bin/bash

firstPWD=$PWD
repoPath="$HOME/pushToGitHub/"
cd $repoPath

filePath="./someChanges.txt"
oldValue=$( cat ${filePath} )

if [[ -z $oldValue ]]
then
    sed -i "s/^$/0/" ${filePath}

    exit 0
fi

numberRegex="^[[:digit:]]+$"
maxValue=$(( (2 ** 16) - 1 ))
if [[ $oldValue =~ $numberRegex && $oldValue -lt $maxValue ]]
then
    newValue=$(( ${oldValue} + 1 ))
else
    newValue=0
fi

sed -i "s/${oldValue}/${newValue}/g" ${filePath}

git commit --allow-empty-message -am '' && git push

cd $firstPWD
