WITH
bs_zutat AS (
    SELECT
        bestellung.bestellnr,
        bestellung.kundennr,
        SUM(zutat.kalorien     * bz.menge/100.0) AS sum_kalorien,
        SUM(zutat.kohlenhydrate* bz.menge/100.0) AS sum_kohlenhydrate,
        SUM(zutat.protein      * bz.menge/100.0) AS sum_protein,
        SUM(zutat.ballaststoffe*bz.menge/100.0) AS sum_ballaststoffe,
        SUM(zutat.fettsäuren    * bz.menge/100.0) AS sum_fettsäuren,
        SUM(zutat.natrium       * bz.menge/100.0) AS sum_natrium,
        SUM(zutat.co2           * bz.menge/100.0) AS sum_co2,
        SUM(zutat.zucker        * bz.menge/100.0) AS sum_zucker,
        SUM(zutat.fett          * bz.menge/100.0) AS sum_fett
    FROM bestellung
             JOIN bestellungzutat bz ON bestellung.bestellnr = bz.bestellnr
             JOIN zutat ON bz.zutatennr = zutat.zutatennr
    GROUP BY bestellung.bestellnr, bestellung.kundennr
),

bs_rezept AS (
    SELECT
        bestellung.bestellnr,
        bestellung.kundennr,
        SUM(zutat.kalorien     * rezept_zutat.menge/100.0) AS sum_kalorien,
        SUM(zutat.kohlenhydrate* rezept_zutat.menge/100.0) AS sum_kohlenhydrate,
        SUM(zutat.protein      * rezept_zutat.menge/100.0) AS sum_protein,
        SUM(zutat.ballaststoffe* rezept_zutat.menge/100.0) AS sum_ballaststoffe,
        SUM(zutat.fettsäuren    * rezept_zutat.menge/100.0) AS sum_fettsäuren,
        SUM(zutat.natrium       * rezept_zutat.menge/100.0) AS sum_natrium,
        SUM(zutat.co2           * rezept_zutat.menge/100.0) AS sum_co2,
        SUM(zutat.zucker        * rezept_zutat.menge/100.0) AS sum_zucker,
        SUM(zutat.fett          * rezept_zutat.menge/100.0) AS sum_fett
    FROM bestellung
             JOIN bestellung_rezept ON bestellung.bestellnr = bestellung_rezept.bestellnr
             JOIN rezept_zutat ON bestellung_rezept.rezeptid = rezept_zutat.rezeptid
             JOIN zutat ON rezept_zutat.zutatennr = zutat.zutatennr
    GROUP BY bestellung.bestellnr, bestellung.kundennr
),


bestellungen AS (
    SELECT * FROM bs_zutat
    UNION ALL
    SELECT * FROM bs_rezept
)

SELECT
    kunde.kundennr,
    kunde.vorname,
    kunde.nachname,
    ROUND(AVG(bestellungen.sum_kalorien),      1) AS kalorien,
    ROUND(AVG(bestellungen.sum_kohlenhydrate),  1) AS kohlenhydrate,
    ROUND(AVG(bestellungen.sum_protein),        1) AS protein,
    ROUND(AVG(bestellungen.sum_ballaststoffe),  1) AS ballaststoffe,
    ROUND(AVG(bestellungen.sum_fettsäuren),     1) AS fettsäuren,
    ROUND(AVG(bestellungen.sum_natrium),        1) AS natrium,
    ROUND(AVG(bestellungen.sum_co2),            1) AS co2,
    ROUND(AVG(bestellungen.sum_zucker),         1) AS zucker,
    ROUND(AVG(bestellungen.sum_fett),           1) AS fett
FROM bestellungen
         JOIN kunde ON kunde.kundennr = bestellungen.kundennr
WHERE bestellungen.kundennr = 1
GROUP BY kunde.kundennr, kunde.vorname, kunde.nachname;
