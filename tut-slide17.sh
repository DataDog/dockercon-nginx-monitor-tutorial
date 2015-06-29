#! /bin/bash
[ -f tut-setup.sh ] && source tut-setup.sh || source ../tut-setup.sh
lbdir=$scriptdir/$demosubdir/loadbalancer
dmip=`docker-machine ip`
cp $scriptdir/nginx-loadbalancer-dockerfile-2 $lbdir/Dockerfile
cp $scriptdir/nginx-loadbalancer-lbnginx.conf-2 $lbdir/lbnginx.conf
cp $scriptdir/nginx-loadbalancer-consul-template.service $lbdir/consul-template.service
cp $scriptdir/docker-compose-yaml-6 $scriptdir/$demosubdir/docker-compose.yml
sed -i -e 's/172.16.88.129/'"$dmip"'/g' $lbdir/lbnginx.conf
echo "Files copied for Slide #17. You should review docker-compose.yml and the contents of loadbalancer"
