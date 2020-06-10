#!/bin/bash

usage() {
  echo "
Usage:
  $0 [options]

Options:
  -a <ARGUMENT_A> Uses ARGUMENT_A as first argument
  -b <ARGUMENT_B> Uses ARGUMENT_B as second argument

 -h   display this help and exit" 1>&2
}

exit_abnormal() {
  usage
  exit 1
}

while getopts ":a:b:h" option; do
  case "${option}" in
    a)
      ARGUMENT_A=$OPTARG
      ;;
    b)
      ARGUMENT_B=$OPTARG
      ;;
    h)
      exit_abnormal
      ;;
    :)
      exit_abnormal
      ;;
    *)
      exit_abnormal
      ;;
  esac
done

if [ "$ARGUMENT_A" == "" ] || [ "$ARGUMENT_B" == "" ]; then
  exit_abnormal
fi

echo "ARGUMENT_A: $ARGUMENT_A"
echo "ARGUMENT_B: $ARGUMENT_B"
