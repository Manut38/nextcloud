FROM nextcloud:fpm-alpine
RUN apk update \ 
	&& apk add php8-pecl-imagick python3 aria2 ffmpeg \
	&& ln -s /usr/bin/python3 /usr/bin/python \
	&& curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && chmod a+rx /usr/local/bin/youtube-dl \
	&& sed -i 's/^[;]*\s*opcache.interned_strings_buffer.*$/opcache.interned_strings_buffer=32/' /etc/php8/php.ini 
