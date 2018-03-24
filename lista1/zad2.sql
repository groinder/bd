ALTER SESSION SET NLS_DATE_FORMAT = 'DD.MM.YYYY';

INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Drakula','12.12.1217','M',NULL);
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Opoj','07.11.1777','M','Drakula');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Wicek','11.11.1721','M','Drakula');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Baczek','13.04.1855','M','Opoj');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Bolek','31.05.1945','M','Opoj');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Gacek','21.02.1891','M','Wicek');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Pijawka','03.11.1901','K','Wicek');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Czerwony','13.09.1823','M','Wicek');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Komar','23.07.1911','M','Wicek');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Zyleta','23.09.1911','K','Opoj');
INSERT INTO WAMPIRY(PSEUDO_WAMPIRA, WAMPIR_W_RODZINIE, PLEC_WAMPIRA, PSEUDO_SZEFA) VALUES ('Predka','29.03.1877','K','Drakula');

INSERT INTO ZLECENIA (NR_ZLECENIA, DATA_ZLECENIA, PSEUDO_WAMPIRA) VALUES (221,'04.07.2005','Opoj');
INSERT INTO ZLECENIA (NR_ZLECENIA, DATA_ZLECENIA, PSEUDO_WAMPIRA) VALUES (222,'04.07.2005','Baczek');
INSERT INTO ZLECENIA (NR_ZLECENIA, DATA_ZLECENIA, PSEUDO_WAMPIRA) VALUES (223,'17.07.2005','Bolek');
INSERT INTO ZLECENIA (NR_ZLECENIA, DATA_ZLECENIA, PSEUDO_WAMPIRA) VALUES (224,'22.07.2005','Opoj');
INSERT INTO ZLECENIA (NR_ZLECENIA, DATA_ZLECENIA, PSEUDO_WAMPIRA) VALUES (225,'01.08.2005','Pijawka');
INSERT INTO ZLECENIA (NR_ZLECENIA, DATA_ZLECENIA, PSEUDO_WAMPIRA) VALUES (226,'07.08.2005','Gacek');

INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Slodka',1966,'K','AB');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Miodzio',1983,'M','B');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Gorzka',1958,'K','0');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Lolita',1987,'K','0');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Wytrawny',1971,'M','A');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Okocim',1966,'M','B');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Adonis',1977,'M','AB');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Zywiec',1969,'M','A');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Eliksir',1977,'M','0');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Zenek',1959,'M','B');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Zoska',1963,'K','0');
INSERT INTO DAWCY (PSEUDO_DAWCY, ROCZNIK_DAWCY, PLEC_DAWCY, GRUPA_KRWI) VALUES ('Czerwonka',1953,'M','A');

INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (221,'Slodka','04.07.2005',455,'Drakula','06.08.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (221,'Miodzio','04.07.2005',680,'Gacek','15.08.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (221,'Gorzka','05.07.2005',471,'Pijawka','11.08.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (221,'Lolita','05.07.2005',340,'Czerwony','21.08.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (222,'Wytrawny','07.07.2005',703,'Drakula','17.07.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (222,'Okocim','07.07.2005',530,'Komar','01.09.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (222,'Adonis','08.07.2005',221,'Zyleta','11.09.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (223,'Zywiec','17.07.2005',587,'Wicek','18.09.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (224,'Gorzka','22.07.2005',421,'Drakula','23.08.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (224,'Eliksir','25.07.2005',377,'Predka','26.07.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (225,'Zenek','04.08.2005',600,'Opoj','15.08.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (225,'Zoska','06.08.2005',450,NULL,NULL);
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (226,'Czerwonka','10.08.2005',517,'Pijawka','30.09.2005');
INSERT INTO DONACJE (NR_ZLECENIA, PSEUDO_DAWCY, DATA_ODDANIA, ILOSC_KRWI, PSEUDO_WAMPIRA, DATA_WYDANIA) VALUES (226,'Miodzio','11.08.2005',644,NULL,NULL);

INSERT INTO SPRAWNOSCI (SPRAWNOSC) VALUES ('podryw');
INSERT INTO SPRAWNOSCI (SPRAWNOSC) VALUES ('gorzala');
INSERT INTO SPRAWNOSCI (SPRAWNOSC) VALUES ('kasa');
INSERT INTO SPRAWNOSCI (SPRAWNOSC) VALUES ('przymus');
INSERT INTO SPRAWNOSCI (SPRAWNOSC) VALUES ('niesmiertelnosc');

INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Drakula','podryw','12.12.1217');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Drakula','gorzala','12.12.1217');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Wicek','kasa','11.11.1721');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Wicek','przymus','07.01.1771');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Opoj','podryw','07.11.1777');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Czerwony','niesmiertelnosc','13.09.1823');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Drakula','kasa','13.09.1823');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Opoj','gorzala','11.12.1844');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Baczek','gorzala','13.04.1855');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Drakula','przymus','14.06.1857');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Drakula','niesmiertelnosc','21.08.1858');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Opoj','przymus','15.07.1861');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Wicek','gorzala','19.01.1866');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Predka','podryw','29.03.1877');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Czerwony','kasa','03.02.1891');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Gacek','kasa','21.02.1891');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Pijawka','podryw','03.11.1901');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Komar','gorzala','23.07.1911');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Zyleta','przymus','23.09.1911');
INSERT INTO SPRAWNOSCI_W (PSEUDO_WAMPIRA, SPRAWNOSC, SPRAWNOSC_OD) VALUES ('Bolek','gorzala','31.05.1945');

INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('niemiecki');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('wegierski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('bulgarski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('rosyjski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('portugalski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('francuski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('angielski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('polski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('hiszpanski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('czeski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('wloski');
INSERT INTO JEZYKI_OBCE (JEZYK_OBCY) VALUES ('szwedzki');

INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Drakula','niemiecki','12.12.1217');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Drakula','wegierski','12.12.1217');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Drakula','bulgarski','03.04.1455');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Wicek','rosyjski','11.11.1721');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Opoj','portugalski','07.11.1777');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Czerwony','francuski','13.09.1823');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Drakula','angielski','13.09.1823');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Wicek','polski','18.08.1835');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Opoj','hiszpanski','12.03.1851');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Baczek','czeski','13.04.1855');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Wicek','niemiecki','11.06.1869');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Wicek','wloski','14.03.1873');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Predka','czeski','29.03.1877');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Opoj','polski','13.09.1883');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Czerwony','rosyjski','23.11.1888');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Gacek','polski','21.02.1891');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Predka','niemiecki','07.06.1894');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Baczek','angielski','04.12.1899');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Pijawka','angielski','03.11.1901');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Komar','szwedzki','23.07.1911');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Zyleta','angielski','23.09.1911');
INSERT INTO JEZYKI_OBCE_W (PSEUDO_WAMPIRA, JEZYK_OBCY, JEZYK_OBCY_OD) VALUES ('Bolek','francuski','31.05.1945');
