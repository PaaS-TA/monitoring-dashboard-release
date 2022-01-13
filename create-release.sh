#!/bin/bash

if [ -d ./.dev_builds ]; then
  echo "delete .dev_builds"
  rm -rf .dev_builds
fi
if [ -d ./dev_releases ]; then
  echo "delete dev_releases"
  rm -rf dev_releases
fi
if [ -f ./paasta-monitoring-release-5.6.2.tgz ]; then
  echo "delete paasta-monitoring-release-5.6.2.tgz"
  rm -rf paasta-monitoring-release-5.6.2.tgz
fi

#if [ -d ./blobs ]; then
#  echo "delete blobs"
#  rm -rf blobs
#fi
#

bosh create-release --force --tarball paasta-monitoring-release-5.6.2.tgz --name paasta-monitoring-release --version 5.6.2
