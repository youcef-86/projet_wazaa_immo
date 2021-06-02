DROP TABLE `waz_quartier`;

CREATE TABLE `waz_quartier` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `quartier_commune_id` mediumint default NULL,
  `quartier_libelle` varchar(50) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (63,"MO"),(8,"O"),(7,"Lubuskie"),(83,"Jigawa"),(91,"Mazowieckie"),(24,"North Island"),(72,"Gye"),(97,"ON"),(74,"Chi"),(18,"Indiana");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (52,"Ada"),(73,"VDA"),(15,"E"),(57,"ANT"),(53,"SI"),(76,"São Paulo"),(90,"North Island"),(10,"RU"),(43,"Louisiana"),(35,"British Columbia");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (47,"Vlaams-Brabant"),(5,"ON"),(73,"Punjab"),(8,"Gye"),(71,"Arizona"),(43,"ERM"),(95,"Andalucía"),(28,"TN"),(40,"Jharkhand"),(66,"São Paulo");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (35,"Zl"),(94,"PU"),(33,"CV"),(14,"RJ"),(91,"Ohio"),(80,"BAS"),(69,"Nord-Pas-de-Calais"),(4,"Overijssel"),(15,"ON"),(73,"BL");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (34,"Ontario"),(88,"Lambayeque"),(36,"Kon"),(25,"Sindh"),(87,"Lazio"),(23,"Cusco"),(76,"Oost-Vlaanderen"),(72,"Jej"),(11,"AN"),(19,"CA");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (47,"Istanbul"),(27,"Atlántico"),(20,"SI"),(49,"Alsace"),(30,"CDM"),(73,"Berlin"),(25,"Hawaii"),(46,"West-Vlaanderen"),(79,"Kirkcudbrightshire"),(94,"AY");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (27,"BA"),(77,"PUG"),(43,"South Chungcheong"),(66,"Vienna"),(45,"AB"),(13,"Quebec"),(81,"Alsace"),(40,"Gl"),(47,"AN"),(58,"ANT");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (55,"ST"),(9,"MN"),(97,"Quebec"),(61,"WB"),(6,"Provence-Alpes-Côte d'Azur"),(48,"Benue"),(60,"Coahuila"),(97,"KA"),(13,"Vienna"),(67,"Île-de-France");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (3,"W"),(73,"Connacht"),(97,"Istanbul"),(49,"AN"),(26,"Victoria"),(91,"Vienna"),(44,"CH"),(50,"LX"),(18,"Madhya Pradesh"),(60,"PUN");
INSERT INTO `waz_quartier` (`quartier_commune_id`,`quartier_libelle`) VALUES (11,"BC"),(92,"QC"),(3,"F"),(87,"VIC"),(9,"Maharastra"),(91,"South Australia"),(82,"PIU"),(16,"Hamburg"),(2,"LAZ"),(97,"Paraná");
