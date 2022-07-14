#!/usr/bin/env bash

# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "main" ];
then
    MANIFEST_PATH="$APPCENTER_SOURCE_DIRECTORY/XamarinCalendarApp/Properties/AndroidManifest.xml"
VERSION_CODE=$(7)
sed -i "" 's/android:versionCode="[^"]*"/android:versionCode="'$VERSION_CODE'"/' $MANIFEST_PATH
fi