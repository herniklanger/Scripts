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
  git add .
fi
