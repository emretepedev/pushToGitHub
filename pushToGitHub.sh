#!/bin/bash

firstPWD=$PWD

# path of repo which is one on github
repoPath="$HOME/pushToGitHub/"

# switch dir to push
cd $repoPath

# push
git push

# back to the first dir
cd $firstPWD
