#!/bin/bash

if [ ! -f results ]; then
  echo "FAIL: No results found"
  exit 1
fi

errors=(`cat results | grep -i "fail\|unknown" | wc -l`)
if [[ $errors != 0 ]]; then
  cat results
  echo "FAIL: Errors found"
  exit 1
else
  echo "Succes"
  exit 0
fi
