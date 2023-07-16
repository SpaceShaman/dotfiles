#!/bin/bash

touch commit
git add -A
git diff --staged | sgpt --model "gpt-4" "Generate git commit message, for my changes:\n\n" > commit
nano commit
git commit -F commit
git push --all