#!/bin/bash
allBranches=`git branch`
echo $allBranches
for branch in $allBranches
do
    if [[ "master" != $branch &&  "dev" != $branch ]];
    then
        echo `git branch -D "$branch"`
    fi
done
