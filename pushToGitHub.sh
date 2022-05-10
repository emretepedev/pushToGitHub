#!/bin/bash

# path of the first dir
firstPath=$PWD

# path of the repository
repoPath="$HOME/pushToGitHub/"

# switch dir to push
cd $repoPath

# push
git push

# back to the first dir
cd $firstPath
