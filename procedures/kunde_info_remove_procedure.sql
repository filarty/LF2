CREATE OR REPLACE PROCEDURE kunde_info_remove(
    kundeid int
)
LANGUAGE plpgsql
AS $$
    BEGIN
    DELETE FROM kunde WHERE kundennr = kundeid;
    DELETE FROM bestellung WHERE kundennr = kundeid;
    COMMIT;
    END;
$$