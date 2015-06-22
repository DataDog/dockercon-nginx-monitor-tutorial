FROM nginxbase

ADD nginx.conf /etc/nginx/conf.d/app.conf
RUN echo "fastcgi_param  SCRIPT_FILENAME  \$document_root\$fastcgi_script_name;" >> /etc/nginx/fastcgi_params
RUN mkdir -p /tmp/cache

CMD ["/usr/bin/supervisord", "-n"]
