-- Média móvel (MM3) de curto período do volume de produção de cana-de-açúcar por safra, abrangendo os períodos de 2009 a 2022:
SELECT volume_produzido, safra, AVG(volume_produzido) OVER(ORDER BY safra ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS "MM3"
FROM cana_de_acucar
ORDER BY safra

-- Média móvel (MM5) de período intermediário do volume de produção de cana-de-açúcar por safra, abrangendo os períodos de 2009 a 2022:
SELECT volume_produzido, safra, AVG(volume_produzido) OVER(ORDER BY safra ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS "MM5"
FROM cana_de_acucar
ORDER BY safra


