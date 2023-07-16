#!/bin/bash

git add -A
touch .commit
git diff --staged | sgpt --model "gpt-4" "Generate git commit message, for my changes:\n\n" > .commit
vim .commit
git commit -F .commit --no-verify
git push --all
rm .commit