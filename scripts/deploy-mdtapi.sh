#!/bin/bash

# Import functions
. ./scripts/lib/library.sh

orgName=$(prompt_string "Enter Org Name")
convert_deploy_mdtapi $orgName