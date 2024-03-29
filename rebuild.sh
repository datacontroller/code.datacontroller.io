#bin/bash

# clear existing content
rm -rf docs/*

# go to the code location
cd ../dc/sas

# generate docs
sasjs doc -t docs

# come back to this repo
cd ../../code.datacontroller.io

# bring the code over
cp -R ../dc/sas/sasjsbuild/sasdocs/* docs/

# create CNAME entry
echo 'code.datacontroller.io' > docs/CNAME


