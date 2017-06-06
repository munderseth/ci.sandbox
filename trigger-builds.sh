#!/bin/sh

setup_git() {
  git config --global user.email "marku@s2technologies.com"
  git config --global user.name "munderseth"
}

trigger() {
#  git pull https://$GH_TOKEN@github.com/munderseth/ci.sandbox.git
  git clone https://$GH_TOKEN@github.com/munderseth/ci.sandbox.git
  cd ci.sandbox
  git checkout $1
  date >> commit-trigger.txt
  git add commit-trigger.txt
  git commit -m "trigger $1 CI build(s) ..."
  git push https://$GH_TOKEN@github.com/munderseth/ci.sandbox.git $1
  cd ..
#  git checkout master
}

setup_git
trigger standalone
#trigger travis