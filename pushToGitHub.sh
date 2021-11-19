# !/bin/sh

filePath="./someChanges.txt"
oldValue=$( cat ${filePath} )
newValue=$(( ${oldValue} + 1 ))

sed -i "s/${oldValue}/${newValue}/g" ${filePath}

exit 1
