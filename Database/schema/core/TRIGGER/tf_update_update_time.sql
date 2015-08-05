
CREATE OR REPLACE FUNCTION tf_update_update_time() RETURNS trigger AS
$BODY$

BEGIN

	IF TG_OP = 'DELETE' THEN
		RETURN OLD;
	END IF;
	
	NEW.update_time = now();
	RETURN NEW;
END;

$BODY$
  LANGUAGE plpgsql;

ALTER FUNCTION tf_update_update_time() OWNER TO postgres;

