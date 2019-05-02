FROM centos/mysql-57-centos7

MAINTAINER Mark Wahnish

EXPOSE 3306

COPY my.cnf /etc/opt/rh/rh-mysql57/my.cnf
RUN mkdir /etc/my.cnf.d
ENTRYPOINT ["container-entrypoint"]
CMD ["run-mysqld"]