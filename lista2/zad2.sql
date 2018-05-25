insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (1, 'Józki', 'Tygrys');
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (2, 'Ruski', null);
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (3, 'Różowi łowcy', 'Kasia');
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (4, 'Odlotowe Kociaki', 'Mafiozo');
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (5, 'Gbury z podwóra', 'Klaus');
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (6, 'Pracowite kotki', null);
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (7, 'Potężni łowcy', null);
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (8, 'Dzikie koty', 'Talar');
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (9, 'Domowe koty', 'Mordeczka');
insert into BANDY (NUMER_BANDY, NAZWA_BANDY, PSEUDO_ZARZADCY) values (10, 'Dachowce', 'Hiena');

insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Rybak', 30, 65);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Lowca', 50, 70);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Strażnik', 40, 60);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Szef', 90, 120);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Opiekun', 40, 70);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Lapacz', 40, 75);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Oprych', 40, 60);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Żniwiaż', 60, 90);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Koteł', 30, 50);
insert into FUNKCJE (NAZWA_FUNKCJI, MIN_MYSZY, MAX_MYSZY) values ('Grubcio', 10, 70);

insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Tygrys', 'M', '17.11.2003', 100, null, 1, 'Szef');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Bąbelek', 'M', '13.01.2004', 80, 'Tygrys', 1, 'Żniwiaż');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Kasia', 'K', '21.03.2004', 40, 'Tygrys', 3, 'Koteł');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Kreska', 'K', '22.04.2004', 65, 'Kasia', 3, 'Grubcio');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Syjamczyk', 'M', '30.07.2007', 40, 'Bąbelek', 5, 'Oprych');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Klaus', 'M', '02.08.2007', 50, 'Kasia', 5, 'Strażnik');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Talar', 'M', '05.12.2010', 70, 'Klaus', 8, 'Lapacz');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Miaulka', 'K', '11.09.2011', 60, 'Lowca', 8, 'Lowca');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Mordeczka', 'K', '30.07.2012', 65, 'Talar', 9, 'Rybak');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Cytruś', 'M', '19.05.2015', 45, 'Mordeczka', 9, 'Opiekun');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Gacunio', 'M', '19.04.2014', 55, 'Kreska', 9, 'Strażnik');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Hiena', 'K', '15.02.2013', 40, 'Tygrys', 10, 'Oprych');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Joda', 'K', '26.11.2009', 69, 'Hiena', 10, 'Lapacz');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Lumpek', 'M', '25.12.2010', 20, 'Gacunio', 10, 'Grubcio');
insert into KOTY (PSEUDO_KOTA, PLEC_KOTA, DATA_PRZYJECIA, PRZYDZIAL_MYSZY, PSEUDO_SZEFA, NUMER_BANDY, NAZWA_FUNKCJI)
values ('Mafiozo', 'M', '18.12.2003', 90, 'Tygrys', 4, 'Żniwiaż');

insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (1, '17.11.2003', 50, 15, '18.11.2003', 'Tygrys', 'Tygrys');
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (2, '19.01.2004', 17, 8, '22.01.2004', 'Bąbelek', 'Kreska');
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (3, '19.02.2013', 10, 5, null, 'Hiena', null);
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (4, '21.05.2013', 13, 6, '22.05.2013', 'Joda', 'Lumpek');
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (5, '25.07.2013', 35, 13, '17.09.2013', 'Lumpek', 'Hiena');
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (6, '03.11.2010', 63, 19, '05.11.2010', 'Mafiozo', 'Tygrys');
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (7, '04.11.2010', 22, 7, null, 'Cytruś', null);
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (8, '15.03.2014', 32, 11, '19.04.2016', 'Tygrys', 'Joda');
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (9, '16.03.2014', 11, 5, null, 'Kasia', null);
insert into MYSZY (NUMER_MYSZY, DATA_UPOLOWANIA, WAGA, DLUGOSC, DATA_WYDANIA, PSEUDO_LOWCY, PSEUDO_ZJADACZA)
values (10, '27.06.2016', 99, 20, '28.06.2016', 'Mafiozo', 'Mafiozo');

insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Krokodyl', 10, 'Gady');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Madonna', 5, 'Pies');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Naruto', 2, 'Człowiek');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Julka', 8, 'Człowiek');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Rupert', 3, 'Kret');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Szkitek', 6, 'Pies');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Sakura', 1, 'Papuga');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Timon', 9, 'Maszyna');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Lucjan', 4, 'Gad');
insert into WROGOWIE (IMIE_WROGA, STOPIEN_WROGOSCI, GATUNEK)
values ('Miodek', 3, 'Owad');

insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Miód', 5);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Mięso', 7);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Gwizdek', 6);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Patyk', 4);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Szyszka', 1);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Kamień', 2);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Olej', 6);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Smieci', 10);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Buty', 8);
insert into GRATYFIKACJE (NAZWA_GRATYFIKACJI, SILA_GRATYFIKACJI) values ('Ryba', 7);

insert into TERENY (NAZWA_TERENU) values ('Podgórze');
insert into TERENY (NAZWA_TERENU) values ('Szopa');
insert into TERENY (NAZWA_TERENU) values ('Smietnik');
insert into TERENY (NAZWA_TERENU) values ('Garaż');
insert into TERENY (NAZWA_TERENU) values ('Park');
insert into TERENY (NAZWA_TERENU) values ('Polana');
insert into TERENY (NAZWA_TERENU) values ('Wysypisko');
insert into TERENY (NAZWA_TERENU) values ('Las');
insert into TERENY (NAZWA_TERENU) values ('Podwórze');
insert into TERENY (NAZWA_TERENU) values ('Pole');

insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Miodek', 'Miód');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Lucjan', 'Mięso');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Krokodyl', 'Ryba');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Julka', 'Gwizdek');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Madonna', 'Patyk');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Naruto', 'Szyszka');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Rupert', 'Kamień');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Szkitek', 'Smieci');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Sakura', 'Buty');
insert into GRATYFIKACJE_WROGOW (IMIE_WROGA, NAZWA_GRATYFIKACJI) values ('Timon', 'Olej');

insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Podgórze', 1);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Szopa', 2);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Smietnik', 3);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Garaż', 4);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Park', 5);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Polana', 6);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Wysypisko', 7);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Las', 8);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Podwórze', 8);
insert into TERENY_BANDY (NAZWA_TERENU, NUMER_BANDY) values ('Pole', 10);

insert into INCYDENTY (PSEUDO_KOTA, IMIE_WROGA, DATA, OPIS)
values ('Mafiozo', 'Miodek', '01.01.2004', 'Był na wyprawie i pożądliły go pszczoły pod dowództwem Miodka');
insert into INCYDENTY (PSEUDO_KOTA, IMIE_WROGA, DATA, OPIS)
values ('Joda', 'Lucjan', '17.12.2010', 'Gonił mysz i trafił na strasznego gada co chciał go pożreć');
insert into INCYDENTY (PSEUDO_KOTA, IMIE_WROGA, DATA, OPIS) values ();