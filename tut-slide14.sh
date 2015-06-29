#! /bin/bash
[ -f tut-setup.sh ] && source tut-setup.sh || source ../tut-setup.sh
lbdir=$scriptdir/$demosubdir/loadbalancer
mkdir $lbdir
cp $scriptdir/nginx-loadbalancer-dockerfile-1 $lbdir/Dockerfile
cp $scriptdir/nginx-loadbalancer-lbnginx.conf $lbdir/lbnginx.conf
cp $scriptdir/nginx-loadbalancer-nginx.service $lbdir/nginx.service
cp $scriptdir/docker-compose-yaml-4 $scriptdir/$demosubdir/docker-compose.yml
echo "Files copied for Slide #14. You should review docker-compose.yml and the contents of loadbalancer"
