-- DROP DATABASE IF EXISTS wazaaimmo;

-- CREATE DATABASE wazaaimmo;


-- -- Table: waz_options  --

-- USE wazaaimmo;
-- CREATE TABLE waz_options(
--         opt_id                   Int  Auto_increment  NOT NULL primary key,
--         opt_libelle              Varchar (50) NOT NULL
--         );

-- -- Table: waz_photos --

-- CREATE TABLE waz_photos(
--         photo_id                   Int  Auto_increment  NOT NULL primary key,
--         photo_libelle              Varchar (50) NOT NULL
--         );

-- -- Table: waz_quartier --

-- CREATE TABLE waz_quartier(
--         quartier_id                   Int  Auto_increment  NOT NULL primary key,
--         quartier_libelle              Varchar (255) NOT NULL,
--         quartier_commune_id           int NOT NULL,
--         FOREIGN KEY (quartier_commune_id) REFERENCES waz_commune(commune_id)
--         );

-- -- Table: waz_commune --

-- CREATE TABLE waz_commune(
--         commune_id                   Int  Auto_increment  NOT NULL primary key,
--         commune_nom                  Varchar (50) NOT NULL
--         );



-- -- Table: waz_logement --


-- CREATE TABLE waz_logement(
--         log_id                   Int  Auto_increment  NOT NULL PRIMARY KEY,
--         log_typedebien           tinyint(3) NOT NULL,
--         log_description          varchar(255) NOT NULL,
--         log_reference            char (50)  NOT NULL,
--         log_pieces               tinyint  NOT NULL,
--         log_surf_hab    smallint(6) NOT NULL,
--         log_surf_tot              int(11) NOT NULL,
--         log_diagnostic           char(50) NOT NULL,
--         log_prix                 decimal(10,0) NOT NULL,
--         log_localisation         varchar(250) NOT NULL,
--         log_opt_id               int NOT NULL,
--         log_photo_id             int NOT NULL,
--         log_quartier_id          int NOT NULL,
--         log_prop_id              int NOT NULL,
--         FOREIGN KEY (log_opt_id) REFERENCES waz_options(opt_id),
--         FOREIGN KEY (log_photo_id) REFERENCES waz_photos(photo_id),
--         FOREIGN KEY (log_quartier_id) REFERENCES waz_quartier(quartier_id),
--         FOREIGN KEY (log_prop_id)  REFERENCES waz_prospects(prop_id)
--         );


-- -- Table: waz_agent --


-- CREATE TABLE waz_agent(
--         agent_id                  Int  Auto_increment  NOT NULL PRIMARY KEY,
--         agent_nom                 Char (50) NOT NULL,
--         agent_prenom              Varchar (50) NOT NULL,
--         agent_mail                Varchar (255) NOT NULL,
--         agent_login               Varchar(30) NOT NULL,
--         agent_passeword           Varchar(50) NOT NULL,
--         agent_d_inscr             datetime NOT NULL,
--         agent_d_decon             datetime NOT NULL,
--         agent_d_ajout             datetime NOT NULL
        
-- 	);



-- -- Table:  waz_utilisateur--


-- CREATE TABLE waz_utilisateur(
--         util_id                  Int  Auto_increment  NOT NULL PRIMARY KEY,
--         util_nom                 Varchar (50) NOT NULL,
--         util_prenom              Varchar (50) NOT NULL,
--         util_tel                 Varchar (14) NOT NULL,
--         util_mail                Varchar(255) NOT NULL,
--         util_passeword           text  NOT NULL,
--         util_an_id               int NOT NULL,
--         FOREIGN KEY (util_an_id)  REFERENCES waz_annonce(an_id)
-- );

-- -- Table: waz_location --


-- CREATE TABLE waz_location(
--         loc_id                    Int  Auto_increment  NOT NULL PRIMARY KEY,
--         loc_reference             char (50) NOT NULL,
--         loc_agent                 VARCHAR (50) NOT NULL,
--         loc_prix                  decimal (10,0) NOT NULL,
--         loc_date_debut            date NOT NULL,
--         loc_date_fin              date NOT NULL,
--         loc_log_id                int NOT NULL,
--         loc_prop_id               int NOT NULL,
--         loc_agent_id              int NOT NULL,
--         FOREIGN KEY (loc_log_id)  REFERENCES waz_logement(log_id),
--         FOREIGN KEY (loc_prop_id)  REFERENCES waz_prospects(prop_id),
--         FOREIGN KEY (loc_agent_id) REFERENCES waz_agent(agent_id)

-- );

-- -- Table: waz_vente --


-- CREATE TABLE waz_vente(
--         vente_id                    Int  Auto_increment  NOT NULL PRIMARY KEY,
--         vente_reference             char (50) NOT NULL,
--         vente_date                  datetime NOT NULL,
--         vente_prix                  decimal (10,0) NOT NULL,
--         vente_prop_id                 int NOT NULL,
--         vente_log_id                int NOT NULL,
--         vente_agent_id              int NOT NULL,
--         FOREIGN KEY (vente_prop_id) REFERENCES waz_prospects(prop_id),
--         FOREIGN KEY (vente_log_id)  REFERENCES waz_logement(log_id),
--         FOREIGN KEY (vente_agent_id) REFERENCES waz_agent(agent_id)
-- );


-- -- Table: waz_annonce --


-- CREATE TABLE waz_annonce(
--         an_id                    Int  Auto_increment  NOT NULL PRIMARY KEY,
--         an_description           varchar (255) NOT NULL,
--         an_type_offre            tinyint NOT NULL,
--         an_reference             char (50) NOT NULL,
--         an_titre                 varchar (255) NOT NULL,
--         an_prix                  int NOT NULL,
--         an_date_ajout            datetime NOT NULL,
--         an_date_modification     datetime NOT NULL,
--         an_log_id                int NOT NULL,
--         an_agent_id              int NOT NULL,
--         FOREIGN KEY (an_log_id)  REFERENCES waz_logement(log_id),
--         FOREIGN KEY (an_agent_id) REFERENCES waz_agent(agent_id)

-- );

-- -- Table: waz_prospects --


-- CREATE TABLE waz_prospects(
--         prop_id                     Int  Auto_increment  NOT NULL PRIMARY KEY,
--         prop_nom                    varchar (50)   NOT NULL,
--         prop_prenom                 varchar (50)   NOT NULL,
--         prop_adresse_actuelle       varchar (255)  NOT NULL,
--         prop_tel                    varchar (14)   NOT NULL,
--         prop_email                  varchar (255)  NOT NULL,
--         prop_date_naissance         datetime       NOT NULL,
--         prop_budjet_minim           decimal (15,2) NOT NULL,
--         prop_budjet_maxi            decimal (15,2) NOT NULL,
--         prop_salaire                decimal (15,2) NOT NULL,
--         prop_avisimpots             varchar (255) NOT NULL,
--         prop_bulletins_salaire1     varchar (255)  NOT NULL,
--         prop_bulletins_salaire2     varchar (255)  NOT NULL,
--         prop_bulletins_salaire3     varchar (255)  NOT NULL,
--         prop_piece_identité         varchar (255)  NOT NULL,
--         prop_situation_familiale    varchar (25)   NOT NULL,
--         prop_garant                 varchar (255)  NOT NULL,
--         prop_civilité               varchar (30)   NOT NULL,
--         prop_vente_id               int NOT NULL,
--         FOREIGN KEY (prop_vente_id) REFERENCES waz_vente(vente_id)

-- );
