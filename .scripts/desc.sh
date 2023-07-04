#!/bin/bash

latest_tag=$(git tag | sort -V | tail -n 1)
commit_range="$latest_tag..HEAD"

git log --oneline --pretty=%s%n%b "$commit_range"