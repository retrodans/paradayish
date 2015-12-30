#!/bin/bash
# Update Jekyll

CURRENTPATH=/var/www/paradayish
FILEPATH=/bin/test.txt
FULLFILEPATH=$CURRENTPATH$FILEPATH
echo $FULLFILEPATH

# Preperation
cd $CURRENTPATH
git checkout gh-pages
git reset --hard origin/gh-pages

# Get current date, and update files
DATE=$(date +%Y%m%d:%T)
echo $DATE
echo $DATE > $FULLFILEPATH

# Commit and push the new file to git
git add bin/test.txt
git commit -m "Updating test file so we rebuild github-pages $DATE"
git push origin gh-pages
