-- VIEW para retornar a produtividade da cana-de-açúcar dos municípios por safra, calculada como a razão entre a 
-- o volume produzido divido pela área utilizada no plantio. 
CREATE OR REPLACE VIEW vw_produtividade AS
SELECT cana_de_acucar.safra, cana_de_acucar.volume_produzido, cana_de_acucar.area_plantada,
municipio.municipio, estado.uf,
   ROUND((cana_de_acucar.volume_produzido / cana_de_acucar.area_plantada)::numeric, 2) AS produtividade
FROM cana_de_acucar
JOIN municipio ON municipio.id_municipio = cana_de_acucar.id_municipio
JOIN estado ON estado.id_estado = municipio.id_estado
WHERE cana_de_acucar.area_plantada > 0 AND cana_de_acucar.volume_produzido > 0;



