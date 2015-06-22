FROM nginxbase

ENV CT_URL https://github.com/hashicorp/consul-template/releases/download/v0.9.0/consul-template_0.9.0_linux_amd64.tar.gz
RUN curl -L $CT_URL | tar -C /usr/local/bin --strip-components 1 -zxf -
ADD consul-template.service /etc/service/consul-template/run

ADD nginx.service /etc/service/nginx/run
ADD lbnginx.conf /etc/consul-templates/nginx.conf
ENV DKR_IP echo $DOCKER_HOST | grep -oE '(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})'
RUN sed -e 's/172.16.88.129/$DKR_IP/g'
RUN mkdir -p /tmp/proxy
RUN mkdir -p /tmp/cache

CMD ["/usr/bin/runsvdir", "/etc/service"]
