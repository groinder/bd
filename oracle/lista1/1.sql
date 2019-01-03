select
  PSEUDO,
  regexp_replace(regexp_replace(PSEUDO, 'a', '#', 1, 1, 'i'), 'l', '%', 1, 1, 'i') "Po wymianie A na # oraz L na %"
from KOCURY
where upper(PSEUDO) like '%A%' and upper(PSEUDO) like '%L%';