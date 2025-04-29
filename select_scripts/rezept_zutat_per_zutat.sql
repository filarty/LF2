SELECT rezeptname FROM rezept
INNER JOIN rezept_zutat ON rezept.rezeptid = rezept_zutat.rezeptid
INNER JOIN zutat ON zutat.zutatennr = rezept_zutat.zutatennr
WHERE zutat.bezeichnung = 'Tomaten'