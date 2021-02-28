#!/bin/bash
set -u

REPO_URL=https://github.com/visualdiffer/externalapp-integration/archive/master.zip

TMP_PATH=`mktemp -d -t vd-external`
ZIP_PATH=$TMP_PATH/master.zip
UNZIPPED_PATH=$TMP_PATH/unzipped

echo Download externalapp-integration zip file into $TMP_PATH
curl -fsSLo "$ZIP_PATH" $REPO_URL
mkdir "$UNZIPPED_PATH"
echo Unzipping file
unzip -qd "$UNZIPPED_PATH" "$ZIP_PATH"
echo Updating scripts
(cd "$UNZIPPED_PATH/externalapp-integration-master" && ./updatescripts.sh)
echo done

