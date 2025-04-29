SELECT bezeichnung, menge FROM zutat
INNER JOIN rezept_zutat ON zutat.zutatennr = rezept_zutat.zutatennr
INNER JOIN rezept ON rezept_zutat.rezeptid = rezept.rezeptid
WHERE rezeptname = 'Lachs mit Reis';