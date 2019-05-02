FROM centos/mysql-57-centos7

MAINTAINER Mark Wahnish

EXPOSE 3306

COPY my.cnf /etc/mysql/my.cnf

ENTRYPOINT ["container-entrypoint"]
CMD ["run-mysqld"]