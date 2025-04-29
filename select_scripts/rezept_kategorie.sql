SELECT rezeptname FROM rezept
INNER JOIN kategorie_rezept ON kategorie_rezept.rezeptid = rezept.rezeptid
INNER JOIN kategorie ON kategorie_rezept.kategorieid = kategorie.kategorieid
WHERE kategorie.kategoriename = 'Vegetarisch';