#!/bin/sh
# Convert a build number to a sha#
# Author:  Andi Smithers, The Walt Disney Company.
# Created: Dec 2012
# MIT License : https://github.com/Bolloxim/git-sha-to-build-number/blob/main/LICENSE

if [ -z $1 ]; then
  echo need a build number
  exit 1
fi

build=$1
latest=`git rev-list --count HEAD`
difference=`expr ${latest} - ${build}`
#echo $difference
sha=`git rev-list -n 1 --skip ${difference} HEAD`

echo sha# number : $sha
echo $sha | pbcopy
echo -----------------

git log -n 1 $sha
