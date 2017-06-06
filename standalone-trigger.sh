#!/bin/sh

git checkout standalone
date >> trigger-commit.txt
git add trigger-commit.txt
git commit -m "trigger Standalone CI builds ..."
#git remote add upstream https://$GH_TOKEN@github.com/munderseth/ci-sandbox.git
git push https://$GH_TOKEN@github.com/munderseth/ci-sandbox.git qstandalone