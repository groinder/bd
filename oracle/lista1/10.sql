SELECT
  IMIE               AS "Imię kotki",
  B.NAZWA            AS "Nazwa Bandy",
  WK.IMIE_WROGA      AS "Imię wroga",
  W.STOPIEN_WROGOSCI AS "Ocena wroga",
  WK.DATA_INCYDENTU  AS "Data inc."
FROM KOCURY K, BANDY B, WROGOWIE_KOCUROW WK, WROGOWIE W
WHERE K.NR_BANDY = B.NR_BANDY AND K.PSEUDO = WK.PSEUDO AND W.IMIE_WROGA = WK.IMIE_WROGA AND K.PLEC = 'D' AND
      WK.DATA_INCYDENTU > TO_DATE('01/01/2007', 'DD/MM/YYYY')
ORDER BY IMIE ASC, WK.IMIE_WROGA ASC;