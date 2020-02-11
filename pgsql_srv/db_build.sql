/* This script performs initial database build */

-- Create new user 'sample'
CREATE ROLE sample WITH LOGIN PASSWORD 'sample';

-- Create new database 'sample_db'
CREATE DATABASE sample_db OWNER sample;

-- Connect to newly created database
\connect sample_db;

-- Create single table 't1'
CREATE TABLE t1 (s serial, c char(16));

-- Grant required privileges to user 'sample' on database objects
GRANT ALL ON t1 TO sample;
GRANT ALL ON t1_s_seq TO sample;
