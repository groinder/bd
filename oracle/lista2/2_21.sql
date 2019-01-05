DECLARE
  poziomow NUMBER := '&liczba_wyswietlanych_przelozonych';
  poziomowDostepnych NUMBER;
BEGIN
  -- Ilosc kolumn
  SELECT MAX(LEVEL)
  INTO poziomowDostepnych
  FROM KOCURY 
  START WITH SZEF IS NULL
  CONNECT BY PRIOR PSEUDO = SZEF;
  poziomow := LEAST(poziomowDostepnych-1, poziomow); 
  
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
END;