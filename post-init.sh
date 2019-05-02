#!/bin/bash
set -e
sh /usr/bin/run-mysqld
echo "${MYSQL_USER}"
#mysql $mysql_flags -e "ALTER DATABASE sampledb CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;"
