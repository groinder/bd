create view spozycie as select PSEUDO_WAMPIRA pseudo, sum(ILOSC_KRWI) spozycie from DONACJE group by PSEUDO_WAMPIRA having PSEUDO_WAMPIRA != 'Drakula';
select * from spozycie;