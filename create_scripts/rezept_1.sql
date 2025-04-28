CREATE TABLE rezept (
    rezeptID SERIAL NOT NULL PRIMARY KEY,
    rezeptname TEXT NOT NULL,
    beschreibung TEXT NOT NULL
);


CREATE TABLE rezept_zutat (
    rezeptID INTEGER NOT NULL,
    zutatennr INTEGER NOT NULL,
    FOREIGN KEY (rezeptID) REFERENCES rezept(rezeptID),
    FOREIGN KEY (zutatennr) REFERENCES zutat(zutatennr),
    PRIMARY KEY (rezeptID, zutatennr)
);