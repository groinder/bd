SELECT
  PSEUDO,
  (PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0)) AS ZJADA
FROM (select
        PSEUDO,
        PRZYDZIAL_MYSZY,
        MYSZY_EXTRA,
        dense_rank()
        over (
          order by (PRZYDZIAL_MYSZY + NVL(MYSZY_EXTRA, 0)) desc ) R
      from KOCURY)
where R <= &n
order by zjada desc;

