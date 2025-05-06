CREATE OR REPLACE PROCEDURE create_rezept_from_zutaten(
    name text,
    zutaten zutat_menge[],
    rezeptbeschreibung text
)
LANGUAGE plpgsql
AS $$
    DECLARE
        item zutat_menge;
        rezeptnnr int;
    BEGIN
        ---Add new rezept---
        INSERT INTO rezept(rezeptname, beschreibung)
        VALUES (name, rezeptbeschreibung)
        RETURNING rezeptid INTO rezeptnnr;

        ---Loop for rezept_zutat tabel---
        FOREACH item IN ARRAY zutaten LOOP
            INSERT INTO rezept_zutat(rezeptid, zutatennr, menge)
            VALUES (rezeptnnr, item.zutatennr, item.menge);
        END LOOP;
        COMMIT;
    END;
$$

