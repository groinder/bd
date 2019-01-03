alter session set NLS_DATE_FORMAT = 'YYYY-MM-DD';

insert all
into funkcje (funkcja, min_myszy, max_myszy) values ('SZEFUNIO', 90, 110)
into funkcje (funkcja, min_myszy, max_myszy) values ('BANDZIOR', 70, 90)
into funkcje (funkcja, min_myszy, max_myszy) values ('LOWCZY', 60, 70)
into funkcje (funkcja, min_myszy, max_myszy) values ('LAPACZ', 50, 60)
into funkcje (funkcja, min_myszy, max_myszy) values ('KOT', 40, 50)
into funkcje (funkcja, min_myszy, max_myszy) values ('MILUSIA', 20, 30)
into funkcje (funkcja, min_myszy, max_myszy) values ('DZIELCZY', 45, 55)
into funkcje (funkcja, min_myszy, max_myszy) values ('HONOROWA', 6, 25)
  select *
  from dual;

alter table KOCURY disable constraint NR_BANDY_FK disable constraint szef_fk;
insert all
into kocury values ('JACEK', 'M', 'PLACEK', 'LOWCZY', 'LYSY', '2008-12-01', 67, NULL, 2)
into kocury values ('BARI', 'M', 'RURA', 'LAPACZ', 'LYSY', '2009-09-01', 56, NULL, 2)
into kocury values ('MICKA', 'D', 'LOLA', 'MILUSIA', 'TYGRYS', '2009-10-14', 25, 47, 1)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('LUCEK', 'M', 'ZERO', 'KOT', 'KURKA', '2010-03-01', 43, NULL, 3)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('SONIA', 'D', 'PUSZYSTA', 'MILUSIA', 'ZOMBI', '2010-11-18', 20, 35, 3)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('LATKA', 'D', 'UCHO', 'KOT', 'RAFA', '2011-01-01', 40, NULL, 4)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('DUDEK', 'M', 'MALY', 'KOT', 'RAFA', '2011-05-15', 40, NULL, 4)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('MRUCZEK', 'M', 'TYGRYS', 'SZEFUNIO', NULL, '2002-01-01', 103, 33, 1)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('CHYTRY', 'M', 'BOLEK', 'DZIELCZY', 'TYGRYS', '2002-05-05', 50, NULL, 1)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('KOREK', 'M', 'ZOMBI', 'BANDZIOR', 'TYGRYS', '2004-03-16', 75, 13, 3)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('BOLEK', 'M', 'LYSY', 'BANDZIOR', 'TYGRYS', '2006-08-15', 72, 21, 2)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('ZUZIA', 'D', 'SZYBKA', 'LOWCZY', 'LYSY', '2006-07-21', 65, NULL, 2)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('RUDA', 'D', 'MALA', 'MILUSIA', 'TYGRYS', '2006-09-17', 22, 42, 1)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('PUCEK', 'M', 'RAFA', 'LOWCZY', 'TYGRYS', '2006-10-15', 65, NULL, 4)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('PUNIA', 'D', 'KURKA', 'LOWCZY', 'ZOMBI', '2008-01-01', 61, NULL, 3)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('BELA', 'D', 'LASKA', 'MILUSIA', 'LYSY', '2008-02-01', 24, 28, 2)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('KSAWERY', 'M', 'MAN', 'LAPACZ', 'RAFA', '2008-07-12', 51, NULL, 4)
into kocury (imie, plec, pseudo, funkcja, szef, w_stadku_od, przydzial_myszy, myszy_extra, nr_bandy)
values ('MELA', 'D', 'DAMA', 'LAPACZ', 'RAFA', '2008-11-01', 51, NULL, 4)
  select *
  from dual;
alter table KOCURY enable constraint SZEF_FK;

insert all
into bandy (nr_bandy, nazwa, teren, szef_bandy) values (1, 'SZEFOSTWO', 'CALOSC', 'TYGRYS')
into bandy (nr_bandy, nazwa, teren, szef_bandy) values (2, 'CZARNI RYCERZE', 'POLE', 'LYSY')
into bandy (nr_bandy, nazwa, teren, szef_bandy) values (3, 'BIALI LOWCY', 'SAD', 'ZOMBI')
into bandy (nr_bandy, nazwa, teren, szef_bandy) values (4, 'LACIACI MYSLIWI', 'GORKA', 'RAFA')
into bandy values (5, 'ROCKERSI', 'ZAGRODA', NULL)
  select *
  from dual;
