CREATE SCHEMA core AUTHORIZATION postgres;

REVOKE ALL ON SCHEMA core FROM PUBLIC;

GRANT ALL ON SCHEMA core TO keeptrack;

