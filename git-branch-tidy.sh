#!/bin/bash

# Update local repository state
git fetch -p

# Determine the main branch (main or master)
if git show-ref --verify --quiet refs/heads/main; then
    main_branch="main"
elif git show-ref --verify --quiet refs/heads/master; then
    main_branch="master"
else
    echo "Neither 'main' nor 'master' branch exists."
    exit 1
fi

# Get current branch
current_branch=$(git symbolic-ref --short HEAD)

# Delete local branches that have been merged into main/master
# and whose remote branches no longer exist
echo "The following local branches will be deleted:"
git branch --merged "$main_branch" | grep -v "^\*" | grep -v "$main_branch" | while read branch; do
    # Check if remote branch exists
    if ! git ls-remote --exit-code . "origin/$branch" >/dev/null 2>&1; then
        echo "$branch"
    fi
done

# Prompt for confirmation
read -p "Do you want to proceed with deletion? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Perform the actual deletion
    git branch --merged "$main_branch" | grep -v "^\*" | grep -v "$main_branch" | while read branch; do
        if ! git ls-remote --exit-code . "origin/$branch" >/dev/null 2>&1; then
            git branch -d "$branch"
        fi
    done
    echo "Branches have been cleaned up!"
else
    echo "Operation cancelled"
fi