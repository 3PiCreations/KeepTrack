
CREATE SEQUENCE global_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE global_id_seq OWNER TO postgres;

GRANT ALL ON SEQUENCE global_id_seq TO postgres;
GRANT ALL ON SEQUENCE global_id_seq TO keeptrack;

