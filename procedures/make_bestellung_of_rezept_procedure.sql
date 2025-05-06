CREATE OR REPLACE PROCEDURE make_bestellung_of_rezept(
    rezeptnnr int,
    kundenid int
)
LANGUAGE plpgsql
AS $$
    DECLARE
        rechnung int;
        bestellungid int;
    BEGIN
        --- Create bestellung ---
        SELECT(SUM(nettopreis * rezept_zutat.menge)) INTO rechnung FROM zutat
        INNER JOIN rezept_zutat ON zutat.zutatennr = rezept_zutat.zutatennr
        WHERE rezept_zutat.rezeptid = rezeptnnr;

        INSERT INTO bestellung(kundennr, bestelldatum, rechnungsbetrag)
        VALUES (kundenid, CURRENT_DATE, rechnung)
        RETURNING bestellnr INTO bestellungid;

        --- many to many---
        INSERT INTO bestellung_rezept(bestellnr, rezeptid)
        VALUES (bestellungid, rezeptnnr);
        COMMIT;
    END;
$$
