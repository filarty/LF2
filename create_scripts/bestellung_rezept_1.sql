CREATE TABLE bestellung_rezept (
    bestellnr INTEGER NOT NULL,
    rezeptID INTEGER NOT NULL,
    PRIMARY KEY (bestellnr, rezeptID)
);