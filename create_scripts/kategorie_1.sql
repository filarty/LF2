CREATE TABLE kategorie (
    kategorieID SERIAL NOT NULL PRIMARY KEY,
    kategoriename TEXT NOT NULL
);

CREATE TABLE kategorie_rezept (
    kategorieID INTEGER NOT NULL,
    rezeptID INTEGER NOT NULL,
    PRIMARY KEY (kategorieID, rezeptID)
);