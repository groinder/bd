-- Nr myszy cięższych niż 13 gram
select NUMER_MYSZY
from MYSZY
where WAGA > 13;

-- Imiona wrogów o stopniu wrogości między 7 a 9
select IMIE_WROGA
from WROGOWIE
where STOPIEN_WROGOSCI between 7 and 9;

-- Funkcje z max myszy mniejszym od 70
select NAZWA_FUNKCJI
from FUNKCJE
where MAX_MYSZY < 70;

-- Zlicz ilość myszy upolowanych w każdym roku, posortuj od najmłodszych
select
  extract(year from DATA_UPOLOWANIA) as rok,
  count(NUMER_MYSZY)
from MYSZY
group by extract(year from DATA_UPOLOWANIA)
order by rok asc;

-- Wypisz nazwy band i podległych im terenów
select
  NAZWA_BANDY,
  NAZWA_TERENU
from BANDY
  join TERENY_BANDY on BANDY.NUMER_BANDY = TERENY_BANDY.NUMER_BANDY;

-- Policz ilu wrogów ma każda z band
select
  NAZWA_BANDY,
  count(IMIE_WROGA) as "Ilość wrogów"
from BANDY
  join KOTY K on BANDY.NUMER_BANDY = K.NUMER_BANDY
  join INCYDENTY I on K.PSEUDO_KOTA = I.PSEUDO_KOTA
group by NAZWA_BANDY;

-- Policz ile myszy upolowała każda banda
select
  NAZWA_BANDY,
  count(PSEUDO_KOTA) as "Ilosc myszy"
from BANDY
  join KOTY K on BANDY.NUMER_BANDY = K.NUMER_BANDY
  join MYSZY M on K.PSEUDO_KOTA = M.PSEUDO_LOWCY
group by NAZWA_BANDY;

-- Znajdź tereny nie przypisane do żadnej bandy
select T.NAZWA_TERENU
from TERENY T
where T.NAZWA_TERENU not in (select TB.NAZWA_TERENU
                             from TERENY_BANDY TB
                             where TB.NAZWA_TERENU = T.NAZWA_TERENU);

-- Wypisz koty które nie spożyły żadnej myszy - z podzapytaniem
SELECT K.pseudo_kota AS "Kot"
FROM Koty K
WHERE K.pseudo_kota NOT IN (
  SELECT M.pseudo_zjadacza
  FROM Myszy M
  WHERE M.pseudo_zjadacza);

-- Wypisz dane myszy złapanych przez bandę numer 1 - z podzapytaniem
select *
from MYSZY M
where M.PSEUDO_LOWCY in (select PSEUDO_KOTA
                         from koty
                         where NUMER_BANDY = 1);

-- Określić ile kotów z każdej płci brało udział w incydentach,
-- jeżeli jeden kot brał udział w kilku incydentach powinien być zliczony tylko raz - z podzapytaniem
SELECT
  "Plec",
  count("Plec") "Liczba kotów"
from (select (select plec_kota
              from Koty
              where Koty.pseudo_kota = Incydenty.pseudo_kota) "Plec"
      from Incydenty
      group by pseudo_kota)
group by "Plec";

-- Nr myszy dłyższych niż 10 cm - widok
create view dlugie_myszy as
  select NUMER_MYSZY
  from MYSZY
  where DLUGOSC > 10;

-- Znalaźć wrogów z więcej niz jedna gratyfikacją - widok
create view latwi_wrogowie as
  select GRATYFIKACJE_WROGOW.IMIE_WROGA
  from WROGOWIE
    join GRATYFIKACJE_WROGOW on WROGOWIE.IMIE_WROGA = GRATYFIKACJE_WROGOW.IMIE_WROGA
  having count(WROGOWIE.IMIE_WROGA) > 1
  group by GRATYFIKACJE_WROGOW.IMIE_WROGA;

-- Znaleźć wrogów na których siłą gratyfikacji jest mniejsza od 5, nie powielaj imion wrogów - widok
create view trudni_wrogowie as
  select distinct
    W.IMIE_WROGA,
    G.SILA_GRATYFIKACJI
  from WROGOWIE W
    join GRATYFIKACJE_WROGOW GW on W.IMIE_WROGA = GW.IMIE_WROGA
    join GRATYFIKACJE G on GW.NAZWA_GRATYFIKACJI = G.NAZWA_GRATYFIKACJI
  where G.SILA_GRATYFIKACJI < 5;
