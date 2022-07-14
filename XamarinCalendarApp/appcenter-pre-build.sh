#!/usr/bin/env bash

# Example: Change bundle name of an iOS app for non-production
if [ "$APPCENTER_BRANCH" != "main" ];
then
    ANDROID_MANIFEST_FILE=$APPCENTER_SOURCE_DIRECTORY/Droid/Properties/AndroidManifest.xml
INFO_PLIST_FILE=$APPCENTER_SOURCE_DIRECTORY/iOS/Info.plist

if [ -e "$ANDROID_MANIFEST_FILE" ]
then
    echo "Updating version name to $VERSION_NAME in AndroidManifest.xml"
    
    MANIFEST_PATH="$APPCENTER_SOURCE_DIRECTORY/XamarinCalendarApp.Android/Properties/AndroidManifest.xml"
    VERSION_CODE=$((10 + APPCENTER_BUILD_ID))
    sed -i "" 's/android:versionCode="[^"]*"/android:versionCode="'$VERSION_CODE'"/' $MANIFEST_PATH
    
    echo "File content:"
    cat $ANDROID_MANIFEST_FILE
fi


if [ -e "$INFO_PLIST_FILE" ]
then
    echo "Updating version name to $VERSION_NAME in Info.plist"
    
VERSION_CODE=$((3 + APPCENTER_BUILD_ID))
plutil -replace CFBundleVersion -string "$VERSION_CODE"
$APPCENTER_SOURCE_DIRECTORY/XamarinCalendarApp.iOS/Info.plist

    echo "File content:"
    cat $INFO_PLIST_FILE
fi
fi



