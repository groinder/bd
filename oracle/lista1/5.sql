select
  LEVEL "Poziom",
  PSEUDO "Pseudonim",
  FUNKCJA "Funkcja",
  NR_BANDY "Nr bandy"
from KOCURY
where PLEC = 'M'
connect by prior PSEUDO = SZEF
start with FUNKCJA = 'BANDZIOR';