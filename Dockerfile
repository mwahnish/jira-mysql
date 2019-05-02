FROM centos/mysql-57-centos7

MAINTAINER Mark Wahnish

EXPOSE 3306

COPY my.cnf /etc/mysql/my.cnf
#COPY my.cnf /etc/opt/rh/rh-mysql57/my.cnf

ENTRYPOINT ["container-entrypoint"]
CMD ["run-mysqld"]