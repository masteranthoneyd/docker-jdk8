#!/bin/bash

export JAVA_OPTS="$JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -Duser.timezone=GMT+8 -Dfile.encoding=utf-8"

echo run: java $JAVA_OPTS -jar app.jar "$@"
exec java $JAVA_OPTS -jar app.jar "$@"


