#!/bin/sh
PROJECT_NAME=$1
git clone --depth 1 https://github.com/developit/preact-boilerplate.git $PROJECT_NAME
cd $PROJECT_NAME
rm -rf .git && git init
npm i
