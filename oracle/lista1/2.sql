select
  imie,
  W_STADKU_OD                  "W stadku",
  ROUND(PRZYDZIAL_MYSZY * 0.9) "Zjadal",
  ADD_MONTHS(W_STADKU_OD, 6)   "Podwyzka",
  PRZYDZIAL_MYSZY              "Zjada"
from KOCURY
where trunc((months_between(to_date('20.06.2018', 'DD.MM.YYYY'), W_STADKU_OD)) / 12) > 8 and
      to_date(to_char(W_STADKU_OD, 'MMDD'), 'MMDD') between to_date('01.03', 'DD.MM') and to_date('30.09', 'DD.MM');
