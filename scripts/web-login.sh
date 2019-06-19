#!/bin/bash

# Import functions
. ./scripts/lib/library.sh

devHubName=$(prompt_string "Enter Dev Hub Name")
web_login $devHubName