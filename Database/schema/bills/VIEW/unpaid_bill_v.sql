
CREATE OR REPLACE VIEW bills.unpaid_bill_v AS 
	SELECT
		bill.bill_id,
		bill.due_date,
		bill.start_date,
		bill.end_date,
		bill.total_amount_due,
		payments.total_paid,
		bill.bill_issuer,
		bill.create_time,
		bill.update_time,
		bill.delete_time,
	FROM bills.bill
	LEFT JOIN (SELECT payment.bill_id, sum(amount_paid) AS total_paid FROM bills.payment GROUP BY payment.bill_id) as payments
	ON bill.bill_id=payments.bill_id
	WHERE COALESCE(payments.total, 0::money) < bill.total_amount_due;

ALTER VIEW bills.unpaid_bill_v OWNER TO postgres;

GRANT ALL ON TABLE bills.unpaid_bill_v TO keeptrack;
