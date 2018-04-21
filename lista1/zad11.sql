SELECT
  PSEUDO_DAWCY   AS "Pseudonim",
  'Powyzej 1000' AS "Pobor"
FROM DONACJE
GROUP BY PSEUDO_DAWCY
HAVING sum(ILOSC_KRWI) > 1000
UNION ALL SELECT
            PSEUDO_DAWCY AS "Pseudonim",
            'Miedzy 700 a 1000'
          FROM DONACJE
          GROUP BY PSEUDO_DAWCY
          HAVING sum(ILOSC_KRWI) <= 1000 AND sum(ILOSC_KRWI) >= 700
UNION ALL SELECT
            PSEUDO_DAWCY AS "Pseudonim",
            'Ponizej 700'
          FROM DONACJE
          GROUP BY PSEUDO_DAWCY
          HAVING sum(ILOSC_KRWI) < 700
ORDER BY "Pseudonim" ASC;
