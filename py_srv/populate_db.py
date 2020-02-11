#!/usr/bin/python3

## This is simple Python 3 application.
## It generates a random ascii string and inserts it into table in PostgreSQL DB.

# Import required modules.
# 'psycopg2' is used to mainain interaction with PostgreSQL DB.
import psycopg2

# 'time' is used to control execution flow.
import time

# 'random' and 'string' modules are used to generate random strings.
import random
import string

# Declare a function, that returns random string.
def rstring():
    return ''.join(random.choices(string.ascii_letters + string.digits, k=16))


# Create 'cn' object - a connection to database.
cn = psycopg2.connect("dbname='sample_db' user='sample' host='postgres' port=5432 password='sample'")

# Create 'cr' object - cursor to interact with database.
cr = cn.cursor()

# Simple infinite loop, that inserts randomly generated string into database.
while True:
    cr.execute(f"INSERT INTO t1(c) VALUES('{rstring()}')")
    # Using 'time.sleep' method to pause for 1 second between queries.
    time.sleep(1)
    # Commit changes made to database after each insertion.
    cn.commit()
