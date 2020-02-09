#!/usr/bin/python3

import psycopg2
import time
import random
import string

def rstring():
    return ''.join(random.choices(string.ascii_letters + string.digits, k=16))

cn = psycopg2.connect("dbname='sample_db' user='sample' host='localhost' port=2345 password='sample'")
cr = cn.cursor()

cr.execute("CREATE TABLE t1(s serial, c char(16))")

while True:
    cr.execute(f"INSERT INTO t1(c) VALUES('{rstring()}')")
    time.sleep(1)
    cn.commit()
