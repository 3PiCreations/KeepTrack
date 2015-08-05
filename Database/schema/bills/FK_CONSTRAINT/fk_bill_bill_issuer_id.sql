
ALTER
	TABLE ONLY bills.bill
	ADD CONSTRAINT fk_bill_bill_issuer_id
	FOREIGN KEY (bill_issuer_id)
	REFERENCES bill.bill_issuer(bill_issuer_id)
	DEFERRABLE INITIALLY DEFERRED;


