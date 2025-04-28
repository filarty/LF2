INSERT INTO rezept (rezeptname, beschreibung) VALUES
                                                  ('Spaghetti Pomodoro',       'Klassisches italienisches Pastagericht mit fruchtiger Tomatensauce'),
                                                  ('Hähnchen-Brokkoli-Pfanne', 'Würzige Hähnchenbrust mit knackigem Brokkoli aus der Pfanne'),
                                                  ('Kartoffel-Käse-Gratin',    'Cremiger Auflauf aus dünn geschnittenen Kartoffeln und geschmolzenem Käse'),
                                                  ('Lachs mit Reis',           'Zarter Lachs auf einem Bett von lockerem Reis'),
                                                  ('Avocado-Tomaten-Salat',    'Frischer Salat mit cremiger Avocado und sonnengereiften Tomaten'),
                                                  ('Joghurt-Frucht-Bowl',      'Leichte Joghurt-Bowl mit saisonalen Früchten und einem Hauch Süße'),
                                                  ('Gemüsereis',               'Aromatischer Reis mit buntem Gemüse und feinen Gewürzen'),
                                                  ('Rindfleisch-Gemüse-Pfanne','Herzhafte Rindfleischstreifen mit knackigem Gemüse aus der Pfanne'),
                                                  ('Karotten-Joghurt-Dip',     'Cremiger Dip aus Karotten und Naturjoghurt mit frischen Kräutern'),
                                                  ('Streuselteig-Grundlage',   'Knuspriger Teig als perfekte Basis für süße Kuchen und Tartes');


INSERT INTO rezept_zutat (rezeptid, zutatennr) VALUES
                                                    -- Spaghetti Pomodoro
                                                    (1, 12),  -- Spaghetti
                                                    (1, 6),   -- Tomaten
                                                    (1, 5),   -- Olivenöl
                                                    (1, 3),   -- Salz
                                                    (1, 1),   -- Zucker

                                                    -- Hähnchen-Brokkoli-Pfanne
                                                    (2, 7),   -- Hähnchenbrust
                                                    (2, 20),  -- Brokkoli
                                                    (2, 5),   -- Olivenöl
                                                    (2, 3),   -- Salz

                                                    -- Kartoffel-Käse-Gratin
                                                    (3, 10),  -- Kartoffeln
                                                    (3, 8),   -- Käse
                                                    (3, 4),   -- Butter
                                                    (3, 3),   -- Salz

                                                    -- Lachs mit Reis
                                                    (4, 11),  -- Lachs
                                                    (4, 16),  -- Reis
                                                    (4, 5),   -- Olivenöl
                                                    (4, 3),   -- Salz

                                                    -- Avocado-Tomaten-Salat
                                                    (5, 18),  -- Avocado
                                                    (5, 6),   -- Tomaten
                                                    (5, 5),   -- Olivenöl
                                                    (5, 3),   -- Salz

                                                    -- Joghurt-Frucht-Bowl
                                                    (6, 13),  -- Joghurt
                                                    (6, 15),  -- Banane
                                                    (6, 14),  -- Apfel
                                                    (6, 1),   -- Zucker

                                                    -- Gemüsereis
                                                    (7, 16),  -- Reis
                                                    (7, 9),   -- Karotten
                                                    (7, 20),  -- Brokkoli
                                                    (7, 5),   -- Olivenöl
                                                    (7, 3),   -- Salz

                                                    -- Rindfleisch-Gemüse-Pfanne
                                                    (8, 19),  -- Rindfleisch
                                                    (8, 9),   -- Karotten
                                                    (8, 20),  -- Brokkoli
                                                    (8, 5),   -- Olivenöl
                                                    (8, 3),   -- Salz

                                                    -- Karotten-Joghurt-Dip
                                                    (9, 9),   -- Karotten
                                                    (9, 13),  -- Joghurt
                                                    (9, 3),   -- Salz

                                                    -- Streuselteig-Grundlage
                                                    (10, 2),  -- Mehl
                                                    (10, 4),  -- Butter
                                                    (10, 1);  -- Zucker
