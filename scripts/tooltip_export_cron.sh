#!/bin/bash

JS_FILE="db/export/tooltip.constants.js"
JS_LINT="$JS_FILE --white --passfail --predef angular"
DEST_HOST="dev.adverseevents.io"
DEST_PATH="/var/www/explorer/app/common/tooltip/json/tooltip.constants.js"

rm $JS_FILE
rake json:export

echo "Checking file exists"

if [ -e "$JS_FILE" ]
then
  echo "file exists... checking jslint"
  JS_LINT_OUTPUT=$(jslint $JS_LINT | grep "$JS_FILE is OK")
  if [[ $JS_LINT_OUTPUT == "$JS_FILE is OK." ]]
  then
    echo "file linted successfully... starting transfer."
    scp -2 $JS_FILE ubuntu@$DEST_HOST:$DEST_PATH
  else
    echo "file linting failed"
  fi
else
  echo "file doesn't exist"
fi
