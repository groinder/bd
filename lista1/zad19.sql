drop VIEW zad19;

CREATE VIEW zad19 AS
  SELECT
    CASE W4.PLEC_WAMPIRA
    WHEN 'M'
      THEN 'Wampiry'
    ELSE 'Wampirki' END AS "Plec podwladnych",
    sum(case WHEN w4.PSEUDO_SZEFA = 'Drakula' then ILOSC_KRWI else 0 end) AS "Pod Drakula",
    sum(case WHEN w4.PSEUDO_SZEFA = 'Opoj' then ILOSC_KRWI else 0 end) AS "Pod Opojem",
    sum(case WHEN w4.PSEUDO_SZEFA = 'Wicek' then ILOSC_KRWI else 0 end) AS "Pod Wickiem"
  FROM DONACJE D INNER JOIN WAMPIRY W4 ON D.PSEUDO_WAMPIRA = W4.PSEUDO_WAMPIRA
  GROUP BY W4.PLEC_WAMPIRA
  ORDER BY "Plec podwladnych" ASC;
