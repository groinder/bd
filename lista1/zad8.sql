SELECT
  GRUPA_KRWI        AS "Grupa",
  PLEC_DAWCY        AS "Plec",
  count(GRUPA_KRWI) AS "Liczba dawcow"
FROM DAWCY
GROUP BY GRUPA_KRWI, PLEC_DAWCY;