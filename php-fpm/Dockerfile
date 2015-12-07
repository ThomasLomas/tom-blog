FROM centos:7

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum update -y && yum install -y php70w php70w-opcache php70w-common php70w-cli php70w-fpm php70w-intl php70w-mcrypt php70w-xml php70w-process

ADD site.ini /etc/php.d/

RUN rm -rf /etc/php-fpm.d/*
ADD site.pool.conf /etc/php-fpm.d/

RUN useradd -u 1000 www-data

CMD ["php-fpm", "-F"]

EXPOSE 9000
