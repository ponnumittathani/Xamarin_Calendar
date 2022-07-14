#!/usr/bin/env bash

# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "main" ];
then
    VERSION_CODE=$((VERSION_CODE_SHIFT + APPCENTER_BUILD_ID))
plutil -replace CFBundleVersion -string "$VERSION_CODE"
$APPCENTER_SOURCE_DIRECTORY/PATH_TO_YOUR_IOS_PROJECT/Info.plist
fi