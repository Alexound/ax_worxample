#!/bin/bash

## Goals of this script are:

## 1. Clone source files to the Host OS.
## 2. Build two custom images.
## 3. Deploy the service.

git clone https://github.com/Alexound/ax_worxample.git
cd ax_worxample

docker build -t pgsql:srv ./pgsql_srv
docker build -t py:srv ./py_srv

docker stack deploy -c ./wrxmpl_srv/wrxmpl.yml wrxmpl-stack
