#!/usr/bin/env bash
if [ -d "RevaApp.xcodeproj" ]; then
    echo "Found RevaApp.xcodeproj try to delete RevaApp.xcodeproj."
    rm -rf RevaApp.xcodeproj
    echo "RevaApp.xcodeproj delete success."
    echo ""
fi

if [ -d "RevaApp.xcworkspace" ]; then
    echo "Found RevaApp.xcworkspace try delete RevaApp.xcworkspace."
    rm -rf RevaApp.xcworkspace
    echo "RevaApp.xcworkspace delete success."
    echo ""
fi

# check if xcodegen install, if not it will go to else, and check if brew is install,
# if brew install it will try to install xcodegen

run_xcodegen() {
    if [ -f "project.yml" ] ; then
        xcodegen generate
        echo ""
        echo "xcodeproject success been build."
        echo ""
    else
        echo "no project.yml files."
        echo ""
        exit 1
    fi
}

if [ -f "`which xcodegen`" ] ; then
    run_xcodegen
else
    echo "No xcodegen install."
    echo "try to install xcodegen using mint."
    echo ""
    ./command/mint/mint_0.14.2/mint install yonaskolb/xcodegen@2.16.0
    echo ""
    echo "success install xcodegen using mint."
    echo "try to run xcodegen again."
    echo ""
    run_xcodegen
fi

if [ -r Podfile ] ; then
    echo "try to run pod install."
    echo ""
    pod install
    echo ""
    echo "pod success been install."
    echo ""
else
    echo "no pod install, please try to install pod first."
    echo ""
    exit 1
fi
