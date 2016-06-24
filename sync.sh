#!/bin/zsh

BRANCH=3.3

git fetch orchestra
git merge --squash orchestra/$BRANCH

git rm -r resources/assets/sass
git rm -r docs/
