SELECT
  K.IMIE,
  K.W_STADKU_OD
FROM KOCURY K, KOCURY K1
WHERE K.W_STADKU_OD < K1.W_STADKU_OD AND K1.IMIE = 'JACEK'
ORDER BY K.W_STADKU_OD DESC;