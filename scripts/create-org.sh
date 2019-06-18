#!/bin/sh

# Import defaults
. ./scripts/defaults.sh

# Import functions
. ./scripts/library.sh

# Main script starts here
scratchOrgName=$(prompt_string "Enter a name")
create_org $scratchOrgName $duration $scratchDefPath $dataPath $permsetName