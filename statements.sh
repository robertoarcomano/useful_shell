#!/bin/bash

if [ -z "$1" ]; then
  echo "Please specify <param1>"
  exit
fi

if [ ! -n "$2" ]; then
  echo "Please specify <param2>"
  exit
fi

echo $0 $1 $2
