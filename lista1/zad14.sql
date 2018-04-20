select
  "Plec",
  count("Plec") "Liczba lingwistow"
from (select (select PLEC_WAMPIRA
              from WAMPIRY
              where WAMPIRY.PSEUDO_WAMPIRA = JEZYKI_OBCE_W.PSEUDO_WAMPIRA) "Plec"
      from JEZYKI_OBCE_W
      group by PSEUDO_WAMPIRA
      having count(JEZYK_OBCY) > 1) SJ
group by "Plec";

