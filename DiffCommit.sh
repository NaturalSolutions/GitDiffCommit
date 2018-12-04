#!/bin/bash


path=$1
remote=$2

bool1=false

if [[ -z "$1" ]]; then
#    echo "Veuillez renseigner un chemin vers le dossier local."
   echo "Please give a local path to repository you want to check."
   echo "If no remote/branch is given, automated detection will be performed:"
   echo "format : origin/<detectedBranch>"
   echo "warning : detection will not work on detached HEAD"
   echo "--------------------------------------------------"
   echo "How to give arguments :"
   echo "./test.sh <pathToLocalDirectory> <remoteRepository/branch>"
   exit
fi

cd $path

if [[ -z "$2" ]]; then
   echo "No remote/branch argument given, automated detection activated.";
   autoremote="$(git branch | grep \* | cut -d ' ' -f2)"
   autoremote="origin/"$autoremote
fi



local_hash="$(git rev-parse HEAD)"
remote_hash="$(git rev-parse $remote)"

concat=$local_hash".."$remote_hash 

commit_diff="$(git log --pretty=oneline  $concat | wc -l)"

echo $commit_diff
