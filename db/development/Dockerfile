FROM mysql:8.1

COPY /*.sql /db/
COPY /init_db.sh /docker-entrypoint-initdb.d/

RUN chmod +x /docker-entrypoint-initdb.d/init_db.sh

CMD ["mysqld", "--default-time-zone=Asia/Tokyo"]