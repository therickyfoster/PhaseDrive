#!/bin/bash
echo "Auto-deploying project..."
git config --global core.autocrlf input
git config --global user.name "Ricky Foster"
git config --global user.email "therickyfoster@outlook.com"
branch="main"
git checkout -B $branch
git fetch origin
git pull --rebase origin $branch
git add .
git commit -m "Auto-sync update"
git push origin $branch
echo "Deployment complete."
