#!/usr/bin/bash -x

PATH=/usr/bin:/usr/sbin/
export PATH

# Get the version from the SPEC file
MYVER=`grep ^Version *.spec |awk '{print $2}'`

# copy the also needed patch file(s) to the RPMBUILD space
# again this is different from the $GITHUB_WORKSPACE
###cp *.patch /github/home/rpmbuild/SOURCES

# Now download the sources to the correspoding RPMBUILD directory
cd /github/home/rpmbuild/SOURCES
wget -nd https://github.com/useidel/obs-build-test2/raw/main/dummy_package-0.0.1.tar.gz


