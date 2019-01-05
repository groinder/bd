CREATE TABLE WYKROCZENIA (kto VARCHAR(50), kiedy DATE, komu VARCHAR2(15), akcja VARCHAR2(6));

CREATE OR REPLACE PROCEDURE log_wykroczenia(kto IN VARCHAR, kiedy DATE, komu VARCHAR2, akcja VARCHAR2) is
PRAGMA AUTONOMOUS_TRANSACTION; 
BEGIN
INSERT INTO WYKROCZENIA values (kto, kiedy, komu, akcja);
COMMIT;
EXCEPTION WHEN OTHERS THEN
ROLLBACK;
END;

CREATE OR REPLACE TRIGGER ZAD28
BEFORE INSERT OR UPDATE OF przydzial_myszy, funkcja ON KOCURY
FOR EACH ROW
DECLARE
  akcja wykroczenia.akcja%type;
  min_myszy funkcje.min_myszy%type;
  max_myszy funkcje.max_myszy%type;
  kto wykroczenia.kto%type;
BEGIN
  select fu.min_myszy, fu.max_myszy into min_myszy, max_myszy from funkcje fu where fu.funkcja = :new.funkcja;
  
IF :new.przydzial_myszy NOT BETWEEN min_myszy AND max_myszy THEN
      IF INSERTING THEN
        akcja := 'INSERT';
      ELSIF UPDATING THEN
        akcja := 'UPDATE';
      END IF;
      
      SELECT sys_context('USERENV', 'SESSION_USER') INTO kto FROM dual;
      log_wykroczenia(kto, SYSDATE, :new.pseudo, akcja);
      RAISE VALUE_ERROR;
END IF;
END;

UPDATE kocury SET przydzial_myszy = 0 where pseudo = 'PLACEK';