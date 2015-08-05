
CREATE TABLE bills.bill (
	bill_id integer NOT NULL DEFAULT nextval('core.global_id_seq'::regclass),
	due_date date NOT NULL,
	start_date date,
	end_date date,
	total_amount_due money NOT NULL,
	bill_issuer integer,
	create_time timestamp without time zone,
	update_time timestamp without time zone,
	delete_time timestamp without time zone
);

ALTER TABLE bills.bill OWNER TO postgres;

GRANT ALL ON TABLE bills.bill TO postgres;
GRANT ALL ON TABLE bills.bill TO keeptrack;

