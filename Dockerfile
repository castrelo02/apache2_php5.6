FROM library/debian:jessie
MAINTAINER fran@francastro.eu
COPY sources.list /etc/apt/sources.list
RUN apt-get update -qq && apt-get -y install apache2 php5 php5-mysql
COPY info.php /var/www/html/info.php

ENTRYPOINT [ "/usr/sbin/apache2ctl","-X" ]
