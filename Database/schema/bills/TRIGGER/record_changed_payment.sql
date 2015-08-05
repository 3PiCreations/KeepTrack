DROP TRIGGER IF EXISTS record_changed ON bills.payment;
CREATE TRIGGER record_changed
	BEFORE INSERT OR UPDATE
	ON bills.payment
	FOR EACH ROW
	EXECUTE PROCEDURE core.tf_update_update_time();
