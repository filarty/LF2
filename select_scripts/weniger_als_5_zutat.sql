SELECT rezeptname, beschreibung, COUNT(zutat) as zutat_inhalt FROM rezept
INNER JOIN rezept_zutat ON rezept.rezeptid = rezept_zutat.rezeptid
INNER JOIN zutat ON rezept_zutat.zutatennr = zutat.zutatennr
GROUP BY rezeptname, beschreibung
HAVING COUNT(zutat) < 5;


SELECT rezeptname, beschreibung, COUNT(zutat) as zutat_inhalt, kategorie.kategoriename FROM rezept
INNER JOIN rezept_zutat ON rezept.rezeptid = rezept_zutat.rezeptid
INNER JOIN zutat ON rezept_zutat.zutatennr = zutat.zutatennr
INNER JOIN kategorie_rezept ON rezept.rezeptid = kategorie_rezept.rezeptid
INNER JOIN kategorie ON kategorie_rezept.kategorieid = kategorie.kategorieid
WHERE kategorie.kategoriename = 'Low Carb'
GROUP BY rezeptname, beschreibung, kategoriename
HAVING COUNT(zutat) < 5;