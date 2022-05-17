#!/bin/bash

if [ -d ./.dev_builds ]; then
  echo "delete .dev_builds"
  rm -rf .dev_builds
fi
if [ -d ./dev_releases ]; then
  echo "delete dev_releases"
  rm -rf dev_releases
fi
if [ -f ./monitoring-dashboard-release-5.8.0.tgz ]; then
  echo "delete monitoring-dashboard-release-5.8.0.tgz"
  rm -rf monitoring-dashboard-release-5.8.0.tgz
fi

#if [ -d ./blobs ]; then
#  echo "delete blobs"
#  rm -rf blobs
#fi
#

bosh create-release --force --tarball monitoring-dashboard-release-5.8.0.tgz --name monitoring-dashboard-release --version 5.8.0
