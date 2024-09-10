#!/bin/bash

GREET=greeting.txt

LG=${LANG/.*}

LOCALIZED=${GREET}.${LG}
DEFAULT=${GREET}.en_US

if [ -f ${LOCALIZED} ]; then
  cat ${LOCALIZED}
else
  cat ${DEFAULT}
fi
