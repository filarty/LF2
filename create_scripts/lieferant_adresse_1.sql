CREATE TABLE lieferantadresse (
    lieferantadresseID SERIAL NOT NULL PRIMARY KEY,
    lieferantennr INTEGER NOT NULL,
    ort TEXT NOT NULL,
    strasse TEXT NOT NULL,
    hausnr INTEGER NOT NULL,
    plz INTEGER NOT NULL,
    FOREIGN KEY (lieferantennr) REFERENCES lieferant(lieferantennr) ON DELETE CASCADE
);


ALTER TABLE lieferant
DROP COLUMN strasse,
DROP COLUMN hausnr,
DROP COLUMN plz,
DROP COLUMN  ort;