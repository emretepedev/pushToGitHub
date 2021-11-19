# !/bin/sh

firstPWD=$PWD
path="$HOME/toGitHub"

cd $path

filePath="./someChanges.txt"
oldValue=$( cat ${filePath} )
newValue=$(( ${oldValue} + 1 ))

sed -i "s/${oldValue}/${newValue}/g" ${filePath}

git commit -a --allow-empty-message -m ''
git push

cd $firstPWD
