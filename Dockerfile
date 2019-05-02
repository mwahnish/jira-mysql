FROM centos/mysql-57-centos7

MAINTAINER Mark Wahnish

EXPOSE 3306

COPY my.cnf /etc/mysql/my.cnf
COPY post-init.sh /usr/share/container-scripts/mysql/post-init.sh

ENTRYPOINT "mysql $mysql_flags -e 'ALTER DATABASE sampledb CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;'"