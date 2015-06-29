#! /bin/bash
[ -f tut-setup.sh ] && source tut-setup.sh || source ../tut-setup.sh
dddir=$scriptdir/$demosubdir/dd-agent
mkdir $dddir
cp $scriptdir/datadog-dockerfile $dddir/Dockerfile
cp $scriptdir/docker-compose-yaml-5 $scriptdir/$demosubdir/docker-compose.yml
echo "Files copied for Slide #15. You should review docker-compose.yml and the contents of dd-agent"
