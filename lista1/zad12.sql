select NR_ZLECENIA as "Zlecenia AB"
from DONACJE
where PSEUDO_DAWCY in (select PSEUDO_DAWCY
                       from DAWCY
                       where GRUPA_KRWI = 'AB');