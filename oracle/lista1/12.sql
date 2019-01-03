SELECT
  FUNKCJA,
  ROUND(AVG(PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0)), 0) AS SREDNIPRZYDZIAL
FROM KOCURY
WHERE FUNKCJA <> 'SZEFUNIO'
GROUP BY FUNKCJA
HAVING ROUND(AVG(PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0)), 0) = (SELECT MAX(ROUND(AVG(PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0)), 0))
                                                     FROM KOCURY
                                                     WHERE FUNKCJA <> 'SZEFUNIO'
                                                     GROUP BY FUNKCJA)
       OR
       ROUND(AVG(PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0)), 0) = (SELECT MIN(ROUND(AVG(PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0)), 0))
                                                     FROM KOCURY
                                                     WHERE FUNKCJA <> 'SZEFUNIO'
                                                     GROUP BY FUNKCJA);