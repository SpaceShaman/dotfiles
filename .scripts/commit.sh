#!/bin/bash

git add -A
git diff --staged | sgpt "Create commit description according to the rules outlined in 'Keep a Changelog', return only a description of the changes without any additional information. " | git commit -F -
git push --all