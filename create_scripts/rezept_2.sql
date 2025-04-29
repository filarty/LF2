ALTER TABLE rezept_zutat
ADD COLUMN menge INTEGER;


UPDATE rezept_zutat AS rz
SET menge = v.menge
FROM (VALUES
          (1, 12, 200),  -- Spaghetti Pomodoro → 200 g Spaghetti
          (1,  6, 300),  --             → 300 g Tomaten
          (1,  5,  20),  --             →  20 g Olivenöl
          (1,  3,   5),  --             →   5 g Salz
          (1,  1,  10),  --             →  10 g Zucker

          (2,  7, 200),  -- Hähnchen-Brokkoli-Pfanne → 200 g Hähnchenbrust
          (2, 20, 150),  --                         → 150 g Brokkoli
          (2,  5,  15),  --                         →  15 g Olivenöl
          (2,  3,   3),  --                         →   3 g Salz

          (3, 10, 800),  -- Kartoffel-Käse-Gratin → 800 g Kartoffeln
          (3,  8, 200),  --                        → 200 g Käse
          (3,  4,  50),  --                        →  50 g Butter
          (3,  3,   5),  --                        →   5 g Salz

          (4, 11, 200),  -- Lachs mit Reis → 200 g Lachs
          (4, 16, 150),  --                 → 150 g Reis
          (4,  5,  10),  --                 →  10 g Olivenöl
          (4,  3,   3),  --                 →   3 g Salz

          (5, 18, 150),  -- Avocado-Tomaten-Salat → 150 g Avocado
          (5,  6, 200),  --                      → 200 g Tomaten
          (5,  5,  15),  --                      →  15 g Olivenöl
          (5,  3,   3),  --                      →   3 g Salz

          (6, 13, 150),  -- Joghurt-Frucht-Bowl → 150 g Joghurt
          (6, 15, 120),  --                     → 120 g Banane
          (6, 14, 150),  --                     → 150 g Apfel
          (6,  1,  10),  --                     →  10 g Zucker

          (7, 16, 150),  -- Gemüsereis → 150 g Reis
          (7,  9, 100),  --             → 100 g Karotten
          (7, 20, 100),  --             → 100 g Brokkoli
          (7,  5,  10),  --             →  10 g Olivenöl
          (7,  3,   3),  --             →   3 g Salz

          (8, 19, 200),  -- Rindfleisch-Gemüse-Pfanne → 200 g Rindfleisch
          (8,  9, 100),  --                          → 100 g Karotten
          (8, 20, 100),  --                          → 100 g Brokkoli
          (8,  5,  15),  --                          →  15 g Olivenöl
          (8,  3,   3),  --                          →   3 g Salz

          (9,  9, 100),  -- Karotten-Joghurt-Dip → 100 g Karotten
          (9, 13, 100),  --                      → 100 g Joghurt
          (9,  3,   3),  --                      →   3 g Salz

          (10, 2, 300),  -- Streuselteig-Grundlage → 300 g Mehl
          (10, 4, 100),  --                         → 100 g Butter
          (10, 1,  80)   --                         →  80 g Zucker
     ) AS v(rezeptid, zutatennnr, menge)
WHERE rz.rezeptid = v.rezeptid
  AND rz.zutatennr = v.zutatennnr;

