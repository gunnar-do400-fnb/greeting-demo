#!/bin/bash

GREET=greeting.txt

LG=${LANG/.*}

LOCALIZED=${GREET}.${LG}
DEFAULT=${GREET}.default

if [ -f ${LOCALIZED} ]; then
  cat ${LOCALIZED}
else
  cat ${DEFAULT}
fi
