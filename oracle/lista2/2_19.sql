SAVEPOINT PRZED_ZAD_19;

DECLARE
  CURSOR kursor IS
    SELECT K.imie, K.przydzial_myszy, F.max_myszy
      FROM Kocury K JOIN Funkcje F ON K.funkcja = F.funkcja
      ORDER BY przydzial_myszy
      FOR UPDATE OF przydzial_myszy;
  suma NUMBER; 
  liczbaZmian NUMBER := 0;
  obecny kursor%ROWTYPE;
BEGIN
  SELECT SUM(przydzial_myszy) INTO suma FROM KOCURY;
  <<outer_loop>> LOOP
    OPEN kursor;
      LOOP 
        FETCH kursor INTO obecny; 
        EXIT WHEN kursor%NOTFOUND;
        EXIT outer_loop WHEN suma > 1050;
        IF ((1.10 * obecny.przydzial_myszy) < obecny.max_myszy) THEN
          liczbaZmian := liczbaZmian + 1;
          suma := suma + ROUND((0.10 * obecny.przydzial_myszy));
          UPDATE KOCURY 
            SET przydzial_myszy = 1.10 * przydzial_myszy
            WHERE CURRENT OF kursor;
        ELSIF (obecny.przydzial_myszy < obecny.max_myszy) THEN
          liczbaZmian := liczbaZmian + 1;
          suma := suma + (obecny.max_myszy - obecny.przydzial_myszy);
          UPDATE KOCURY 
            SET przydzial_myszy = obecny.max_myszy
            WHERE CURRENT OF kursor;
        END IF;
      END LOOP;
    CLOSE kursor;
  END LOOP outer_loop; 
  CLOSE kursor;
  DBMS_OUTPUT.PUT_LINE('Calk. przydzial w stadku ' || suma || ' Zmian - ' || liczbaZmian);
END;

SELECT
  imie,
  przydzial_myszy AS "Myszki po podwyzce"
FROM KOCURY
ORDER BY w_stadku_od ASC;

ROLLBACK TO PRZED_ZAD_19;