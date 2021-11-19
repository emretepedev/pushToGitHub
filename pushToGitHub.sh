# !/bin/sh

firstPWD=$PWD
repoPath="$HOME/pushToGitHub/"
cd $repoPath

filePath="./someChanges.txt"
oldValue=$( cat ${filePath} )

re="^[0-9]+$"
if ! [ $oldValue =~ $re ] || [ $oldValue > 2 ** 16 ];
then
    echo 'ife girdi'
  newValue=0;
else
    echo 'else girdi'
  newValue=$(( ${oldValue} + 1 ));
fi

echo $oldValue;
echo $newValue;

sed -i "s/${oldValue}/${newValue}/g" ${filePath}

git commit --allow-empty-message -am '' && git push

cd $firstPWD
