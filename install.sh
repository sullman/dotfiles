#!/bin/bash --

BACKUPDIR=/tmp/dotfiles.bak

mkdir $BACKUPDIR

for each in `ls -Fd .* | grep -v /`;
do
  echo "Copying $each to ~/"
  if [ -f "$each" ]; then
    mv ~/$each $BACKUPDIR/
  fi
  cp -n $each ~/$each
done

cp -r scripts ~/
