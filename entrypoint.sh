#!/bin/sh

# Backwards compatibility mapping
if [ -z $LUACHECKRC_URL ]; then :; else
  INPUT_LUACHECKRC_URL=$LUACHECKRC_URL
fi

if [ -z "$INPUT_LUACHECKRC_URL" ]; then
  if [ ! -f .luacheckrc ]; then
    echo 'ERROR: No .luacheckrc present and no $INPUT_LUACHECKRC_URL provided' 1>&2
    exit 1
  fi
else
  echo "Downloading luacheckrc file from ${INPUT_LUACHECKRC_URL}"
  HTTP_RESPONSE=$(curl --write-out "HTTPSTATUS:%{http_code}" \
    -sSL \
    -o .luacheckrc \
    $INPUT_LUACHECKRC_URL)

  HTTP_STATUS=$(echo $HTTP_RESPONSE | tr -d '\n' | sed -e 's/.*HTTPSTATUS://')
  if [ $HTTP_STATUS -ne 200 ]; then
    echo "Failed to download .luacheckrc file"
    exit 1
  fi
fi

echo "Checking all lua files"
luacheck .