alter table KOCURY enable constraint NR_BANDY_FK;

insert all
into wrogowie values ('KAZIO', 10, 'CZLOWIEK', 'FLASZKA')
into wrogowie values ('GLUPIA ZOSKA', 1, 'CZLOWIEK', 'KORALIK')
into wrogowie values ('SWAWOLNY DYZIO', 7, 'CZLOWIEK', 'GUMA DO ZUCIA')
into wrogowie values ('BUREK', 4, 'PIES', 'KOSC')
into wrogowie values ('DZIKI BILL', 10, 'PIES', NULL)
into wrogowie values ('REKSIO', 2, 'PIES', 'KOSC')
into wrogowie values ('BETHOVEN', 1, 'PIES', 'PEDIGRIPALL')
into wrogowie values ('CHYTRUSEK', 5, 'LIS', 'KURCZAK')
into wrogowie values ('SMUKLA', 1, 'SOSNA', NULL)
into wrogowie values ('BAZYLI', 3, 'KOGUT', 'KURA DO STADA')
  select *
  from dual;

insert all
into wrogowie_kocurow values ('TYGRYS', 'KAZIO', '2004-10-13', 'USILOWAL NABIC NA WIDLY')
into wrogowie_kocurow values ('ZOMBI', 'SWAWOLNY DYZIO', '2005-03-07', 'WYBIL OKO Z PROCY')
into wrogowie_kocurow values ('BOLEK', 'KAZIO', '2005-03-29', 'POSZCZUL BURKIEM')
into wrogowie_kocurow values ('SZYBKA', 'GLUPIA ZOSKA', '2006-09-12', 'UZYLA KOTA JAKO SCIERKI')
into wrogowie_kocurow values ('MALA', 'CHYTRUSEK', '2007-03-07', 'ZALECAL SIE')
into wrogowie_kocurow values ('TYGRYS', 'DZIKI BILL', '2007-06-12', 'USILOWAL POZBAWIC ZYCIA')
into wrogowie_kocurow values ('BOLEK', 'DZIKI BILL', '2007-11-10', 'ODGRYZL UCHO')
into wrogowie_kocurow values ('LASKA', 'DZIKI BILL', '2008-12-12', 'POGRYZL ZE LEDWO SIE WYLIZALA')
into wrogowie_kocurow values ('LASKA', 'KAZIO', '2009-01-07', 'ZLAPAL ZA OGON I ZROBIL WIATRAK')
into wrogowie_kocurow values ('DAMA', 'KAZIO', '2009-02-07', 'CHCIAL OBEDRZEC ZE SKORY')
into wrogowie_kocurow values ('MAN', 'REKSIO', '2009-04-14', 'WYJATKOWO NIEGRZECZNIE OBSZCZEKAL')
into wrogowie_kocurow values ('LYSY', 'BETHOVEN', '2009-05-11', 'NIE PODZIELIL SIE SWOJA KASZA')
into wrogowie_kocurow values ('RURA', 'DZIKI BILL', '2009-09-03', 'ODGRYZL OGON')
into wrogowie_kocurow values ('PLACEK', 'BAZYLI', '2010-07-12', 'DZIOBIAC UNIEMOZLIWIL PODEBRANIE KURCZAKA')
into wrogowie_kocurow values ('PUSZYSTA', 'SMUKLA', '2010-11-19', 'OBRZUCILA SZYSZKAMI')
into wrogowie_kocurow values ('KURKA', 'BUREK', '2010-12-14', 'POGONIL')
into wrogowie_kocurow values ('MALY', 'CHYTRUSEK', '2011-07-13', 'PODEBRAL PODEBRANE JAJKA')
into wrogowie_kocurow values ('UCHO', 'SWAWOLNY DYZIO', '2011-07-14', 'OBRZUCIL KAMIENIAMI')
  select *
  from dual;
