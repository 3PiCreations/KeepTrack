
CREATE TABLE bills.payment (
	payment_id integer NOT NULL DEFAULT nextval('core.global_id_seq'::regclass),
	bill_id integer NOT NULL,
	amount_paid money NOT NULL,
	create_time timestamp without time zone,
	update_time timestamp without time zone,
	delete_time timestamp without time zone
);

ALTER TABLE bills.payment OWNER TO postgres;

GRANT ALL ON TABLE bills.payment TO postgres;
GRANT ALL ON TABLE bills.payment TO keeptrack;

