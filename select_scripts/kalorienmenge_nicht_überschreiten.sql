SELECT rezeptname, beschreibung, SUM(kalorien) as kalorien FROM rezept
INNER JOIN rezept_zutat ON rezept.rezeptid = rezept_zutat.rezeptid
INNER JOIN zutat ON rezept_zutat.zutatennr = zutat.zutatennr
GROUP BY rezeptname, beschreibung
HAVING SUM(kalorien) < 1200;