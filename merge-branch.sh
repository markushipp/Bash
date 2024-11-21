#!/bin/bash

echo "Enter the branch name you want to merge into main branch"

read branch

git checkout main

git merge $branch

git push origin main

echo "Branch $branch has been merged into main branch"

echo "Do you want to delete the branch $branch? (y/n)"

read delete

if [ "$delete" = "y" ]
then
    git branch -d $branch
    git push origin --delete $branch
    echo "Branch $branch has been deleted"
else
    echo "Branch $branch has not been deleted"
fi

