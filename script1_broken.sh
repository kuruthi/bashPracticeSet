#!/bin/bash

while getopts "vf:" param
do
  case "$param" in
    f) file="$OPTARG" ;;
    v) set -x ;;
    *) echo "Invalid flag" ;;
  esac
done

case "$file" in
  *.tar.gz) tar xzf "$file" ;;
  *.zip) unzip "$file" ;;
  *.gz) gzip -d "$file" ;;
  *) echo "Unknown filetype" ;;
esac

if [[ "$(uname)" == "Linux" ]]
then
  echo "Using Linux"
fi
