CREATE TABLE bestellung_rezept (
    bestellnr INTEGER NOT NULL,
    rezeptID INTEGER NOT NULL,
    FOREIGN KEY (bestellnr) REFERENCES bestellung(bestellnr),
    FOREIGN KEY (rezeptID) REFERENCES rezept(rezeptid),
    PRIMARY KEY (bestellnr, rezeptID)
);