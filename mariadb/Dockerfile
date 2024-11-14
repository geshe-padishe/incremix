FROM debian:bullseye

RUN curl -sS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash
RUN apt update
RUN apt install -y mariadb-server

EXPOSE 3306

ENV DB_NAME=niki_database
ENV DB_PASSWORD=password
COPY conf/init_db.sql /tmp/init_db.sql
RUN cat /tmp/init_db.sql | mysql --defaults-extra-file=/etc/mysql/debian.cnf

#LABEL version="1.0"
#LABEL description="MariaDB Server"

HEALTHCHECK --start-period=5m \
  CMD mariadb -e 'SELECT @@datadir;' || exit 1

CMD ["mariadbd"]
