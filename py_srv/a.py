#!/usr/bin/python3

import psycopg2
import time

cn = psycopg2.connect("dbname='sample' user='sample' host='localhost' port=2345 password='sample'")
cr = cn.cursor()

cr.execute("SELECT now()");
for i in cr.fetchall():
    print(i)


