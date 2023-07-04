git add .
git diff --staged | sgpt "Generate git commit message, for my changes" | git commit -F -
git push --all