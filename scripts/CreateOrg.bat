REM Execute in PC using: ./scripts/CreateOrg.bat
echo "*** Creating scratch Org..."
call sfdx force:org:create -s -a hello-lwc -d 30 -f ../config/project-scratch-def.json
echo "*** Pushing metadata to scratch Org..."
call sfdx force:source:push
echo "*** Creating data from Account-Contact-plan.json"
call sfdx force:data:tree:import -u hello-lwc -p ../data/Account-Contact-plan.json
echo "*** Assigning TrainingApp Permission Set"
call sfdx force:user:permset:assign -n TrainingApp -u hello-lwc