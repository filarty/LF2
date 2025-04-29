SELECT bezeichnung, rezept_zutat.rezeptid from zutat
LEFT JOIN rezept_zutat ON zutat.zutatennr = rezept_zutat.zutatennr
WHERE rezept_zutat.rezeptid IS NULL;