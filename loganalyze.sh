#!/bin/bash

#check for number of arguments
dir=$(pwd)
if [ $# -eq 1 ]; then
  if [ -d "$1" ]; then
     dir="$1"
  else
     echo -e "usage: arg needs to be a directory.\n"
     exit 1
  fi
elif [ $# -gt 1 ]; then
  echo -e "usage: more than 1 arg is not allowed.\n"
  exit 2
fi

echo "$dir"
