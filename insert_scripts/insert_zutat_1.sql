INSERT INTO zutat (bezeichnung, einheit, nettopreis, bestand, lieferant, kalorien, kohlenhydrate, protein, ballaststoffe, fettsäuren, natrium, co2, zucker, fett) VALUES
                                                                                                                                                                      ('Zucker',           'g',   0.5,   1000,  1,  400, 100, 0.0, 0, 0, 50, 150, 100, 0),
                                                                                                                                                                      ('Mehl',             'g',   0.3,   5000,  2,  350, 75, 9.0, 2, 0, 0, 0, 3, 1),
                                                                                                                                                                      ('Salz',             'g',   0.2,   2000,  3,  0, 0, 0.0, 0, 100, 100, 0, 0, 0),
                                                                                                                                                                      ('Butter',           'g',   1.2,   500,   4,  720, 0, 1.0, 0, 60, 20, 90, 5, 80),
                                                                                                                                                                      ('Olivenöl',         'ml',  2.5,   1000,  5,  900, 0, 0.0, 0, 100, 30, 150, 0, 100),
                                                                                                                                                                      ('Tomaten',          'g',   1.0,   2000,  6,  18, 4, 1.0, 2, 0, 1, 20, 3, 0),
                                                                                                                                                                      ('Hähnchenbrust',    'g',   3.5,   1500,  7,  165, 0, 31.0, 0, 3, 70, 120, 0, 3),
                                                                                                                                                                      ('Käse',             'g',   2.0,   3000,  8,  400, 0, 25.0, 0, 40, 50, 100, 0, 30),
                                                                                                                                                                      ('Karotten',         'g',   0.8,   1500,  9,  41, 9, 1.0, 3, 0, 20, 100, 5, 0),
                                                                                                                                                                      ('Kartoffeln',       'g',   0.4,   2000,  10,  80, 17, 2.0, 3, 0, 0, 30, 7, 0),
                                                                                                                                                                      ('Lachs',            'g',   6.0,   800,   11,  232, 0, 20.0, 0, 15, 60, 200, 0, 15),
                                                                                                                                                                      ('Spaghetti',        'g',   1.0,   3000,  12,  350, 75, 13.0, 2, 1, 50, 100, 0, 2),
                                                                                                                                                                      ('Joghurt',          'ml',  1.2,   2000,  13,  60, 4, 3.5, 0, 5, 50, 100, 3, 3),
                                                                                                                                                                      ('Apfel',            'g',   0.8,   1000,  14,  52, 14, 0.3, 2, 0, 5, 30, 12, 0),
                                                                                                                                                                      ('Banane',           'g',   1.2,   1200,  15,  89, 23, 1.1, 2, 0, 12, 40, 14, 0),
                                                                                                                                                                      ('Reis',             'g',   1.5,   2500,  16,  130, 28, 3.0, 4, 0, 5, 30, 0, 1),
                                                                                                                                                                      ('Pasta',            'g',   1.0,   4000,  17,  370, 75, 12.0, 3, 0, 50, 120, 0, 2),
                                                                                                                                                                      ('Avocado',          'g',   3.0,   600,   18,  160, 9, 2.0, 6, 20, 20, 50, 1, 15),
                                                                                                                                                                      ('Rindfleisch',      'g',   5.0,   500,   19,  250, 0, 30.0, 0, 30, 70, 150, 0, 20),
                                                                                                                                                                      ('Brokkoli',         'g',   1.0,   1000,  20,  34, 7, 3.0, 3, 0, 10, 50, 2, 0);

INSERT INTO beschränkung (beschränkungname) VALUES
                                                ('Laktose'),
                                                ('Gluten'),
                                                ('Erdnüsse'),
                                                ('Ei'),
                                                ('Tomate'),
                                                ('Soja'),
                                                ('Milch'),
                                                ('Nüsse'),
                                                ('Fisch'),
                                                ('Krebstiere'),
                                                ('Weizen'),
                                                ('Hefe'),
                                                ('Sesam'),
                                                ('Schweinefleisch'),
                                                ('Rindfleisch'),
                                                ('Alkohol'),
                                                ('Zucker'),
                                                ('Aromen'),
                                                ('Farbstoffe');


INSERT INTO beschränkung_zutat (beschränkungid, zutatennnr) VALUES
                                                                (17,  1),  -- Zucker → Zucker
                                                                (2,   2),  -- Mehl → Gluten
                                                                (11,  2),  -- Mehl → Weizen
                                                                (1,   4),  -- Butter → Laktose
                                                                (7,   4),  -- Butter → Milch
                                                                (5,   6),  -- Tomaten → Tomate
                                                                (1,   8),  -- Käse → Laktose
                                                                (7,   8),  -- Käse → Milch
                                                                (9,  11),  -- Lachs → Fisch
                                                                (2,  12),  -- Spaghetti → Gluten
                                                                (11, 12),  -- Spaghetti → Weizen
                                                                (1,  13),  -- Joghurt → Laktose
                                                                (7,  13),  -- Joghurt → Milch
                                                                (2,  17),  -- Pasta → Gluten
                                                                (11, 17),  -- Pasta → Weizen
                                                                (15, 19);  -- Rindfleisch → Rindfleisch
