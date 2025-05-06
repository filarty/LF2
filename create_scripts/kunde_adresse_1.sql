CREATE TABLE kundeadresse (
    adresseID SERIAL NOT NULL PRIMARY KEY,
    kundennnr INTEGER NOT NULL,
    stadt TEXT NOT NULL,
    strasse TEXT NOT NULL,
    hausnr INTEGER NOT NULL,
    plz INTEGER NOT NULL,
    FOREIGN KEY (kundennnr) REFERENCES kunde(kundennr) ON DELETE CASCADE
);

ALTER TABLE kunde
DROP COLUMN strasse,
DROP COLUMN hausnr,
DROP COLUMN  plz,
DROP COLUMN ort;