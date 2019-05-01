FROM centos/mysql-57-centos7

MAINTAINER Mark Wahnish

EXPOSE 3306

COPY my.cnf /etc/mysql/my.cnf

RUN sudo systemctl restart mysqld