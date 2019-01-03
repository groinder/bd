alter session set NLS_DATE_FORMAT = 'YYYY-MM-DD';

insert
  into elita
values (ELITA_TYP('MRUCZEK', 'M', 'TYGRYS', 'SZEFUNIO', NULL, '2002-01-01', 103, 33, 1, '2002-01-01', null));

insert
into elita
select ELITA_TYP('MICKA', 'K', 'LOLA', 'MILUSIA', ref(e), '2009-10-14', 25, 47, 1, '2009-11-10', null)
from elita e
where e.pseudo = 'TYGRYS';

insert
into elita
select ELITA_TYP('CHYTRY', 'M', 'BOLEK', 'DZIELCZY', ref(e), '2002-05-05', 50, NULL, 1, '2003-05-05', null)
from elita e
where e.pseudo = 'TYGRYS';

insert
into elita
select ELITA_TYP('KOREK', 'M', 'ZOMBI', 'BANDZIOR', ref(e), '2004-03-16', 75, 13, 3, '2004-04-30', null)
from elita e
where e.pseudo = 'TYGRYS';

insert
into elita
select ELITA_TYP('BOLEK', 'M', 'LYSY', 'BANDZIOR', ref(e), '2006-08-15', 72, 21, 2, '2007-08-15', null)
from elita e
where e.pseudo = 'TYGRYS';

insert
into elita
select ELITA_TYP('RUDA', 'K', 'MALA', 'MILUSIA', ref(e), '2006-09-17', 22, 42, 1, '2006-09-17', null)
from elita e
where e.pseudo = 'TYGRYS';

insert
into elita
select ELITA_TYP('PUCEK', 'M', 'RAFA', 'LOWCZY', ref(e), '2006-10-15', 65, NULL, 4, '2010-01-01', null)
from elita e
where e.pseudo = 'TYGRYS';

insert
into plebs
select PLEBS_TYP('SONIA', 'K', 'PUSZYSTA', 'MILUSIA', ref(e), '2010-11-18', 20, 35, 3, '2010-11-18')
from elita e
where e.pseudo = 'ZOMBI';

insert
into plebs
select PLEBS_TYP('PUNIA', 'K', 'KURKA', 'LOWCZY', ref(e), '2008-01-01', 61, NULL, 3, '2010-01-01')
from elita e
where e.pseudo = 'ZOMBI';

insert
into kocury2
select kocur('JACEK', 'M', 'PLACEK', 'LOWCZY', ref(e), '2008-12-01', 67, NULL, 2)
from elita e
where e.pseudo = 'LYSY';

insert
into kocury2
select kocur('BARI', 'M', 'RURA', 'LAPACZ',  ref(e), '2009-09-01', 56, NULL, 2)
from elita e
where e.pseudo = 'LYSY';


insert
into kocury2
select kocur('ZUZIA', 'K', 'SZYBKA', 'LOWCZY', ref(e), '2006-07-21', 65, NULL, 2)
from elita e
where e.pseudo = 'LYSY';

insert
into kocury2
select kocur('BELA', 'K', 'LASKA', 'MILUSIA', ref(e), '2008-02-01', 24, 28, 2)
from elita e
where e.pseudo = 'LYSY';

insert
into plebs
select PLEBS_TYP('LATKA', 'K', 'UCHO', 'KOT', ref(e), '2011-01-01', 40, NULL, 4, '2011-01-02')
from elita e
where e.pseudo = 'RAFA';

insert
into plebs
select PLEBS_TYP('DUDEK', 'M', 'MALY', 'KOT', ref(e), '2011-05-15', 40, NULL, 4, '2011-05-30')
from elita e
where e.pseudo = 'RAFA';

insert
into plebs
select PLEBS_TYP('KSAWERY', 'M', 'MAN', 'LAPACZ', ref(e), '2008-07-12', 51, NULL, 4, '2008-08-30')
from elita e
where e.pseudo = 'RAFA';

insert
into plebs
select PLEBS_TYP('MELA', 'K', 'DAMA', 'LAPACZ', ref(e), '2008-11-01', 51, NULL, 4, '2008-11-11')
from elita e
where e.pseudo = 'RAFA';

insert
into plebs
select PLEBS_TYP('LUCEK', 'M', 'ZERO', 'KOT', ref(e), '2010-03-01', 43, NULL, 3, '2010-05-21')
from plebs e
where e.pseudo = 'KURKA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'KAZIO', '2004-10-13', 'USILOWAL NABIC NA WIDLY')
from elita e
where e.pseudo = 'TYGRYS';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'SWAWOLNY DYZIO', '2005-03-07', 'WYBIL OKO Z PROCY')
from elita e
where e.pseudo = 'ZOMBI';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'KAZIO', '2005-03-29', 'POSZCZUL BURKIEM')
from elita e
where e.pseudo = 'BOLEK';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'GLUPIA ZOSKA', '2006-09-12', 'UZYLA KOTA JAKO SCIERKI')
from KOCURY2 e
where e.pseudo = 'SZYBKA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'CHYTRUSEK', '2007-03-07', 'ZALECAL SIE')
from elita e
where e.pseudo = 'MALA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'DZIKI BILL', '2007-06-12', 'USILOWAL POZBAWIC ZYCIA')
from elita e
where e.pseudo = 'TYGRYS';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'DZIKI BILL', '2007-11-10', 'ODGRYZL UCHO')
from elita e
where e.pseudo = 'BOLEK';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'DZIKI BILL', '2008-12-12', 'POGRYZL ZE LEDWO SIE WYLIZALA')
from KOCURY2 e
where e.pseudo = 'LASKA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'KAZIO', '2009-01-07', 'ZLAPAL ZA OGON I ZROBIL WIATRAK')
from KOCURY2 e
where e.pseudo = 'LASKA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'KAZIO', '2009-02-07', 'CHCIAL OBEDRZEC ZE SKORY')
from plebs e
where e.pseudo = 'DAMA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'REKSIO', '2009-04-14', 'WYJATKOWO NIEGRZECZNIE OBSZCZEKAL')
from plebs e
where e.pseudo = 'MAN';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'BETHOVEN', '2009-05-11', 'NIE PODZIELIL SIE SWOJA KASZA')
from elita e
where e.pseudo = 'LYSY';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'DZIKI BILL', '2009-09-03', 'ODGRYZL OGON')
from KOCURY2 e
where e.pseudo = 'RURA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'BAZYLI', '2010-07-12', 'DZIOBIAC UNIEMOZLIWIL PODEBRANIE KURCZAKA')
from KOCURY2 e
where e.pseudo = 'PLACEK';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'SMUKLA', '2010-11-19', 'OBRZUCILA SZYSZKAMI')
from plebs e
where e.pseudo = 'PUSZYSTA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'BUREK', '2010-12-14', 'POGONIL')
from plebs e
where e.pseudo = 'KURKA';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'CHYTRUSEK', '2011-07-13', 'PODEBRAL PODEBRANE JAJKA')
from plebs e
where e.pseudo = 'MALY';

insert
into INCYDENTY
select INCYDENTY_TYP(ref(e), 'SWAWOLNY DYZIO', '2011-07-14', 'OBRZUCIL KAMIENIAMI')
from plebs e
where e.pseudo = 'UCHO';





