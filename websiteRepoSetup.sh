#! /bin/bash
#usage ./websiteRepoSetup.sh dirName pairInitial1 pairInitial2
mkdir ~/Desktop/$1
mkdir ~/Desktop/$1/css
mkdir ~/Desktop/$1/img
mkdir ~/Desktop/$1/js
touch ~/Desktop/$1/css/styles.css
touch ~/Desktop/$1/js/scripts.js
cp ./index.html ~/Desktop/$1/
cd ~/Desktop/$1
git init
git pair $2 $3
git add .
git-pair-commit -m "create initial css folder with styles.css, js folder with scripts.js, img folder, and index.html"
atom .
