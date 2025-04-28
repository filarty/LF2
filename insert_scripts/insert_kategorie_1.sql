INSERT INTO kategorie (kategoriename) VALUES
                                           ('Vegan'),
                                           ('Vegetarisch'),
                                           ('Frutarisch'),
                                           ('Pescetarisch'),
                                           ('Flexitarisch'),
                                           ('Paleo'),
                                           ('Keto'),
                                           ('Low Carb'),
                                           ('High Protein'),
                                           ('Glutenfrei'),
                                           ('Laktosefrei'),
                                           ('Zuckerfrei'),
                                           ('Diabetikerfreundlich'),
                                           ('Herzgesund'),
                                           ('Cholesterinfrei'),
                                           ('Histaminarm'),
                                           ('FODMAP-arm'),
                                           ('Ballaststoffreich'),
                                           ('Superfood'),
                                           ('Rohkost');


INSERT INTO kategorie_rezept (rezeptid, kategorieid) VALUES
                                                          -- Spaghetti Pomodoro (1)
                                                          (1, 2),   -- Vegetarisch
                                                          (1, 5),   -- Flexitarisch
                                                          (1, 11),  -- Laktosefrei

                                                          -- Hähnchen-Brokkoli-Pfanne (2)
                                                          (2, 6),   -- Paleo
                                                          (2, 9),   -- High Protein
                                                          (2, 8),   -- Low Carb
                                                          (2, 5),   -- Flexitarisch
                                                          (2, 11),  -- Laktosefrei

                                                          -- Kartoffel-Käse-Gratin (3)
                                                          (3, 2),   -- Vegetarisch
                                                          (3, 10),  -- Glutenfrei
                                                          (3, 12),  -- Zuckerfrei
                                                          (3, 5),   -- Flexitarisch

                                                          -- Lachs mit Reis (4)
                                                          (4, 4),   -- Pescetarisch
                                                          (4, 9),   -- High Protein
                                                          (4, 14),  -- Herzgesund
                                                          (4, 10),  -- Glutenfrei
                                                          (4, 11),  -- Laktosefrei

                                                          -- Avocado-Tomaten-Salat (5)
                                                          (5, 1),   -- Vegan
                                                          (5, 2),   -- Vegetarisch
                                                          (5, 3),   -- Frutarisch
                                                          (5, 8),   -- Low Carb
                                                          (5, 14),  -- Herzgesund
                                                          (5, 19),  -- Superfood
                                                          (5, 10),  -- Glutenfrei
                                                          (5, 11),  -- Laktosefrei

                                                          -- Joghurt-Frucht-Bowl (6)
                                                          (6, 2),   -- Vegetarisch
                                                          (6, 9),   -- High Protein
                                                          (6, 18),  -- Ballaststoffreich
                                                          (6, 10),  -- Glutenfrei

                                                          -- Gemüsereis (7)
                                                          (7, 1),   -- Vegan
                                                          (7, 2),   -- Vegetarisch
                                                          (7, 10),  -- Glutenfrei
                                                          (7, 14),  -- Herzgesund
                                                          (7, 18),  -- Ballaststoffreich

                                                          -- Rindfleisch-Gemüse-Pfanne (8)
                                                          (8, 6),   -- Paleo
                                                          (8, 9),   -- High Protein
                                                          (8, 8),   -- Low Carb
                                                          (8, 5),   -- Flexitarisch
                                                          (8, 11),  -- Laktosefrei

                                                          -- Karotten-Joghurt-Dip (9)
                                                          (9, 2),   -- Vegetarisch
                                                          (9, 9),   -- High Protein
                                                          (9, 10),  -- Glutenfrei

                                                          -- Streuselteig-Grundlage (10)
                                                          (10, 2),  -- Vegetarisch
                                                          (10, 5);  -- Flexitarisch
