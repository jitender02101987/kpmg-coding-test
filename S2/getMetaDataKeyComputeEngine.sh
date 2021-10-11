#!/bin/bash
#set -x

function usage()
{
   echo o "Usage: $0 "Instance-name" "Project" "Zone" should be passed"
   exit 1
}

if [ $# -lt 3 ] ; then
    usage;
    exit 0;
fi;

#function to get the metadata or key of gcp compute instance

function getMetaDataKeyComputeEngine()
{
    gcloud auth activate-service-account --key-file=key/account.json
    export GOOGLE_APPLICATION_CREDENTIALS=key/account.json
    if [ -z $computeinstancekey ]
    then
      value="$(gcloud compute instances describe $computeinstancename --project=$gcpproject --format json --zone=$computeinstancezone --format='value[](metadata.items)')"
      if [ -z $value ]
      then
        printf "Details passed are incorrect.\n"
      else
        echo $value
      fi
    else
      value="$(gcloud compute instances describe $computeinstancename --project=$gcpproject --zone=$computeinstancezone --format='value[](metadata.items.'$computeinstancekey')')"
      if [ -z $value ]
      then 
        printf "Key is not present in metadata.\n"
      else 
        printf '{"'${computeinstancekey}'":"%s"}\n' "$value"
      fi
    fi
}

computeinstancename=$1
gcpproject=$2
computeinstancezone=$3
computeinstancekey=$4

getMetaDataKeyComputeEngine
