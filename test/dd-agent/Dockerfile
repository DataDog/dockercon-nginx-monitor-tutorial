FROM datadog/docker-dd-agent

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN dpkg-divert --local --rename --add /sbin/initctl
RUN ln -sf /bin/true /sbin/initctl
RUN sed -i -e "s/101/0/g" /usr/sbin/policy-rc.d

RUN apt-get update && apt-get install -y -q vim curl apt-utils
RUN sed -e "s/#hostname: mymachine.mydomain/hostname: docker-tutorial/g" \
        -e "s/#tags: mytag0, mytag1/tags: role:tutorial, demo:nginx, event:dockercon /" \
        -i /etc/dd-agent/datadog.conf
RUN echo "api_key: $API_KEY" >> /etc/dd-agent/datadog.conf

RUN mv /etc/dd-agent/conf.d/docker.yaml.example /etc/dd-agent/conf.d/docker.yaml && \
    mv /etc/dd-agent/conf.d/nginx.yaml.example /etc/dd-agent/conf.d/nginx.yaml

RUN sed -e "s/localhost/loadbalancer/g" \
        -e "0,/  #   tags:/{s/  #   tags:/    tags:/}" \
        -e "s/  #     - instance:foo/      - demo:nginx, event:dockercon/" \
        -i /etc/dd-agent/conf.d/nginx.yaml

RUN sed -e "s/# tag_by_command: false/tag_by_command: true/g" \
        -e "s/# collect_container_size: false/collect_container_size: true/g" \
        -e "s/# collect_all_metrics: false/collect_all_metrics: true/g" \
        -i /etc/dd-agent/conf.d/docker.yaml
