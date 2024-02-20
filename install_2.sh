#! /bin/bash

if [[ $EUID -ne 0 ]]
then
  echo "Script requires root privileges to run"
  exit
fi

echo "Yay! Everything works!"
