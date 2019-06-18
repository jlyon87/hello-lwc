#!/bin/bash
# Delete scratch org, create scratch org, push source, assign permset.
# Argument 1 is the alias of the scratch org you're recreating.
# Example: "sh scripts/recreateScratchOrg.sh gtronboarding"

echo "Deleting $1..."
sfdx force:org:delete -u $1 -p
echo "Recreating $1..."
sfdx force:org:create -f config/project-scratch-def.json -d 14 -a $1
echo "Setting $1 to default scratch org..."
sfdx force:config:set defaultusername=$1
echo "Pushing source to $1..."
sfdx force:source:push -u $1
echo "Assigning permset to $1..."
sfdx force:user:permset:assign -n GTR_Onboarding -u $1
# echo "Running initial Apex..."
# sfdx force:apex:execute -f scripts/initialApex.apex
#echo "Generate a Password for a Scratch Org User"
#sfdx force:user:password:generate --targetusername <username>test-sehzfuh6loyq@example.com