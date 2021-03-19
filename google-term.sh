#!/bin/bash
if ! command -v googler &> /dev/null
then
    echo "Googler could not be found"
    exit
else
  if [ $1 ]
  then
    googler -n 1 -l en --np -x $@ | grep "http" | xargs | tr -d '\n' | xclip -sel clip
  else
    echo "Must provide search term"
  fi
fi
