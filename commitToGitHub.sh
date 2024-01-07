#!/bin/bash

# path of the first dir
firstPath=$PWD

# path of the repository
repoPath="$HOME/pushToGitHub/"

# switch dir to commit
cd "$repoPath" || (echo "your repository path is not correct" && exit)

file="./someChanges.txt"

# check that file is exists
if ! [ -f "$file" ]
then
    touch "$file"
    echo 0 > "$file"
fi

# get number from file
oldValue=$( cat "$file" )

# check that number is exists
if [ -z "$oldValue" ]
then
    rm -rf "$file"
    touch "$file"
    echo 0 > "$file"
    oldValue=$( cat "$file" )
fi

numberRegex="^[[:digit:]]+$"
maxValue=$(( (2 ** 16) - 1 ))

# increment to number if it is number and lower than max value
if [[ "$oldValue" =~ $numberRegex && "$oldValue" -lt "$maxValue" ]]
then
    newValue=$(( oldValue + 1 ))
else
    newValue=0
fi

# apply changes
if [[ $OSTYPE == 'darwin'* ]]
then
    sed -i "" "s/$oldValue/$newValue/g" "$file"
else
    sed -i "s/$oldValue/$newValue/g" "$file"
fi

# take a commit
git commit -S --allow-empty-message -am ''

# back to first dir
cd "$firstPath" || echo "your first path is not correct"

