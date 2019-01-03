SELECT
  PSEUDO,
  PLEC,
  PRZYDZIAL_MYSZY     "Myszy po podw.",
  NVL(MYSZY_EXTRA, 0) "Extr po podw."
FROM
  (SELECT
     PSEUDO,
     K.NR_BANDY,
     PLEC,
     PRZYDZIAL_MYSZY,
     MYSZY_EXTRA,
     W_STADKU_OD,
     B.NAZWA,
     RANK()
     OVER (
       ORDER BY W_STADKU_OD ASC ) AS STAZ
   FROM KOCURY K
     JOIN BANDY B ON K.NR_BANDY = B.NR_BANDY
   WHERE NAZWA = 'CZARNI RYCERZE' OR NAZWA = 'LACIACI MYSLIWI')
WHERE STAZ <= 6;

CREATE VIEW P2 AS
  SELECT
    PSEUDO,
    PLEC,
    PRZYDZIAL_MYSZY     "Myszy przed podw.",
    NVL(MYSZY_EXTRA, 0) "Extra przed podw."
  FROM
    (SELECT
       PSEUDO,
       K.NR_BANDY,
       PLEC,
       PRZYDZIAL_MYSZY,
       MYSZY_EXTRA,
       W_STADKU_OD,
       B.NAZWA,
       RANK()
       OVER (
         ORDER BY W_STADKU_OD ASC ) AS STAZ
     FROM KOCURY K
       JOIN BANDY B ON K.NR_BANDY = B.NR_BANDY
     WHERE NAZWA = 'CZARNI RYCERZE' OR NAZWA = 'LACIACI MYSLIWI')
  WHERE STAZ <= 6;

UPDATE KOCURY K
SET PRZYDZIAL_MYSZY = CASE
                      WHEN PLEC = 'D'
                        THEN PRZYDZIAL_MYSZY + 0.1 * (SELECT MIN(PRZYDZIAL_MYSZY)
                                                      FROM KOCURY)
                      WHEN PLEC = 'M'
                        THEN PRZYDZIAL_MYSZY + 10
                      END,
  MYSZY_EXTRA       = NVL(MYSZY_EXTRA, 0) + (SELECT 0.15 * AVG(NVL(MYSZY_EXTRA, 0))
                                             FROM KOCURY
                                               JOIN BANDY USING (NR_BANDY)
                                             WHERE NR_BANDY = K.NR_BANDY)
WHERE PSEUDO IN (SELECT PSEUDO
                 FROM P2);


SELECT
  PSEUDO,
  PLEC,
  PRZYDZIAL_MYSZY     "Myszy po podw.",
  NVL(MYSZY_EXTRA, 0) "Extr po podw."
FROM
  (SELECT
     PSEUDO,
     K.NR_BANDY,
     PLEC,
     PRZYDZIAL_MYSZY,
     MYSZY_EXTRA,
     W_STADKU_OD,
     B.NAZWA,
     RANK()
     OVER (
       ORDER BY W_STADKU_OD ASC ) AS STAZ
   FROM KOCURY K
     JOIN BANDY B ON K.NR_BANDY = B.NR_BANDY
   WHERE NAZWA = 'CZARNI RYCERZE' OR NAZWA = 'LACIACI MYSLIWI')
WHERE STAZ <= 6;


ROLLBACK;