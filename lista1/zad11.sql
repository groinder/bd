select
  PSEUDO_DAWCY             as "Pseudonim",
  case when sum(ILOSC_KRWI) > 1000
    then 'Powyzej 1000'
  when sum(ILOSC_KRWI) <= 1000 and sum(ILOSC_KRWI) >= 700
    then 'Miedzy 700 a 1000'
  when sum(ILOSC_KRWI) < 700
    then 'Ponizej 700' end as "Pobor"
from DONACJE
group by PSEUDO_DAWCY
order by PSEUDO_DAWCY asc;

select
  PSEUDO_DAWCY as "Pseudonim",
  'Powyzej 1000' as "Pobor"
from DONACJE
group by PSEUDO_DAWCY
having sum(ILOSC_KRWI) > 1000
union select
        PSEUDO_DAWCY as "Pseudonim",
        'Miedzy 700 a 1000'
      from DONACJE
      group by PSEUDO_DAWCY
      having sum(ILOSC_KRWI) <= 1000 and sum(ILOSC_KRWI) >= 700
union select
        PSEUDO_DAWCY as "Pseudonim",
        'Ponizej 700'
      from DONACJE
      group by PSEUDO_DAWCY
      having sum(ILOSC_KRWI) < 700
order by "Pseudonim" asc;
