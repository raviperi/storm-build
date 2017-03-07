#!/bin/bash

##############################
# Clones Storm Git Repo
##############################

mkdir /opt/git
pushd /opt/git
git clone https://github.com/apache/storm.git storm

pushd /opt/git/storm
git checkout master
mvn clean install
popd

