-- creation de vue generale--
CREATE VIEW v_annonce_consulter
AS SELECT *
FROM waz_annonce
ORDER BY an_vue DESC

-- creation de vue liste annonce--
CREATE VIEW v_annonce_liste
AS select wazaaimmo.waz_annonce.an_id AS an_id, wazaaimmo.waz_annonce.an_titre AS an_titre, wazaaimmo.waz_logement.log_reference AS log_reference, wazaaimmo.waz_logement.log_type_de_bien AS log_type_de_bien, wazaaimmo.waz_logement.log_surf_hab AS log_surf_hab, wazaaimmo.waz_logement.log_prix AS log_prix
from wazaaimmo.waz_logement 
join wazaaimmo.waz_annonce
on wazaaimmo.waz_annonce.an_log_id = wazaaimmo.waz_logement.log_id






