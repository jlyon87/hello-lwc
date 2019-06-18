#!/bin/sh

prompt_string() {
  read -p "$@: " stringInput
  echo $stringInput
}

create_org() {
  alias=$1
  duration=$2
  configPath=$3
  dataPath=$4
  permsetName=$5

  echo "*** Removing old scratch org, $alias"
  sfdx force:org:delete -p -u $alias
  echo "*** Creating scratch Org. Alias: $alias, for $duration days."
  sfdx force:org:create -s -a "$alias" -d $duration -f "$configPath"
  echo "*** Pushing metadata to $alias"
  sfdx force:source:push
  echo "*** Creating data from $dataPath to $alias"
  sfdx force:data:tree:import -u $alias -p $dataPath
  echo "*** Assigning $permsetName Permission Set in $alias"
  sfdx force:user:permset:assign -n $permsetName -u $alias
}