a tester:
1/afficher toutes les annonces renseigner par un agent.
2/tous les logements vendu par un prospects spécifique
3/chercher tous les locataires d une certaine ville
4/chercher toutes les maison avec jardin
5/chercher toutes les annonces avec jardin
6/afficher la liste de toutes les ventes de 2020




1/afficher toutes les annonces renseigner par un agent

SELECT * 
FROM waz_annonce
JOIN waz_agent
ON waz_annonce.an_agent_id = waz_agent.id
WHERE waz_agent.id = 40


2/tous les logements vendu par un prospects spécifique (fonctionne)

SELECT *
FROM waz_logement
JOIN waz_vente
ON waz_logement.id = waz_vente.vente_log_id
JOIN vendre
ON waz_vente.vente_id = vendre.vente_id
JOIN waz_prospects
ON vendre.prop_id = waz_prospects.id
WHERE prop_id = 20


3/chercher tous les locataires d une certaine ville (fonctionne)

SELECT prop_nom AS 'locataire', commune_nom
FROM waz_prospects
JOIN louer
ON waz_prospects.id = louer.prop_id
JOIN waz_location
ON louer.loc_id = waz_location.loc_id
JOIN waz_logement
ON waz_location.loc_log_id = waz_logement.id
JOIN waz_quartier
ON waz_logement.log_quartier_id = waz_quartier.quartier_id
JOIN waz_commune
ON waz_quartier.quartier_commune_id = waz_commune.id
WHERE commune_nom = 'alençon'





4/chercher toutes les maison avec jardin  (fonctionne)

SELECT *
FROM waz_logement
JOIN possede
ON waz_logement.id = possede.log_id
JOIN waz_options
ON possede.opt_id = waz_options.id
WHERE log_type_de_bien = 'maison' AND opt_libelle = 'jardin'




5/chercher toutes les annonces avec jardin  (fonctionne)

SELECT *
FROM waz_annonce
JOIN waz_logement
ON waz_annonce.an_log_id = waz_logement.id
JOIN possede
ON waz_logement.id = possede.log_id
JOIN waz_options
ON possede.opt_id = waz_options.id
WHERE opt_libelle = 'jardin'



6/afficher la liste de toutes les ventes de 2020

SELECT vente_date
FROM waz_vente
WHERE YEAR (vente_date) = 2020