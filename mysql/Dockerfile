FROM mysql:latest

ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
ENV MYSQL_DATABASE goweezeflo
ENV MYSQL_USER goweezeflo
ENV MYSQL_PASSWORD Goweezeflo_123

COPY populate_db.sql /docker-entrypoint-initdb.d/

EXPOSE 3306/tcp
