#! /bin/bash
jekyll build -d ../tmp
cp -r ../tmp/* ../
rm -rf ../tmp
