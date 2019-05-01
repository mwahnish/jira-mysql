FROM centos/mysql-57-centos7

MAINTAINER Mark Wahnish

EXPOSE 3306

COPY my.cnf /etc/mysql/my.cnf
COPY post-init.sh /usr/share/container-scripts/mysql/post-init.sh

ENTRYPOINT ["container-entrypoint"]
CMD ["run-mysqld && sh /usr/share/container-scripts/mysql/post-init.sh"]