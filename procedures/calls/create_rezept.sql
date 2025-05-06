CALL create_rezept_from_zutaten('pastakäse',
                                ARRAY [
                                        ROW(7, 100)::zutat_menge,
                                        ROW(8, 50)::zutat_menge,
                                        ROW(12, 200)::zutat_menge
                                    ],
                                'pastakäse'
     );