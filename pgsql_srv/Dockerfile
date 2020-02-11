# Basic build file
FROM postgres:latest 
LABEL maintainer='alexound'
# Copy database initialisation script to the image
COPY ["./db_build.sql", "/docker-entrypoint-initdb.d/"]
