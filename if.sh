#!/bin/bash

if [ -z "$1" ]; then
  echo "Please specify <param1>"
  exit 1
fi

if [ ! -n "$2" ]; then
  echo "Please specify <param2>"
  exit 2
fi

if [[ (-n "$1") && (-n "$2") && (-z "$3" || -z "$4") ]]; then
  echo "Please specify <param3> and <param4>"
  exit 34
fi

echo $0 $1 $2
exit 0
