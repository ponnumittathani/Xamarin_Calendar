#!/usr/bin/env bash

# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "main" ];
then
    VERSION_CODE=$((3 + APPCENTER_BUILD_ID))
plutil -replace CFBundleVersion -string "$VERSION_CODE"
$APPCENTER_SOURCE_DIRECTORY/XamarinCalendarApp.iOS/Info.plist
fi