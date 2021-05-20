DROP DATABASE IF EXISTS wazaaimmo;

CREATE DATABASE wazaaimmo;


-- Table: waz_options  --

USE wazaaimmo;
CREATE TABLE waz_options(
        opt_id                   Int  Auto_increment  NOT NULL primary key,
        opt_libelle              Varchar (50) NOT NULL
        );



-- Table: waz_logement --


CREATE TABLE waz_logement(
        log_id                   Int  Auto_increment  NOT NULL PRIMARY KEY,
        log_type                 tinyint(3) NOT NULL,
        log_piece                tinyint (3) NOT NULL,
        log_description          varchar(250) NOT NULL,
        log_localisation         varchar(100) NOT NULL,
        log_surf_hab             smallint(6) NOT NULL,
        log_suf_tot              int(11) NOT NULL,
        log_prix                 int(11) NOT NULL,
        log_diagnostic           char(50) NOT NULL,
        log_opt_id               Int NOT null,
        FOREIGN KEY (log_opt_id) REFERENCES waz_options(opt_id)
        );


-- Table: waz_user_admin --


CREATE TABLE waz_user_admin(
        user_id                  Int  Auto_increment  NOT NULL PRIMARY KEY,
        user_nom                 Char (50) NOT NULL,
        user_prenom              Varchar (50) NOT NULL,
        user_mail                Varchar (50) NOT NULL,
        user_login               Varchar(50) NOT NULL,
        user_passeword           Varchar(50) NOT NULL,
        user_d_inscr             datetime NOT NULL,
        user_d_decon             datetime NOT NULL
	);



-- Table:  waz_utilisateur--


CREATE TABLE waz_utilisateur(
        util_id                  Int  Auto_increment  NOT NULL PRIMARY KEY,
        util_nom                 Varchar (50) NOT NULL,
        util_prenom              Varchar (50) NOT NULL,
        util_mail                Varchar(50) NOT NULL,
        util_passeword           Varchar (50) NOT NULL
);



-- Table: waz_annonce --


CREATE TABLE waz_annonce(
        an_id                    Int  Auto_increment  NOT NULL PRIMARY KEY,
        an_reference             Varchar (10) NOT NULL,
        an_titre                 VARCHAR (50) NOT NULL,
        an_prix                  int NOT NULL,
        an_date_ajout            datetime NOT NULL,
        an_date_modification     datetime NOT NULL,
        FOREIGN KEY (an_log_id)  REFERENCES waz_logement(log_id),
        FOREIGN KEY (an_user_id) REFERENCES waz_user_admin(user_id),
        FOREIGN KEY (an_util_id) REFERENCES waz_utilisateur(util_id)

);



















