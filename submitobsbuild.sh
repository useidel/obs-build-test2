#!/usr/bin/bash -x

PATH=/usr/bin:/usr/sbin/
export PATH

MYDATE=`date`

# checkout the OSB package
osc co home:useidel test

cd home*

# copy (updated) files to working directory
# note that the content from github is now in the upper directory
cp ../*spec test/
cp ../*.tar.gz test/

# mark files for update if there are new ones
#cd test
#osc add *spec
#cd ..

# upload changed content
osc ci -m "Update from $MYDATE" test



