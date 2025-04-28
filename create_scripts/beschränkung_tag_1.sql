CREATE TABLE beschränkung (
    beschränkungID SERIAL NOT NULL PRIMARY KEY,
    beschränkungname TEXT NOT NULL
);

CREATE TABLE beschränkung_zutat (
    beschränkungID INTEGER NOT NULL,
    zutatennnr INTEGER NOT NULL,
    FOREIGN KEY (beschränkungID) REFERENCES beschränkung(beschränkungID),
    FOREIGN KEY (zutatennnr) REFERENCES zutat(zutatennr),
    PRIMARY KEY (beschränkungID, zutatennnr)
);

