#!/bin/bash

git add -A
git diff --staged | sgpt --model "gpt-4" "Generate git commit message, for my changes:\n\n" | git commit -F -
git push --all