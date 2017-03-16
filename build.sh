#!/bin/bash
bundle exec jekyll serve
echo 'Synching Git Repo'
git add .
git status
read -p 'Git message' mesg
git commit -m \'$mesg\'
git push source origin master
