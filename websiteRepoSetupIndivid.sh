#! /bin/bash
#usage ./websiteRepoSetup.sh dirName "userName" emailAddress
mkdir ~/Desktop/$1
mkdir ~/Desktop/$1/css
mkdir ~/Desktop/$1/img
mkdir ~/Desktop/$1/js
touch ~/Desktop/$1/css/styles.css
touch ~/Desktop/$1/index.html
touch ~/Desktop/$1/js/scripts.js
cp ./index.html ~/Desktop/$1/
cd ~/Desktop/$1
git init
git config --global user.name $2
git config --global user.email $3
git add .
git commit -m "create initial css folder with styles.css, js folder with scripts.js, img folder, and a template index.html"
atom .
