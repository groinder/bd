select PSEUDO_WAMPIRA as "Wampir", count(PSEUDO_WAMPIRA) as "Liczba konsumpcji" from DONACJE group by PSEUDO_WAMPIRA having count(PSEUDO_WAMPIRA) > 1;