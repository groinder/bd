declare wybrano varchar2(10);

begin
  select distinct FUNKCJA into wybrano
  from KOCURY where FUNKCJA = '&funkcja';
  DBMS_OUTPUT.PUT_LINE(wybrano);
end;
