#!/bin/bash

path=$1
old_com=$2
new_com=$3

if [[ -z "$1" ]] | [[ -z "$2" ]] | [[ -z "$3" ]]; then
#    echo "Veuillez renseigner un chemin vers le dossier local."
   echo "Please give :"
   echo "    - The path of the application on your local mahine."
   echo "    - The source commit (the commit you want to compare to most advanced)."
   echo "    - The reference commit (the commit the most recent you have)."
   echo "--------------------------------------------------"
   echo "How to give arguments :"
   echo "./DiffCommit_commit.sh <applicationpath> <oldcommit> <recentcommit>"
   exit
fi

cd $path

concat=$old_com".."$new_com 
echo $concat
commit_diff="$(git rev-list --count  $concat)"

echo $commit_diff
