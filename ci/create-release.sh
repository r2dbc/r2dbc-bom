#!/usr/bin/env bash

set -euo pipefail

RELEASE=$1
SNAPSHOT=$2
RELEASE_MODULE=$3

./mvnw versions:set-property -Dproperty=r2dbc-module.version -DnewVersion=$RELEASE_MODULE -DgenerateBackupPoms=false
git add .
git commit --message "Subproject Updates"

./mvnw versions:set -DnewVersion=$RELEASE -DgenerateBackupPoms=false
git add .
git commit --message "$RELEASE Release"
git tag -s $RELEASE -m "$RELEASE"

git reset --hard HEAD~2
./mvnw versions:set -DnewVersion=$SNAPSHOT -DgenerateBackupPoms=false
git add .
git commit --message "$SNAPSHOT Development"
