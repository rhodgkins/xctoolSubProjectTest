#!/bin/sh

#  xctool_script.sh
#  NestedProjectTest
#
#  Created by Richard Hodgkins on 09/06/2014.
#  Copyright (c) 2014 Rich H. All rights reserved.

set -xe

WORKSPACE='NestedProjectTest.xcworkspace'

# List the available schemes
xcodebuild -workspace "$WORKSPACE" -list

# Build outer project
xctool -workspace "$WORKSPACE" -scheme OuterProject clean test

# Build inner project
xctool -workspace "$WORKSPACE" -scheme InnerProject clean test
