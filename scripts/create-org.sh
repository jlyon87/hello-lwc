#!/bin/sh

# Import functions
. ./scripts/library.sh

# Defaults

duration=10
scratchDefPath="config/project-scratch-def.json"
dataPath="data/Account-Contact-plan.json"
permsetName="TrainingApp"

# Main script starts here

scratchOrgName=$(prompt_string "Enter a name")

create_org $scratchOrgName $duration $scratchDefPath $dataPath $permsetName