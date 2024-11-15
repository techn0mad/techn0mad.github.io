#! /bin/sh

if [ -d "${1}" ]; then
  rm -fr "${1}"
fi

if [ -d ./_site ]; then
  cp -av ./_site "${1}"
fi
