#!/bin/sh

standalone() {
  git checkout standalone
  date >> commit-trigger.txt
  git add commit-trigger.txt
  git commit -m "trigger Standalone CI builds ..."
  git push https://$GH_TOKEN@github.com/munderseth/ci.sandbox.git standalone
  git checkout master
}

travis() {
  git checkout travis
  date >> commit-trigger.txt
  git add commit-trigger.txt
  git commit -m "trigger Travis CI build ..."
  git push https://$GH_TOKEN@github.com/munderseth/ci.sandbox.git travis
  git checkout master
}

standalone
travis