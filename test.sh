#!/bin/bash

branches=$(git branch)
if [ $? != 0 ]
  then
  exit
fi

branches=${branches//[* ]/}

echo "branches:" 
echo "$branches"

changes=$(git diff --name-only)
echo "$changes"

if [ -z "$changes" ]
  then
  echo "${branches[0]} no uncommidet changes."
  else
#  git add .
#  git commit -m "this is auto commidet"
#  if [0]
#    then
#    autobransh="${branches[0]}--autogen"
#    git checkout -b $autobransh
#    git push --set-upstream origin test
#  fi
fi
