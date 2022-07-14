#!/usr/bin/env bash

# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "main" ];
then
    MANIFEST_PATH="$APPCENTER_SOURCE_DIRECTORY/XamarinCalendarApp.Android/Properties/AndroidManifest.xml"
VERSION_CODE=$(10)
sed -i "" 's/android:versionCode="[^"]*"/android:versionCode="'10"/' $MANIFEST_PATH
fi