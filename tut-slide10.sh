#! /bin/bash
[ -f tut-setup.sh ] && source tut-setup.sh || source ../tut-setup.sh
mkdir $scriptdir/$demosubdir/first
cp $scriptdir/dockerfile-first $scriptdir/$demosubdir/first/Dockerfile
echo "Files copied for Slide #10. You should review first/Dockerfile"
