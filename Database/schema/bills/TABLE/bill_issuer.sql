
CREATE TABLE bills.bill_issuer (
	bill_issuer_id integer NOT NULL DEFAULT nextval('core.global_id_seq'::regclass),
	name text NOT NULL,
	description text,
	create_time timestamp without time zone,
	update_time timestamp without time zone,
	delete_time timestamp without time zone
);

ALTER TABLE bills.bill_issuer OWNER TO postgres;

GRANT ALL ON TABLE bills.bill_issuer TO postgres;
GRANT ALL ON TABLE bills.bill_issuer TO keeptrack;

