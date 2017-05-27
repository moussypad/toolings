#!/bin/bash

# To exit the script as soon as one of the following commands failed
set -e 
# for f in `pwd`/**/*/*.yaml
for f in $(find `pwd` -type f -name '*.yaml')
do
  echo $f
  aws cloudformation validate-template --template-body file://$f
done