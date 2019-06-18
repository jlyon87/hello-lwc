SETLOCAL EnableExtensions EnableDelayedExpansion
@ECHO off

SET scratchOrgName=%1
ECHO %scratchOrgName%

if "%scratchOrgName%"=="" (
    ECHO scratchOrgName is NULL. Expecting first argument string name.
    EXIT /B 5
)


REM REM Execute in PC using: ./scripts/CreateOrg.bat
echo "*** Creating scratch Org..."
call sfdx force:org:create -s -a %scratchOrgName% -d 30 -f ../config/project-scratch-def.json
echo "*** Pushing metadata to scratch Org..."
call sfdx force:source:push
echo "*** Creating data from Account-Contact-plan.json"
call sfdx force:data:tree:import -u %scratchOrgName% -p ../data/Account-Contact-plan.json
echo "*** Assigning TrainingApp Permission Set"
call sfdx force:user:permset:assign -n TrainingApp -u %scratchOrgName%

ENDLOCAL