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

echo 0

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

echo 1

numberRegex="^[[:digit:]]+$"
maxValue=$(( (2 ** 16) - 1 ))

if [[ $oldValue =~ $numberRegex && $oldValue -lt "$maxValue" ]]
then
    newValue=$(( oldValue++ ))
else
    newValue=0
fi

echo 2

# apply changes
sed -i "" "s/$oldValue/$newValue/g" "$file"

echo 3

git commit --allow-empty-message -am ''

echo 4

# back to the first dir
cd "$firstPath" || echo "your first path is not correct"

