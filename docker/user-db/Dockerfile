FROM mangoraft/mongodb-arm

RUN mkdir -p /data/db-users

COPY ./scripts /docker-entrypoint-initdb.d
