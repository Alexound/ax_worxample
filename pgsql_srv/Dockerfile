FROM postgres:latest
LABEL maintainer='alexound'
# ENV POSTGRES_PASSWORD='gfy'
COPY ["./db_build.sql", "/docker-entrypoint-initdb.d/"]
