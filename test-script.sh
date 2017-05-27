#!/bin/bash

# To exit the script as soon as one of the following commands failed
set -e 
for f in `pwd`/**/*/*.yaml
do
  aws cloudformation validate-template --template-body file://$f
  echo $f
done