-- Znaleźć wszystkie myszy należące do kotów płci męskiej
select *
from konto
where deref(WLASCICIEL).plec = 'M';

-- Policzyć ile myszy należy do kotów płci męskiej a ile do źeńskiej
select deref(WLASCICIEL).plec "Płeć", count(numer) "Ilość myszy"
from konto
group by deref(WLASCICIEL).plec;

-- Znaleźć imiona elit które nie brały udziału w incydentach
select e.imie
from ELITA e
where ref(e) not in (select kot from INCYDENTY where kot = ref(e));

-- Wyświetlić numery i wiek myszy, posortować od najmłodszych
select k.numer, k.get_wiek() "Wiek"
from konto k
where DATA_USUNIECIA is null
order by k.get_wiek() asc;

-- Zad. 2
select imie,
       W_STADKU_OD                  "W stadku",
       ROUND(PRZYDZIAL_MYSZY * 0.9) "Zjadal",
       ADD_MONTHS(W_STADKU_OD, 6)   "Podwyzka",
       PRZYDZIAL_MYSZY              "Zjada"
from KOCURY2
where trunc((months_between(to_date('20.06.2018', 'DD.MM.YYYY'), W_STADKU_OD)) / 12) > 8
  and to_date(to_char(W_STADKU_OD, 'MMDD'), 'MMDD') between to_date('01.03', 'DD.MM') and to_date('30.09', 'DD.MM')
union
select imie,
       W_STADKU_OD                  "W stadku",
       ROUND(PRZYDZIAL_MYSZY * 0.9) "Zjadal",
       ADD_MONTHS(W_STADKU_OD, 6)   "Podwyzka",
       PRZYDZIAL_MYSZY              "Zjada"
from elita
where trunc((months_between(to_date('20.06.2018', 'DD.MM.YYYY'), W_STADKU_OD)) / 12) > 8
  and to_date(to_char(W_STADKU_OD, 'MMDD'), 'MMDD') between to_date('01.03', 'DD.MM') and to_date('30.09', 'DD.MM')
union
select imie,
       W_STADKU_OD                  "W stadku",
       ROUND(PRZYDZIAL_MYSZY * 0.9) "Zjadal",
       ADD_MONTHS(W_STADKU_OD, 6)   "Podwyzka",
       PRZYDZIAL_MYSZY              "Zjada"
from plebs
where trunc((months_between(to_date('20.06.2018', 'DD.MM.YYYY'), W_STADKU_OD)) / 12) > 8
  and to_date(to_char(W_STADKU_OD, 'MMDD'), 'MMDD') between to_date('01.03', 'DD.MM') and to_date('30.09', 'DD.MM');

-- Zad. 8
SELECT K.IMIE,
       K.W_STADKU_OD
FROM KOCURY2 K,
     KOCURY2 K1
WHERE K.W_STADKU_OD < K1.W_STADKU_OD
  AND K1.IMIE = 'JACEK'
union
SELECT E.IMIE,
       E.W_STADKU_OD
FROM elita E,
     KOCURY2 K2
WHERE E.W_STADKU_OD < K2.W_STADKU_OD
  AND K2.IMIE = 'JACEK'
union
SELECT P.IMIE,
       P.W_STADKU_OD
FROM plebs P,
     KOCURY2 K3
WHERE P.W_STADKU_OD < K3.W_STADKU_OD
  AND K3.IMIE = 'JACEK'
ORDER BY W_STADKU_OD DESC;

-- Zad. 20
