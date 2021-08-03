


DROP DATABASE IF EXISTS wazaaimmo;

CREATE DATABASE wazaaimmo;

-- -- Table: waz_options  --

CREATE TABLE waz_options(
   opt_id INT Auto_increment NOT NULL,
   opt_libelle VARCHAR(50) NOT NULL,
   PRIMARY KEY(opt_id)
);

-- -- Table: waz_agent  --

CREATE TABLE waz_agent(
   agent_id INT Auto_increment NOT NULL,
   agent__nom VARCHAR(50) NOT NULL,
   agent_prenom VARCHAR(50) NOT NULL,
   agent_mail VARCHAR(50) NOT NULL,
   agent_login VARCHAR(50) NOT NULL,
   agent_passeword VARCHAR(50) NOT NULL,
   agent_d_inscr DATETIME NOT NULL,
   agent_d_decon DATETIME NOT NULL,
   agent_d_ajout DATETIME NOT NULL,
   PRIMARY KEY(agent_id)
);

-- -- Table: waz_utilisateur  --

CREATE TABLE waz_utilisateur(
   util_id INT Auto_increment NOT NULL,
   util_nom VARCHAR(50) NOT NULL,
   util_prenom VARCHAR(50) NOT NULL,
   util_tel VARCHAR(50) NOT NULL,
   util_mail VARCHAR(50) NOT NULL,
   util_passeword VARCHAR(50) NOT NULL,
   PRIMARY KEY(util_id)
);

-- -- Table: waz_prospects  --

CREATE TABLE waz_prospects(
   prop_id INT Auto_increment NOT NULL,
   prop_nom VARCHAR(50) NOT NULL,
   prop_prenom VARCHAR(50) NOT NULL,
   prop_adresse_actuelle VARCHAR(50) NOT NULL,
   prop_tel VARCHAR(50) NOT NULL,
   prop_email VARCHAR(50) NOT NULL,
   prop_date_naissance DATE,
   prop_budjet_minim DECIMAL(15,2) NOT NULL,
   prop_budjet_maxi DECIMAL(15,2) NOT NULL,
   prop_salaire DECIMAL(15,2) NOT NULL,
   prop_avisimpots VARCHAR(255) NOT NULL,
   prop_bulletins_salaire1 VARCHAR(255) NOT NULL,
   prop_bulletins_salaire2 VARCHAR(255) NOT NULL,
   prop_bulletins_salaire3 VARCHAR(255) NOT NULL,
   prop_piece_identité VARCHAR(50) NOT NULL,
   prop_situation_familiale VARCHAR(50) NOT NULL,
   prop_garant VARCHAR(50),
   prop_civilité VARCHAR(50),
   PRIMARY KEY(prop_id)
);

-- -- Table: waz_commune  --

CREATE TABLE waz_commune(
   commune_id INT Auto_increment NOT NULL,
   commune_nom VARCHAR(50) NOT NULL,
   commune_cp VARCHAR(50) NOT NULL,
   PRIMARY KEY(commune_id)
);

-- -- Table: waz_quartier  --

CREATE TABLE waz_quartier(
   quartier_id INT Auto_increment NOT NULL,
   quartier_libelle VARCHAR(50) NOT NULL,
   quartier_commune_id INT NOT NULL,
   PRIMARY KEY(quartier_id),
   FOREIGN KEY(quartier_commune_id) REFERENCES waz_commune(commune_id)
);

-- -- Table: waz_logement  --

CREATE TABLE waz_logement(
   log_id INT Auto_increment NOT NULL,
   log_type_de_bien tinyint NOT NULL,
   log_description VARCHAR(250) NOT NULL,
   log_reference VARCHAR(50) NOT NULL,
   log_pieces tinyint NOT NULL,
   log_surf_hab SMALLINT NOT NULL,
   log_surf_tot INT NOT NULL,
   log_diagnostic CHAR(50) NOT NULL,
   log_prix INT NOT NULL,
   log_localisation VARCHAR(100) NOT NULL,
   log_quartier_id INT NOT NULL,
   log_prop_id INT NOT NULL,
   PRIMARY KEY(log_id),
   FOREIGN KEY(log_quartier_id) REFERENCES waz_quartier(quartier_id),
   FOREIGN KEY(log_prop_id) REFERENCES waz_prospects(prop_id)
);

-- -- Table: waz_photos  --

