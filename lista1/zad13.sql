SELECT
  ILOSC_KRWI   AS "Objetosc",
  PSEUDO_DAWCY AS "Dawca"
FROM (SELECT
        ILOSC_KRWI,
        PSEUDO_DAWCY,
        rownum as rnum
      FROM DONACJE
      ORDER BY ILOSC_KRWI DESC) DON
WHERE rnum <= 3;

WITH ordered_query AS
(SELECT
   ILOSC_KRWI,
   PSEUDO_DAWCY
 FROM DONACJE
 ORDER BY ILOSC_KRWI DESC)
SELECT *
FROM   ordered_query
WHERE  rownum <= 3;

SELECT
  ILOSC_KRWI   AS "Objetosc",
  PSEUDO_DAWCY AS "Dawca"
FROM DONACJE
ORDER BY ILOSC_KRWI desc
fetch first 3 rows only;