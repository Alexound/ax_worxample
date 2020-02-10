CREATE ROLE sample WITH LOGIN PASSWORD 'sample';
CREATE DATABASE sample_db OWNER sample;

\connect sample_db;

CREATE TABLE t1 (s serial, c char(16));
GRANT ALL ON t1 TO sample;
GRANT ALL ON t1_s_seq TO sample;
