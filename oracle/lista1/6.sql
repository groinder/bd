SELECT
  RPAD(LPAD((LEVEL-1), (LEVEL-1)*4+1, '==>'), 16) ||
  LPAD(' ', (LEVEL-1)*4) || imie "Hierarchia",
  NVL(szef, 'Sam sobie panem') "Pseudo szefa",
  funkcja "Funkcja"
FROM Kocury
WHERE NVL(myszy_extra, 0) > 0
CONNECT BY PRIOR pseudo = szef
START WITH szef IS NULL;