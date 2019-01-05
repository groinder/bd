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
select k.numer, k.get_wiek() "Wiek" from konto k where DATA_USUNIECIA is null order by k.get_wiek() asc;