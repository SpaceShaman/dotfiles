#!/bin/bash

git add -A
git diff --staged | sgpt "Create commit description according to the rules outlined in 'Keep a Changelog', please don't include anything other than a description of your changes in your answer." | git commit -F -
git push --all