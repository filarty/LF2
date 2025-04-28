CREATE TABLE beschränkung (
    beschränkungID SERIAL NOT NULL PRIMARY KEY,
    beschränkungname TEXT NOT NULL
);

CREATE TABLE beschränkung_zutat (
    beschränkungID INTEGER NOT NULL,
    zutatennnr INTEGER NOT NULL,
    PRIMARY KEY (beschränkungID, zutatennnr)
);

