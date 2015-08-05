
CREATE OR REPLACE VIEW bills.bill_v AS 
	SELECT
		bill.bill_id,
		bill.due_date,
		bill.start_date,
		bill.end_date,
		bill.total_amount_due,
		bill.bill_issuer,
		bill.create_time,
		bill.update_time,
		bill.delete_time
	FROM bills.bill;

ALTER VIEW bills.bill_v OWNER TO postgres;

GRANT ALL ON TABLE bills.bill_v TO keeptrack;
