
CREATE OR REPLACE VIEW bills.bill_issuer_v AS 
	SELECT
		bill_issuer.bill_issuer_id,
		bill_issuer.name,
		bill_issuer.description,
		bill_issuer.create_time,
		bill_issuer.update_time,
		bill_issuer.delete_time
	FROM bills.bill;

ALTER VIEW bills.bill_issuer_v OWNER TO postgres;

GRANT ALL ON TABLE bills.bill_issuer_v TO keeptrack;
