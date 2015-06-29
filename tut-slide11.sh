#! /bin/bash
[ -f tut-setup.sh ] && source tut-setup.sh || source ../tut-setup.sh
cp $scriptdir/docker-compose-yaml-2 $scriptdir/$demosubdir/docker-compose.yml
echo "Files copied for Slide #11. You should review docker-compose.yml"
