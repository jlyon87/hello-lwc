#!/bin/bash
# Convert source to mdapi
# Argument 1 is the name of the package you want to convert (like cmc_code).
# Argument 2 is the destination directory for this package.
# Example: "sh scripts/convertMdapiZip.sh gtr-features force-app"

echo "Converting $2/$1 to mdapi package..."
sfdx force:source:convert -r $2/$1 --outputdir mdapi_$1
rm mdapi_$1.zip
zip -r mdapi_$1.zip mdapi_$1 -x "*.DS_Store"
echo "Archived to $1.zip!"
rm -R mdapi_$1
git add mdapi_$1.zip
git commit -o mdapi_$1.zip -m "Convert to mdapi: $1"
echo "Committed to git!"
git push
echo "Pushed to remote!"