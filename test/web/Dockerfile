FROM nginxbase:latest

ADD nginx.conf /etc/nginx/conf.d/app.conf
RUN echo "fastcgi_param  SCRIPT_FILENAME  \$document_root\$fastcgi_script_name;" >> /etc/nginx/fastcgi_params && \
  mkdir -p /tmp/cache && \
  mv /usr/share/nginx/html/index.html /usr/share/nginx/html/index.php && \
  sed -e 's/<\/body>/<?php echo \$_SERVER["SERVER_ADDR"]; ?><\/body>/g' -i /usr/share/nginx/html/index.php


CMD ["/usr/bin/supervisord", "-n"]
