DROP INDEX IF EXISTS bills.fki_payment_bill;
CREATE INDEX fki_payment_bill
	ON bills.payment
	USING btree (bill_id);
