bosh create-release --force --tarball paasta-monitoring-release.tgz --name paasta-monitoring-release --version 5.0

bosh ur paasta-monitoring-release.tgz
