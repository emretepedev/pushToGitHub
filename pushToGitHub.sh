#!/bin/bash

firstPWD=$PWD
repoPath="$HOME/pushToGitHub/"
cd $repoPath

git push

cd $firstPWD
