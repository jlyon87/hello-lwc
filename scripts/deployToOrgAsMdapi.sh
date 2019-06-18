#!/bin/bash
# Convert source to mdapi
# Argument 1 is the directory (under force-app) you want to deploy.
# Argument 2 is the alias of the org you are targeting.

echo "Deploying $1 to $2..."
sfdx force:source:convert -r force-app/$1 --outputdir mdapi_$1
sfdx force:mdapi:deploy -d mdapi_$1 -u $2 -w 5
rm -R mdapi_$1
echo "Removed the mdapi_$1 folder."