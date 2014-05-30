#!/bin/bash

# ensure arguments with white spaces are passed correctly
args=("$@")

APP_NAME="/usr/local/bin/twdiff"

"$APP_NAME" "${args[@]}"
rc=$?

if [ $rc -eq 1 ] ;
then
    # twdiff returns 1 if files differ
    # but VD considers values != 0 as error so we force to return success (ie 0)
    exit 0
fi
