--- CO2-Äquivalenz --
SELECT rezeptname, beschreibung, ROUND(AVG(co2 / 100), 1) as co2 FROM rezept
INNER JOIN rezept_zutat ON rezept.rezeptid = rezept_zutat.rezeptid
INNER JOIN zutat ON rezept_zutat.zutatennr = zutat.zutatennr
GROUP BY rezeptname, beschreibung
ORDER BY co2
;
---


--- subselect nach lieferant durch ort ---
SELECT lieferantenname, email, telefon FROM lieferant
WHERE lieferantennr IN (
        SELECT lieferantennr FROM lieferantadresse
        WHERE ort = 'München'
    )
;
---


--- allgemeine Umsatz pro Zutat---
WITH bs_rez AS (
    SELECT zutat.bezeichnung, SUM(zutat.nettopreis * rezept_zutat.menge) AS preis FROM rezept
    INNER JOIN bestellung_rezept ON rezept.rezeptid = bestellung_rezept.rezeptid
    INNER JOIN rezept_zutat ON rezept.rezeptid = rezept_zutat.rezeptid
    INNER JOIN zutat ON rezept_zutat.zutatennr = zutat.zutatennr
    GROUP BY zutat.bezeichnung, zutat.zutatennr
),

bs_zutat AS (
    SELECT zutat.bezeichnung, SUM(zutat.nettopreis * bestellungzutat.menge) AS preis FROM zutat
    INNER JOIN bestellungzutat ON zutat.zutatennr = bestellungzutat.zutatennr
    GROUP BY zutat.bezeichnung, zutat.zutatennr
),

bestellungen AS (
    SELECT * FROM bs_rez
    UNION ALL
    SELECT * FROM bs_zutat
)

SELECT bezeichnung, SUM(preis) AS preis FROM bestellungen
GROUP BY bezeichnung
ORDER BY preis;
---


