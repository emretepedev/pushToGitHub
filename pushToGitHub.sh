# !/bin/sh

firstPWD=$PWD
repoPath="$HOME/pushToGitHub/"
cd $repoPath

filePath="./someChanges.txt"
oldValue=$( cat ${filePath} )
newValue=$(( ${oldValue} + 1 ))

sed -i "s/${oldValue}/${newValue}/g" ${filePath}

git commit --allow-empty-message -am '' && git push

cd $firstPWD
