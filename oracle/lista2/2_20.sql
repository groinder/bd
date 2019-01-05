DECLARE
  ileWybrano NUMBER:=0;
  CURSOR koty IS SELECT pseudo, PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0) zjada 
                 FROM Kocury 
                 ORDER BY PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0) DESC;
  obecny koty%ROWTYPE;
BEGIN
  DBMS_OUTPUT.PUT_LINE('Nr  Psedonim   Zjada');
  DBMS_OUTPUT.PUT_LINE('--------------------');
  FOR obecny IN koty LOOP
        ileWybrano:=ileWybrano+1;
        DBMS_OUTPUT.PUT_LINE(RPAD(ileWybrano, 4) ||
                             RPAD(obecny.pseudo, 10) ||
                             LPAD(obecny.zjada, 6));
        EXIT WHEN ileWybrano = 5;
  END LOOP;
END;