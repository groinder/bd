select
  ILOSC_KRWI as "Objetosc",
  PSEUDO_DAWCY as "Dawca"
from (select
        ILOSC_KRWI,
        PSEUDO_DAWCY
      from DONACJE
      order by ILOSC_KRWI desc) DON
where ROWNUM <= 3;