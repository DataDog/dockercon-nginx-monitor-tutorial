FROM nginxbase

ENV CT_URL https://github.com/hashicorp/consul-template/releases/download/v0.9.0/consul-template_0.9.0_linux_amd64.tar.gz
RUN curl -L $CT_URL | tar -C /usr/local/bin --strip-components 1 -zxf -
ADD consul-template.service /etc/service/consul-template/run

ADD nginx.service /etc/service/nginx/run
ADD lbnginx.conf /etc/consul-templates/nginx.conf
RUN mkdir -p /tmp/proxy
RUN mkdir -p /tmp/cache

CMD ["/usr/bin/runsvdir", "/etc/service"]
