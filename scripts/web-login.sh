#!/bin/sh

# Import defaults
. ./scripts/lib/defaults.sh

# Import functions
. ./scripts/lib/library.sh

devHubName=$(prompt_string "Enter Dev Hub Name")
web_login $devHubName