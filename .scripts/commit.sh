#!/bin/bash

git add -A
touch .commit

message=$(git diff --staged | sgpt --model "gpt-4" "Generate git commit message, for my changes:\n\n")
if [ $? -eq 0 ]; then
    echo $message | sed -e 's/^"//' -e 's/"$//' > .commit
else
    echo -e "\033[1;31mError generating commit message.\033[0m"
    rm .commit
    exit 1
fi

nano .commit
git commit -F .commit --no-verify
git push --all
rm .commit

echo -e "\033[1;32mCommit complete.\033[0m"