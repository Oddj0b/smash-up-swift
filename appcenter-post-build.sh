#!/usr/bin/env bash
set -e

##
# Environment variables required in App Center Build
# https://docs.microsoft.com/en-us/appcenter/build/custom/variables/
#
# APPCENTER_TOKEN
# https://docs.microsoft.com/en-us/appcenter/api-docs/
#
# DEVICE_SET
# Both the device slug and a defined device set can be used here
#
# APP_OWNER
# It's a combinations of Organization and app name, i.e., {Organization/App-name}
#
# LOCALE
# UTF-8 locale like en_US for english American
##

echo "Building XCUITest"
xcrun xcodebuild build-for-testing -project $APPCENTER_SOURCE_DIRECTORY/Smash-Up.xcodeproj -configuration $APPCENTER_XCODE_PROJECT -sdk iphoneos -scheme $APPCENTER_XCODE_SCHEME -derivedDataPath $APPCENTER_OUTPUT_DIRECTORY/DerivedData

echo "Running test in App Center Test"
appcenter test run xcuitest --app $APP_OWNER --devices $DEVICE_SET --test-series "$APPCENTER_BRANCH-$APPCENTER_TRIGGER" --locale $LOCALE --build-dir $APP_CENTER_OUTPUT_DIRECTORY/DerivedData/Build/Products/Debug-iphoneos --token $APPCENTER_TOKEN
