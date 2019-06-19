#!/bin/bash

# Import Dependencies
. ./scripts/lib/utilities.sh
. ./scripts/lib/sfdx.sh

init_scratch_org () {
  alias=$1
  configPath=$2
  dataPath=$3
  permsetName=$4
  duration=${5:-10}

  delete_org $alias
  create_org $alias $duration $configPath
  source_push $alias
  data_import $alias $dataPath
  assign_permset $alias $permsetName
}
