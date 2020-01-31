#!/usr/bin/env bash

set -euo pipefail

RELEASE=$1
SNAPSHOT=$2

./mvnw versions:set -DnewVersion=$RELEASE -DgenerateBackupPoms=false
git add .
git commit --message "$RELEASE Release"

# Tag the release
git tag -s $RELEASE -m "$RELEASE"

# Bump up the version in pom.xml to the next snapshot
./mvnw versions:set -DnewVersion=$SNAPSHOT -DgenerateBackupPoms=false
git add .
git commit --message "$SNAPSHOT Development"
