select sum(ILOSC_KRWI) as "Cieple buleczki" from DONACJE where DATA_WYDANIA - DATA_ODDANIA <= 10;