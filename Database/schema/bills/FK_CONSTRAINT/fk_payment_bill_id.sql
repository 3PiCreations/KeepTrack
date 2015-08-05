
ALTER
	TABLE ONLY bills.payment
	ADD CONSTRAINT fk_payment_bill_id
	FOREIGN KEY (bill_id)
	REFERENCES bills.bill(bill_id)
	DEFERRABLE INITIALLY DEFERRED;


