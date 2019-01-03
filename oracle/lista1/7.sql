SELECT LPAD(' ', 3 * (LEVEL - 1)) || pseudo "Droga sluzbowa"
FROM Kocury
CONNECT BY pseudo = PRIOR szef and prior PSEUDO <> 'MAN'
START WITH
  plec = 'M'
  AND trunc((months_between(to_date('20.06.2018', 'DD.MM.YYYY'), W_STADKU_OD)) / 12) > 8
  AND NVL(myszy_extra, 0) = 0;