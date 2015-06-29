#! /bin/bash
[ -f tut-setup.sh ] && source tut-setup.sh || source ../tut-setup.sh
mkdir $scriptdir/$demosubdir/nginxbase
mkdir $scriptdir/$demosubdir/web
cp $scriptdir/nginx-base-dockerfile-1 $scriptdir/$demosubdir/nginxbase/Dockerfile
cp -r $scriptdir/nginx-base-supervisor $scriptdir/$demosubdir/nginxbase/supervisor
cp $scriptdir/nginx-web-dockerfile-1 $scriptdir/$demosubdir/web/Dockerfile
cp $scriptdir/nginx-web-nginx.conf $scriptdir/$demosubdir/web/nginx.conf
cp $scriptdir/docker-compose-yaml-3 $scriptdir/$demosubdir/docker-compose.yml
echo "Files copied for Slide #13. You should review docker-compose.yml and the contents of nginxbase and web"
