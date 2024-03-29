#!/bin/sh
# convert a git sha# to a linear build number
# Author:  Andi Smithers, The Walt Disney Company.
# Created: Dec 2012
# MIT License : https://github.com/Bolloxim/git-sha-to-build-number/blob/main/LICENSE


if [ -z $1 ]; then
  echo need a sha number
  exit 1
fi

sha=$1
build=`git rev-list --count $1`
echo $build
