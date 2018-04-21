SELECT
  ILOSC_KRWI   AS "Objetosc",
  PSEUDO_DAWCY AS "Dawca"
FROM DONACJE D
where 3 >= (select count(distinct ILOSC_KRWI)
             from DONACJE DD
             where DD.ILOSC_KRWI >= D.ILOSC_KRWI)
order by ILOSC_KRWI desc;