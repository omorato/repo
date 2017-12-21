FROM ubuntu:16.04

RUN apt-get update \
	&& apt-get install -y -q \
		apache2 \
		php7.0 \
		libapache2-mod-php \
	&& apt-get autoremove --purge \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/list/* \
	&& rm -rf /var/www/html/*

COPY ./files/index.php /var/www/html
COPY ./files/run.sh /run.sh

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]

