SELECT
  PSEUDO_WAMPIRA        AS "Wampir",
  count(PSEUDO_WAMPIRA) AS "Liczba konsumpcji"
FROM DONACJE
GROUP BY PSEUDO_WAMPIRA
HAVING count(PSEUDO_WAMPIRA) > 1;