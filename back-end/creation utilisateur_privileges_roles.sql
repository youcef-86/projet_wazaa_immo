

                                --   creation des utilisateurs

                      -- developpeur user

CREATE USER IF NOT EXISTS wazaa_developpeur@localhost IDENTIFIED BY '1sitewazaa'

                        -- administrateur user

CREATE USER IF NOT EXISTS wazaa_administrateur@localhost IDENTIFIED BY '2sitewazaa'


                                  -- CREATION DES PRIVILEGES

-- GRANT ALL PRIVILEGES 
-- ON wazaaimmo.* 
-- TO 'wazaa_developpeur'@'%' 

-- GRANT ALL PRIVILEGES 
-- ON wazaaimmo.* 
-- TO 'wazaa_administrateur'@'%' 

                                  -- CREATION DES ROLES

CREATE ROLE IF NOT EXISTS 
                         wazaaimmo_developpeur,
                         wazaaimmo_administrateur;


                        --  definitions des privileges /Pour accorder des privilèges à un rôle, on procède de la même façon que pour les utilisateurs, avec la commande GRANT sauf qu'on indique le nom du rôle au lieu du nom d'utilisateur :

GRANT ALL 
ON wazaaimmo.* 
TO wazaaimmo_developpeur;

GRANT SELECT, INSERT
ON wazaaimmo.waz_agent 
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE, DELETE
ON wazaaimmo.waz_annonce 
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE
ON wazaaimmo.waz_vente 
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE, DELETE
ON wazaaimmo.waz_location 
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE, DELETE
ON wazaaimmo.waz_logement 
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE, DELETE
ON wazaaimmo.waz_photos 
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE, DELETE
ON wazaaimmo.waz_options
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE, DELETE
ON wazaaimmo.waz_quartier 
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE, DELETE
ON wazaaimmo.waz_commune
TO wazaaimmo_administrateur;

GRANT SELECT, INSERT, UPDATE
ON wazaaimmo.waz_prospects 
TO wazaaimmo_administrateur;


                      -- affectation du rôle à un utilisateur

GRANT wazaaimmo_developpeur 
TO 'wazaa_developpeur'@'localhost'

GRANT wazaaimmo_administrateur 
TO 'wazaa_administrateur'@'localhost'


                      -- activation du rôle pour les utilisateur

SET DEFAULT ROLE wazaaimmo_developpeur
TO 'wazaa_developpeur'@'localhost'

SET DEFAULT ROLE wazaaimmo_administrateur
TO 'wazaa_administrateur'@'localhost'



                       -- Vérification des rôles et privilèges

SHOW GRANTS FOR 'wazaa_developpeur'@'localhost'
SHOW GRANTS FOR 'wazaa_administrateur'@'localhost'


SHOW GRANTS FOR wazaaimmo_developpeur
SHOW GRANTS FOR wazaaimmo_administrateur
