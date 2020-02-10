#!/bin/bash

docker build -t pgsql:srv ./pgsql_srv
docker build -t py:srv ./py_srv

docker stack deploy -c ./wrxmpl_srv/wrxmpl.yml wrxmpl-stack
