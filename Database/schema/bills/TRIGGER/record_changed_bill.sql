DROP TRIGGER IF EXISTS record_changed ON bills.bill;
CREATE TRIGGER record_changed
	BEFORE INSERT OR UPDATE
	ON bills.bill
	FOR EACH ROW
	EXECUTE PROCEDURE core.tf_update_update_time();
