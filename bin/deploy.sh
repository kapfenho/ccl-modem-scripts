#!/bin/bash

DEST="/Library/Modem Scripts"

echo "Deploying modem scripts"
echo "-----------------------"
echo "Destination directory: ${DEST}"
echo "We need to copy as root, please enter your password now..."

for f in src/*
do
  sudo cp -R "${f}" "${DEST}/."
  echo "deployment done for: ${f}"
done

echo "Completed"

exit 0

