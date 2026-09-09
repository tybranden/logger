#!/bin/bash

REPO_DIR="/home/maldita/Documents/logger"
FILE_NAME="log.txt"

cd "$REPO_DIR" || exit

echo "Today is: $(date)" >> "$FILE_NAME"

git add "$FILE_NAME"
git commit -m "chore: automated date log $(date +'%Y-%m-%d')"
git push origin main
