#! /bin/bash
[ -f tut-setup.sh ] && source tut-setup.sh || source ../tut-setup.sh
cp $scriptdir/docker-compose-yaml-1 $scriptdir/$demosubdir/docker-compose.yml
echo "Files copied for Slide #9"
