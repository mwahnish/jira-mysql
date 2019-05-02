FROM centos/mysql-57-centos7

MAINTAINER Mark Wahnish

EXPOSE 3306

COPY my.cnf /etc/mysql/my.cnf
COPY post-init.sh /post-init.sh
RUN ["chmod", "+x", "/post-init.sh"]
RUN ["chmod", "777", "/post-init.sh"]
ENTRYPOINT ["/post-init.sh"]