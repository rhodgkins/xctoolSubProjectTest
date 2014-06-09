#!/bin/sh -e

#  xctool_script.sh
#  NestedProjectTest
#
#  Created by Richard Hodgkins on 09/06/2014.
#  Copyright (c) 2014 Rich H. All rights reserved.

set -xe

WORKSPACE='NestedProjectTest.xcworkspace'

# List the available schemes
xcodebuild -workspace "$WORKSPACE" -list

##############
# XCODEBUILD #
##############

# Build outer project
xcodebuild -workspace "$WORKSPACE" -scheme OuterProject clean build

# Build inner project
xcodebuild -workspace "$WORKSPACE" -scheme InnerProject clean build

##############
### XCTOOL ###
##############

# Build outer project
xctool -workspace "$WORKSPACE" -scheme OuterProject clean build

# Build inner project
xctool -workspace "$WORKSPACE" -scheme InnerProject clean build
