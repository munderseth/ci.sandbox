#!/bin/sh

trigger() {
  git checkout $1
  date >> commit-trigger.txt
  git add commit-trigger.txt
  git commit -m "trigger $1 CI build(s) ..."
  git push https://$GH_TOKEN@github.com/munderseth/ci.sandbox.git $1
  git checkout master
}


trigger standalone
trigger travis