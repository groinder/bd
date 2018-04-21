CREATE VIEW zad19 as SELECT
  CASE W4.PLEC_WAMPIRA WHEN 'M' THEN 'Wampiry' ELSE 'Wampirki' end AS "Plec podwladnych",
  sum(ILOSC_KRWI) AS "Pod Drakula",
  X1."Pod Opojem",
  X2."Pod Wickiem"
FROM DONACJE D INNER JOIN WAMPIRY W4 ON D.PSEUDO_WAMPIRA = W4.PSEUDO_WAMPIRA
  left JOIN (SELECT
          W4.PLEC_WAMPIRA AS "Plec podwladnych",
          sum(ILOSC_KRWI) AS "Pod Opojem"
        FROM DONACJE D INNER JOIN WAMPIRY W4 ON D.PSEUDO_WAMPIRA = W4.PSEUDO_WAMPIRA
        WHERE W4.PSEUDO_SZEFA = 'Opoj'
        GROUP BY W4.PLEC_WAMPIRA) X1 ON X1."Plec podwladnych" = W4.PLEC_WAMPIRA
  left JOIN (SELECT
               W4.PLEC_WAMPIRA AS "Plec podwladnych",
               sum(ILOSC_KRWI) AS "Pod Wickiem"
             FROM DONACJE D INNER JOIN WAMPIRY W4 ON D.PSEUDO_WAMPIRA = W4.PSEUDO_WAMPIRA
             WHERE W4.PSEUDO_SZEFA = 'Wicek'
             GROUP BY W4.PLEC_WAMPIRA) X2 ON X2."Plec podwladnych" = W4.PLEC_WAMPIRA
WHERE W4.PSEUDO_SZEFA = 'Drakula'
GROUP BY W4.PLEC_WAMPIRA, X1."Pod Opojem", X2."Pod Wickiem"
ORDER BY "Plec podwladnych" ASC;
