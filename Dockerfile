FROM centos/mysql-57-centos7

MAINTAINER Mark Wahnish

EXPOSE 3306

COPY my.cnf /etc/mysql/my.cnf
COPY post-init.sh /usr/local/bin/
ENTRYPOINT ["post-init.sh"]