FROM centos:7

RUN yum update -y
RUN yum localinstall -y http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm

RUN yum install openssl -y
RUN yum install --disablerepo="*" --enablerepo=nginx install nginx -y

RUN yum --disablerepo="*" --enablerepo=base install tar -y

RUN rm -rf /etc/nginx/conf.d/*
ADD nginx.conf /etc/nginx/
ADD site.conf /etc/nginx/sites-available/
RUN mkdir /etc/nginx/sites-enabled
RUN ln -s /etc/nginx/sites-available/site.conf /etc/nginx/sites-enabled/site

RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

RUN useradd -u 1000 www-data

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
