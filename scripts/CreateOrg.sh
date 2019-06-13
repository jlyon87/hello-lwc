# Execute in Mac using: ./scripts/CreateOrg.sh
echo "*** Creating scratch Org..."
sfdx force:org:create -f config/project-scratch-def.json -s -u hello-lwc -f config/project-scratch-def.json
echo "*** Pushing metadata to scratch Org..."
sfdx force:source:push
echo "*** Creating data from Account-Contact-plan.json"
sfdx force:data:tree:import -u hello-lwc -p data/Account-Contact-plan.json
echo "*** Assigning TrainingApp Permission Set"
sfdx force:user:permset:assign -n TrainingApp -u hello-lwc