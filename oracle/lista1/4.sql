select
  'Liczba kotow=',
  count(PSEUDO),
  'lowi jako',
  FUNKCJA,
  'i zjada max.',
  max(PRZYDZIAL_MYSZY + nvl(MYSZY_EXTRA, 0)),
  'myszy miesiecznie'
from (select *
      from KOCURY
      where PLEC = 'D')
where FUNKCJA != 'SZEFUNIO'
having avg(PRZYDZIAL_MYSZY + nvl(MYSZY_EXTRA, 0)) > 50
group by FUNKCJA