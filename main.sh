#!/bin/bash

# variables
REPO_DIR="/home/maldita/Documents/logger"
FILE_NAME="log.txt"

cd "$REPO_DIR" || exit

# append date
echo "Today is: $(date)" >> "$FILE_NAME"

# commit, and push
git add "$FILE_NAME"
git commit -m "chore: automated date log $(date +'%Y-%m-%d')"
git push origin main
