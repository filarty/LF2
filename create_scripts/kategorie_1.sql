CREATE TABLE kategorie (
    kategorieID SERIAL NOT NULL PRIMARY KEY,
    kategoriename TEXT NOT NULL
);

CREATE TABLE kategorie_rezept (
    kategorieID INTEGER NOT NULL,
    rezeptID INTEGER NOT NULL,
    FOREIGN KEY (kategorieID) REFERENCES kategorie(kategorieID),
    FOREIGN KEY (rezeptID) REFERENCES rezept(rezeptid),
    PRIMARY KEY (kategorieID, rezeptID)
);