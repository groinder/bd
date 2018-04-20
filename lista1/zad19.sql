select sum(ILOSC_KRWI) IloscDrakula,
  case W.PLEC_WAMPIRA when 'M' then 'Wampiry' else 'Wampirki' end Plec,
  W.PSEUDO_SZEFA
from DONACJE
  inner join WAMPIRY W on DONACJE.PSEUDO_WAMPIRA = W.PSEUDO_WAMPIRA
  where PSEUDO_SZEFA = 'Drakula'
group by W.PSEUDO_SZEFA, W.PLEC_WAMPIRA;

select PSEUDO_SZEFA from WAMPIRY where PSEUDO_SZEFA is not null group by PSEUDO_SZEFA;

select Plec "Plec podwladnych",
  (select ilosc from(select sum(ILOSC_KRWI) Ilosc,
                            case W.PLEC_WAMPIRA when 'M' then 'Wampiry' else 'Wampirki' end Plec,
                       W.PSEUDO_SZEFA
                     from DONACJE
                       inner join WAMPIRY W on DONACJE.PSEUDO_WAMPIRA = W.PSEUDO_WAMPIRA
                     where PSEUDO_SZEFA = 'Drakula'
                     group by W.PSEUDO_SZEFA, W.PLEC_WAMPIRA) PD) "Pod Drakula"
from(select sum(ILOSC_KRWI) Ilosc,
            case W.PLEC_WAMPIRA when 'M' then 'Wampiry' else 'Wampirki' end Plec,
       W.PSEUDO_SZEFA
     from DONACJE
       inner join WAMPIRY W on DONACJE.PSEUDO_WAMPIRA = W.PSEUDO_WAMPIRA
     where PSEUDO_SZEFA = 'Drakula'
     group by W.PSEUDO_SZEFA, W.PLEC_WAMPIRA) PD;
