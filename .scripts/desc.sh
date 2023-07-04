#!/bin/bash

latest_tag=$(git tag | sort -V | tail -n 1)
commit_range="$latest_tag..HEAD"

git log --oneline --pretty=%s%n%b "$commit_range" | sgpt "Create version description according to the rules outlined in 'Keep a Changelog', return only a description of the changes without any additional information. " | git commit -F -
