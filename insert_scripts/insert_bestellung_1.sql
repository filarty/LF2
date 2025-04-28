INSERT INTO bestellung (kundennr, bestelldatum, rechnungsbetrag) VALUES
                                                                     (1,  '2025-04-15',  45.50),
                                                                     (2,  '2025-04-10', 120.00),
                                                                     (3,  '2025-03-30',  75.20),
                                                                     (4,  '2025-03-25',  32.99),
                                                                     (5,  '2025-03-20', 150.00),
                                                                     (6,  '2025-02-14',  88.30),
                                                                     (7,  '2025-02-01',  55.75),
                                                                     (8,  '2025-01-28',  23.10),
                                                                     (9,  '2025-01-15',  99.99),
                                                                     (10, '2024-12-10',  60.00),
                                                                     (11, '2024-11-05', 130.55),
                                                                     (12, '2024-10-18',  47.80),
                                                                     (13, '2024-09-30', 200.00),
                                                                     (14, '2024-08-22', 110.45),
                                                                     (15, '2024-07-15',  25.00),
                                                                     (16, '2024-06-10',  75.00),
                                                                     (17, '2024-05-05',  95.20),
                                                                     (18, '2024-04-01',  40.40),
                                                                     (19, '2024-02-14', 180.99),
                                                                     (20, '2024-01-10',  15.30);


INSERT INTO bestellungzutat (bestellnr, zutatennr, menge) VALUES
                                                               (1,  1,  500),  -- Bestellung 1 → 500 g Zucker
                                                               (2,  2, 1000),  -- Bestellung 2 → 1 000 g Mehl
                                                               (3,  3,  200),  -- Bestellung 3 → 200 g Salz
                                                               (4,  4,  250),  -- Bestellung 4 → 250 g Butter
                                                               (5,  5,  100),  -- Bestellung 5 → 100 ml Olivenöl
                                                               (6,  6,  600),  -- Bestellung 6 → 600 g Tomaten
                                                               (7,  7, 1000),  -- Bestellung 7 → 1 000 g Hähnchenbrust
                                                               (8,  8,  300),  -- Bestellung 8 → 300 g Käse
                                                               (9,  9,  400),  -- Bestellung 9 → 400 g Karotten
                                                               (10, 10,  800); -- Bestellung 10 → 800 g Kartoffeln



INSERT INTO bestellung_rezept (bestellnr, rezeptid) VALUES
                                                        (11, 1),  -- Bestellung 11 → Spaghetti Pomodoro
                                                        (12, 2),  -- Bestellung 12 → Hähnchen-Brokkoli-Pfanne
                                                        (13, 3),  -- Bestellung 13 → Kartoffel-Käse-Gratin
                                                        (14, 4),  -- Bestellung 14 → Lachs mit Reis
                                                        (15, 5),  -- Bestellung 15 → Avocado-Tomaten-Salat
                                                        (16, 6),  -- Bestellung 16 → Joghurt-Frucht-Bowl
                                                        (17, 7),  -- Bestellung 17 → Gemüsereis
                                                        (18, 8),  -- Bestellung 18 → Rindfleisch-Gemüse-Pfanne
                                                        (19, 9),  -- Bestellung 19 → Karotten-Joghurt-Dip
                                                        (20, 10); -- Bestellung 20 → Streuselteig-Grundlage