CREATE TABLE waz_photos(
   photo_id INT Auto_increment NOT NULL,
   photo_libelle VARCHAR(50) NOT NULL,
   photo_log_id INT NOT NULL,
   PRIMARY KEY(photo_id),
   FOREIGN KEY(photo_log_id) REFERENCES waz_logement(log_id)
);

-- -- Table: waz_vente  --

CREATE TABLE waz_vente(
   vente_id INT Auto_increment NOT NULL,
   vente_type_de_bien VARCHAR NOT NULL,
   vente_type_de_vente VARCHAR NOT NULL,
   vente_reference VARCHAR(50) NOT NULL,
   vente_date DATE NOT NULL,
   vente_prix INT NOT NULL,
   vente_agent_id INT NOT NULL,
   vente_log_id INT NOT NULL,
   PRIMARY KEY(vente_id),
   FOREIGN KEY(vente_agent_id) REFERENCES waz_agent(agent_id),
   FOREIGN KEY(vente_log_id) REFERENCES waz_logement(log_id)
);

-- -- Table: waz_location  --

CREATE TABLE waz_location(
   loc_id INT Auto_increment NOT NULL,
   loc_type_de_bien VARCHAR NOT NULL,
   loc_MeubleNon_Meuble VARCHAR NOT NULL,
   loc_reference CHAR(50) NOT NULL,
   loc_agent VARCHAR(50) NOT NULL,
   loc_prix DECIMAL(15,2) NOT NULL,
   loc_date_debut DATE NOT NULL,
   loc_date_fin DATE NOT NULL,
   loc_agent_id INT NOT NULL,
   loc_log_id INT NOT NULL,
   PRIMARY KEY(loc_id),
   FOREIGN KEY(loc_agent_id) REFERENCES waz_agent(agent_id),
   FOREIGN KEY(loc_log_id) REFERENCES waz_logement(log_id)
);

-- -- Table: waz_annonce  --

CREATE TABLE waz_annonce(
   an_id INT Auto_increment NOT NULL,
   an_description VARCHAR(255) NOT NULL,
   an_type_offre tinyint NOT NULL,
   an_reference VARCHAR(1) NOT NULL,
   an_titre VARCHAR(50) NOT NULL,
   an_prix INT NOT NULL,
   an_date_ajout DATETIME NOT NULL,
   an_date_modification DATETIME NOT NULL,
   an_log_id INT NOT NULL,
   an_agent_id INT NOT NULL,
   PRIMARY KEY(an_id),
   FOREIGN KEY(an_log_id) REFERENCES waz_logement(log_id),
   FOREIGN KEY(an_agent_id) REFERENCES waz_agent(agent_id)
);

-- -- Table association: possede  --

CREATE TABLE possede(
   log_id INT,
   opt_id INT,
   PRIMARY KEY(log_id, opt_id),
   FOREIGN KEY(log_id) REFERENCES waz_logement(log_id),
   FOREIGN KEY(opt_id) REFERENCES waz_options(opt_id)
);

-- -- Table association: consulte  --

CREATE TABLE consulte(
   commentaire   varchar(250) NOT NULL,
   an_id INT,
   util_id INT,
   PRIMARY KEY(an_id, util_id),
   FOREIGN KEY(an_id) REFERENCES waz_annonce(an_id),
   FOREIGN KEY(util_id) REFERENCES waz_utilisateur(util_id)
);

-- -- Table association: acheter  --

CREATE TABLE acheter_(
   vente_id INT,
   prop_id INT,
   PRIMARY KEY(vente_id, prop_id),
   FOREIGN KEY(vente_id) REFERENCES waz_vente(vente_id),
   FOREIGN KEY(prop_id) REFERENCES waz_prospects(prop_id)
);

-- -- Table association: vendre  --

CREATE TABLE vendre(
   vente_id INT,
   prop_id INT,
   PRIMARY KEY(vente_id, prop_id),
   FOREIGN KEY(vente_id) REFERENCES waz_vente(vente_id),
   FOREIGN KEY(prop_id) REFERENCES waz_prospects(prop_id)
);

-- -- Table association: louer  --

CREATE TABLE louer(
   loc_id INT,
   prop_id INT,
   PRIMARY KEY(loc_id, prop_id),
   FOREIGN KEY(loc_id) REFERENCES waz_location(loc_id),
   FOREIGN KEY(prop_id) REFERENCES waz_prospects(prop_id)
);
