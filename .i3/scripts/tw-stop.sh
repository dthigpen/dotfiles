#!/bin/bash

#Stops all currently active tasks

id=$(task +ACTIVE _id)
#turn into array, split id output by newline
IFS=$'\n' read -r -d '' -a active_ids <<< "$id"
declare -a elapsed
for i in "${active_ids[@]}"
do
  task $i stop
done
