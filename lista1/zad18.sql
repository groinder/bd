create view zadania as select
  Z.NR_ZLECENIA,
  Z.PSEUDO_WAMPIRA
from ZLECENIA Z inner join DONACJE D on Z.NR_ZLECENIA = D.NR_ZLECENIA
  inner join WAMPIRY W on Z.PSEUDO_WAMPIRA = W.PSEUDO_WAMPIRA
where W.PSEUDO_WAMPIRA != 'Drakula' and W.PSEUDO_SZEFA != 'Drakula' and D.PSEUDO_WAMPIRA is null;

select * from zadania;