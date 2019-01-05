CREATE OR REPLACE FUNCTION podatek (
    kot kocury.pseudo%TYPE
) RETURN NUMBER AS
    pd          NUMBER;
    przydzial   NUMBER;
    podwladni   NUMBER;
    wrogowie    NUMBER;
    funkcja     kocury.funkcja%type;
BEGIN
    SELECT
        ceil((nvl(przydzial_myszy, 0) + nvl(myszy_extra, 0)) * 0.05),
        nvl(przydzial_myszy, 0) + nvl(myszy_extra, 0)
    INTO
        pd,
        przydzial
    FROM
        kocury
    WHERE
        pseudo = kot;

    SELECT
        COUNT(*)
    INTO podwladni
    FROM
        kocury
    WHERE
        szef = kot; --nie posiada podwladnych

    IF ( podwladni = 0 AND przydzial - pd >= 2 ) THEN
        pd := pd + 2;
    ELSIF ( podwladni = 0 AND przydzial - pd = 1 ) THEN
        pd := pd + 1;
    END IF;

    SELECT
        COUNT(*)
    INTO wrogowie
    FROM
        wrogowie_kocurow
    WHERE
        pseudo = kot; -- nie posiada wrogow

    IF ( wrogowie = 0 AND przydzial - pd >= 1 ) THEN
        pd := pd + 1;
    END IF;

    SELECT
        k.funkcja
    INTO funkcja
    FROM
        kocury k
    WHERE
        k.pseudo = kot;

    IF ( funkcja = 'KOT' AND przydzial > 20 ) THEN
        pd := pd + 2;
    END IF;

    RETURN pd;
EXCEPTION
    WHEN no_data_found THEN
        return NULL;
    WHEN OTHERS THEN
        dbms_output.put_line(sqlerrm);
END;
  
CREATE OR REPLACE PACKAGE PAKIET
IS
FUNCTION podatek(KOT KOCURY.PSEUDO%TYPE) RETURN NUMBER;
PROCEDURE pokaz_przelozonych (liczba_poziomow NUMBER);
END; 

CREATE OR REPLACE PACKAGE BODY PAKIET
AS 
FUNCTION podatek (
    kot kocury.pseudo%TYPE
) RETURN NUMBER AS
    pd          NUMBER;
    przydzial   NUMBER;
    podwladni   NUMBER;
    wrogowie    NUMBER;
    funkcja     kocury.funkcja%type;
BEGIN
    SELECT
        ceil((nvl(przydzial_myszy, 0) + nvl(myszy_extra, 0)) * 0.05),
        nvl(przydzial_myszy, 0) + nvl(myszy_extra, 0)
    INTO
        pd,
        przydzial
    FROM
        kocury
    WHERE
        pseudo = kot;

    SELECT
        COUNT(*)
    INTO podwladni
    FROM
        kocury
    WHERE
        szef = kot; --nie posiada podwladnych

    IF ( podwladni = 0 AND przydzial - pd >= 2 ) THEN
        pd := pd + 2;
    ELSIF ( podwladni = 0 AND przydzial - pd = 1 ) THEN
        pd := pd + 1;
    END IF;

    SELECT
        COUNT(*)
    INTO wrogowie
    FROM
        wrogowie_kocurow
    WHERE
        pseudo = kot; -- nie posiada wrogow

    IF ( wrogowie = 0 AND przydzial - pd >= 1 ) THEN
        pd := pd + 1;
    END IF;

    SELECT
        k.funkcja
    INTO funkcja
    FROM
        kocury k
    WHERE
        k.pseudo = kot;

    IF ( funkcja = 'KOT' AND przydzial > 20 ) THEN
        pd := pd + 2;
    END IF;

    RETURN pd;
EXCEPTION
    WHEN no_data_found THEN
        return NULL;
    WHEN OTHERS THEN
        dbms_output.put_line(sqlerrm);
END podatek;
PROCEDURE pokaz_przelozonych (liczba_poziomow IN NUMBER) 
IS
poziomow NUMBER;
poziomowDostepnych NUMBER;
BEGIN
  -- Ilosc kolumn
  SELECT MAX(LEVEL)
  INTO poziomowDostepnych
  FROM KOCURY 
  START WITH SZEF IS NULL
  CONNECT BY PRIOR PSEUDO = SZEF;
  poziomow := LEAST(poziomowDostepnych-1, liczba_poziomow); 

  -- Naglowki
  DBMS_OUTPUT.PUT('Imie           |');
  FOR i IN 1..poziomow LOOP
    DBMS_OUTPUT.PUT('  Szef ' || RPAD(i, 10));
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();
  DBMS_OUTPUT.PUT('------------- -');
  FOR i IN 1..poziomow LOOP
    DBMS_OUTPUT.PUT('-- ------------- -');
  END LOOP;
  DBMS_OUTPUT.NEW_LINE();

  -- Hierarchia
  FOR kot IN (SELECT imie, funkcja, szef 
              FROM KOCURY 
              WHERE (funkcja = 'KOT' OR funkcja = 'MILUSIA')) LOOP
    DBMS_OUTPUT.PUT(RPAD(kot.imie, 15));
    FOR i IN 1..poziomow LOOP
      DBMS_OUTPUT.PUT('|  ');
      IF kot.szef IS NOT NULL THEN
        SELECT imie, funkcja, szef 
          INTO kot
          FROM KOCURY
          WHERE pseudo = kot.szef;
        DBMS_OUTPUT.PUT(RPAD(kot.imie, 15));
      ELSE
        DBMS_OUTPUT.PUT(RPAD(' ', 15));
      END IF;
    END LOOP;
    DBMS_OUTPUT.NEW_LINE();
  END LOOP;
END pokaz_przelozonych;
END PAKIET;

BEGIN
  DBMS_OUTPUT.PUT_LINE(RPAD('PSEUDO',10)||' | PODATEK');
  DBMS_OUTPUT.PUT_LINE(LPAD(' ',25,'-'));
    FOR T IN (SELECT PSEUDO FROM KOCURY)
    LOOP
      DBMS_OUTPUT.PUT_LINE(RPAD(T.PSEUDO,10)||' | '||PAKIET.PODATEK(T.PSEUDO));
      END LOOP;
END;
