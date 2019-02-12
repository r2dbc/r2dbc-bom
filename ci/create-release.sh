#!/usr/bin/env sh

set -e -u

RELEASE=$1
SNAPSHOT=$2

./mvnw versions:update-properties -DgenerateBackupPoms=false
git add .
git commit --message "Subproject Updates"

git branch -f release
git checkout release
./mvnw versions:set -DnewVersion=$RELEASE -DgenerateBackupPoms=false
git add .
git commit --message "$RELEASE Release"
git tag -s $RELEASE -m "$RELEASE"

git master
./mvnw versions:set -DnewVersion=$SNAPSHOT -DgenerateBackupPoms=false
git add .
git commit --message "$SNAPSHOT Development"
