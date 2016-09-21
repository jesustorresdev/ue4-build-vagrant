#!/bin/bash
#
# Vagrant provisioning script.
#
# Build Unreal Engine on Linux
# https://wiki.unrealengine.com/Building_On_Linux
#

set -e

UNREAL_ENGINE_VERSION=4.13

# Download source code
if [ ! -e "/vagrant/UnrealEngine" ]; then
  git clone git@github.com:EpicGames/UnrealEngine.git "/vagrant/UnrealEngine" -b "r$UNREAL_ENGINE_VERSION"
fi

# Build
cd "/vagrant/UnrealEngine"
./Setup.sh
./GenerateProjectFiles.sh

make

