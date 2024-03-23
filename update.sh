#!/bin/bash

commit_msg="New Update"

if [ -z "$1" ]; then
    read -p "Enter commit message (default: 'New Update'): " commit_msg
    if [ -z "$commit_msg" ]; then
        commit_msg="New Update"
    fi
else
    commit_msg="$1"
fi

git checkout dev
git add .
git commit -m "$commit_msg"
git checkout main
echo "Fetching new changes..."
git fetch
echo "Merging new changes..."
git merge
echo "Merging Your Changes..."
git merge dev
echo "Pushing new changes..."
git push -u origin
git branch -d dev
git branch dev
git checkout dev
