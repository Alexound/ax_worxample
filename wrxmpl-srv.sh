#!/bin/bash

## Goals of this script are:
## 1. Build two custom images.
## 2. Deploy the service.

docker build -t pgsql:srv ./pgsql_srv
docker build -t py:srv ./py_srv

docker stack deploy -c ./wrxmpl_srv/wrxmpl.yml wrxmpl-stack
