-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 03 août 2021 à 12:44
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wazaaimmo`
--

-- --------------------------------------------------------

--
-- Structure de la table `acheter`
--

DROP TABLE IF EXISTS `acheter`;
CREATE TABLE IF NOT EXISTS `acheter` (
  `acheter_vente_id` int NOT NULL,
  `acheter_prop_id` int NOT NULL,
  PRIMARY KEY (`acheter_vente_id`,`acheter_prop_id`),
  KEY `acheter_prop_id` (`acheter_prop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acheter`
--

INSERT INTO `acheter` (`acheter_vente_id`, `acheter_prop_id`) VALUES
(5, 3),
(43, 3),
(47, 3),
(50, 3),
(94, 3),
(6, 5),
(15, 5),
(69, 5),
(10, 6),
(37, 6),
(75, 7),
(22, 8),
(37, 8),
(6, 10),
(67, 10),
(67, 11),
(90, 11),
(77, 12),
(5, 13),
(85, 17),
(56, 18),
(89, 18),
(39, 19),
(20, 20),
(97, 20),
(4, 21),
(35, 21),
(22, 25),
(71, 27),
(46, 28),
(55, 28),
(34, 29),
(92, 33),
(70, 34),
(59, 35),
(20, 37),
(71, 37),
(14, 39),
(26, 41),
(27, 41),
(92, 42),
(88, 43),
(97, 43),
(76, 44),
(58, 45),
(74, 50),
(88, 50),
(6, 51),
(97, 51),
(99, 51),
(61, 52),
(38, 54),
(71, 55),
(65, 60),
(71, 61),
(25, 64),
(57, 64),
(63, 64),
(66, 64),
(3, 65),
(7, 65),
(89, 66),
(27, 67),
(93, 67),
(66, 68),
(53, 70),
(52, 71),
(52, 72),
(57, 72),
(40, 73),
(66, 73),
(72, 73),
(85, 73),
(11, 74),
(62, 74),
(64, 74),
(77, 75),
(28, 77),
(27, 80),
(28, 80),
(81, 80),
(12, 81),
(18, 81),
(23, 84),
(11, 85),
(62, 85),
(38, 88),
(83, 88),
(84, 88),
(10, 94),
(91, 94),
(30, 96),
(84, 96),
(16, 97),
(22, 99),
(65, 99),
(34, 100),
(59, 100),
(64, 100),
(75, 100);

-- --------------------------------------------------------

--
-- Structure de la table `consulte`
--

DROP TABLE IF EXISTS `consulte`;
CREATE TABLE IF NOT EXISTS `consulte` (
  `consulter_commentaire` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `consulter_an_id` int NOT NULL,
  `consulter_util_id` int NOT NULL,
  PRIMARY KEY (`consulter_an_id`,`consulter_util_id`),
  KEY `consulter_util_id` (`consulter_util_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `consulte`
--

INSERT INTO `consulte` (`consulter_commentaire`, `consulter_an_id`, `consulter_util_id`) VALUES
('tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec', 1, 56),
('non magna. Nam ligula elit, pretium et, rutrum non, hendrerit', 2, 33),
('mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor', 2, 88),
('at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare', 2, 92),
('elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non', 4, 54),
('semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae', 4, 100),
('tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.', 10, 11),
('Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque', 10, 87),
('eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero', 14, 21),
('egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem', 15, 49),
('id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus', 17, 62),
('Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus', 18, 28),
('vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur', 19, 61),
('mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus.', 20, 4),
('Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet', 21, 9),
('erat vitae risus. Duis a mi fringilla mi lacinia mattis.', 22, 63),
('vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.', 23, 12),
('In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas.', 23, 41),
('luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi', 25, 9),
('cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet', 26, 12),
('porta elit, a feugiat tellus lorem eu metus. In lorem.', 26, 26),
('nunc. In at pede. Cras vulputate velit eu sem. Pellentesque', 26, 50),
('in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit', 27, 44),
('auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi', 27, 54),
('a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis', 28, 1),
('Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec,', 29, 18),
('mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy', 31, 53),
('ac nulla. In tincidunt congue turpis. In condimentum. Donec at', 31, 56),
('Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede,', 31, 66),
('eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed', 31, 97),
('tristique pellentesque, tellus sem mollis dui, in sodales elit erat', 32, 77),
('a nunc. In at pede. Cras vulputate velit eu sem.', 33, 92),
('vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.', 36, 33),
('sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales.', 37, 44),
('Proin mi. Aliquam gravida mauris ut mi. Duis risus odio,', 38, 65),
('netus et malesuada fames ac turpis egestas. Fusce aliquet magna', 39, 16),
('hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida', 40, 1),
('montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque', 40, 31),
('at arcu. Vestibulum ante ipsum primis in faucibus orci luctus', 41, 5),
('quam quis diam. Pellentesque habitant morbi tristique senectus et netus', 41, 20),
('arcu ac orci. Ut semper pretium neque. Morbi quis urna.', 42, 41),
('at fringilla purus mauris a nunc. In at pede. Cras', 48, 2),
('purus, in molestie tortor nibh sit amet orci. Ut sagittis', 48, 30),
('nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut', 50, 73),
('risus. Donec nibh enim, gravida sit amet, dapibus id, blandit', 51, 75),
('dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus', 51, 93),
('Vivamus non lorem vitae odio sagittis semper. Nam tempor diam', 53, 60),
('vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat', 54, 10),
('ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor', 59, 25),
('metus urna convallis erat, eget tincidunt dui augue eu tellus.', 61, 17),
('Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh', 61, 33),
('sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id', 61, 76),
('ac turpis egestas. Fusce aliquet magna a neque. Nullam ut', 63, 29),
('elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet', 63, 46),
('amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede,', 63, 82),
('tristique senectus et netus et malesuada fames ac turpis egestas.', 64, 100),
('magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor', 65, 15),
('pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper,', 65, 73),
('Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla', 67, 82),
('Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor', 68, 45),
('vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu.', 69, 88),
('ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend', 70, 59),
('auctor, nunc nulla vulputate dui, nec tempus mauris erat eget', 70, 70),
('nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce', 71, 6),
('amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis', 71, 21),
('Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla', 71, 35),
('felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla.', 72, 75),
('nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam', 72, 78),
('eu nulla at sem molestie sodales. Mauris blandit enim consequat', 72, 96),
('ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida', 73, 13),
('blandit at, nisi. Cum sociis natoque penatibus et magnis dis', 73, 15),
('at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare', 73, 66),
('enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum,', 74, 92),
('Ut semper pretium neque. Morbi quis urna. Nunc quis arcu', 75, 48),
('nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat', 76, 41),
('Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet', 77, 80),
('vitae diam. Proin dolor. Nulla semper tellus id nunc interdum', 79, 1),
('sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', 79, 51),
('Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum', 80, 64),
('justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate,', 80, 93),
('euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas', 81, 24),
('sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis', 83, 20),
('volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis.', 83, 72),
('nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat.', 84, 18),
('neque. Morbi quis urna. Nunc quis arcu vel quam dignissim', 84, 20),
('laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,', 86, 62),
('tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a', 86, 79),
('sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id', 87, 31),
('Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor', 87, 32),
('semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae', 87, 80),
('magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor', 89, 64),
('gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie', 91, 59),
('risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a', 93, 73),
('Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui', 94, 55),
('Nulla eget metus eu erat semper rutrum. Fusce dolor quam,', 95, 61),
('egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem', 95, 81),
('a, auctor non, feugiat nec, diam. Duis mi enim, condimentum', 96, 7),
('ac metus vitae velit egestas lacinia. Sed congue, elit sed', 96, 63),
('dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec', 99, 92),
('libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus', 100, 33);

-- --------------------------------------------------------

--
-- Structure de la table `louer`
--

DROP TABLE IF EXISTS `louer`;
CREATE TABLE IF NOT EXISTS `louer` (
  `louer_loc_id` int NOT NULL,
  `louer_prop_id` int NOT NULL,
  PRIMARY KEY (`louer_loc_id`,`louer_prop_id`),
  KEY `louer_prop_id` (`louer_prop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `louer`
--

INSERT INTO `louer` (`louer_loc_id`, `louer_prop_id`) VALUES
(31, 3),
(56, 3),
(11, 5),
(17, 5),
(27, 5),
(53, 5),
(57, 5),
(71, 5),
(3, 6),
(35, 7),
(12, 8),
(26, 8),
(31, 8),
(15, 9),
(13, 11),
(25, 11),
(30, 11),
(47, 12),
(56, 16),
(82, 16),
(83, 17),
(4, 19),
(29, 21),
(5, 22),
(69, 26),
(55, 27),
(12, 32),
(30, 32),
(79, 33),
(85, 33),
(26, 34),
(47, 34),
(39, 35),
(89, 35),
(88, 36),
(39, 37),
(2, 38),
(39, 38),
(91, 38),
(11, 39),
(61, 40),
(55, 42),
(90, 43),
(75, 44),
(5, 45),
(80, 47),
(32, 48),
(41, 48),
(68, 49),
(97, 49),
(13, 51),
(7, 52),
(48, 52),
(58, 53),
(88, 53),
(91, 53),
(80, 56),
(88, 56),
(39, 58),
(10, 59),
(43, 59),
(89, 59),
(17, 60),
(1, 61),
(94, 61),
(44, 62),
(65, 62),
(23, 63),
(61, 64),
(56, 66),
(59, 66),
(23, 67),
(69, 69),
(32, 71),
(75, 73),
(95, 77),
(19, 78),
(6, 79),
(86, 80),
(87, 82),
(76, 83),
(26, 84),
(41, 84),
(30, 88),
(76, 88),
(82, 88),
(7, 89),
(17, 90),
(64, 91),
(47, 92),
(11, 94),
(23, 95),
(33, 95),
(93, 95),
(3, 98),
(27, 98),
(78, 99),
(1, 100),
(43, 100),
(51, 100);

-- --------------------------------------------------------

--
-- Structure de la table `possede`
--

DROP TABLE IF EXISTS `possede`;
CREATE TABLE IF NOT EXISTS `possede` (
  `posseder_log_id` int NOT NULL,
  `posseder_opt_id` int NOT NULL,
  PRIMARY KEY (`posseder_log_id`,`posseder_opt_id`),
  KEY `posseder_opt_id` (`posseder_opt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `possede`
--

INSERT INTO `possede` (`posseder_log_id`, `posseder_opt_id`) VALUES
(7, 1),
(34, 1),
(37, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(52, 1),
(66, 1),
(67, 1),
(73, 1),
(80, 1),
(82, 1),
(85, 1),
(97, 1),
(20, 2),
(33, 2),
(44, 2),
(49, 2),
(54, 2),
(62, 2),
(68, 2),
(79, 2),
(9, 3),
(10, 3),
(17, 3),
(21, 3),
(34, 3),
(49, 3),
(63, 3),
(74, 3),
(80, 3),
(84, 3),
(94, 3),
(12, 4),
(14, 4),
(18, 4),
(35, 4),
(46, 4),
(48, 4),
(49, 4),
(53, 4),
(54, 4),
(57, 4),
(4, 5),
(8, 5),
(33, 5),
(36, 5),
(68, 5),
(70, 5),
(80, 5),
(87, 5),
(95, 5),
(100, 5),
(3, 6),
(12, 6),
(26, 6),
(29, 6),
(41, 6),
(50, 6),
(52, 6),
(54, 6),
(74, 6),
(77, 6),
(81, 6),
(82, 6),
(87, 6),
(92, 6),
(12, 7),
(21, 7),
(24, 7),
(49, 7),
(96, 7),
(16, 8),
(29, 8),
(34, 8),
(67, 8),
(78, 8),
(79, 8),
(88, 8),
(100, 8),
(5, 9),
(7, 9),
(17, 9),
(22, 9),
(29, 9),
(38, 9),
(48, 9),
(75, 9),
(12, 10),
(39, 10),
(46, 10),
(47, 10),
(48, 10),
(53, 10),
(70, 10),
(73, 10),
(78, 10),
(79, 10),
(85, 10);

-- --------------------------------------------------------

--
-- Structure de la table `vendre`
--

DROP TABLE IF EXISTS `vendre`;
CREATE TABLE IF NOT EXISTS `vendre` (
  `vendre_vente_id` int NOT NULL,
  `vendre_prop_id` int NOT NULL,
  PRIMARY KEY (`vendre_vente_id`,`vendre_prop_id`),
  KEY `vendre_prop_id` (`vendre_prop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vendre`
--

INSERT INTO `vendre` (`vendre_vente_id`, `vendre_prop_id`) VALUES
(35, 3),
(42, 3),
(77, 3),
(43, 5),
(50, 5),
(98, 5),
(13, 6),
(72, 6),
(100, 6),
(7, 7),
(46, 9),
(100, 9),
(70, 11),
(6, 12),
(35, 15),
(80, 15),
(92, 16),
(52, 18),
(77, 18),
(26, 23),
(59, 23),
(81, 23),
(40, 24),
(41, 24),
(75, 24),
(3, 26),
(8, 27),
(16, 27),
(48, 27),
(51, 27),
(22, 28),
(98, 28),
(60, 30),
(38, 32),
(42, 33),
(51, 33),
(85, 37),
(17, 39),
(56, 41),
(67, 41),
(100, 41),
(41, 42),
(42, 43),
(41, 46),
(73, 46),
(90, 48),
(24, 52),
(82, 52),
(78, 53),
(49, 54),
(62, 54),
(41, 56),
(82, 56),
(4, 57),
(8, 57),
(15, 58),
(59, 60),
(73, 60),
(70, 61),
(22, 62),
(3, 64),
(5, 64),
(70, 64),
(73, 67),
(81, 67),
(30, 68),
(72, 68),
(80, 70),
(86, 70),
(92, 71),
(36, 77),
(26, 78),
(46, 78),
(53, 80),
(10, 81),
(48, 82),
(89, 82),
(23, 83),
(79, 83),
(81, 83),
(10, 84),
(28, 84),
(20, 85),
(30, 85),
(54, 85),
(66, 85),
(58, 88),
(85, 88),
(70, 89),
(13, 90),
(83, 91),
(89, 91),
(37, 93),
(55, 93),
(19, 94),
(34, 95),
(42, 96),
(99, 97),
(7, 99),
(46, 100);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_annonce_consulter`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_annonce_consulter`;
CREATE TABLE IF NOT EXISTS `v_annonce_consulter` (
`an_agent_id` int
,`an_date_ajout` varchar(255)
,`an_date_modification` varchar(255)
,`an_id` int
,`an_log_id` int
,`an_titre` varchar(100)
,`an_type_offre` char(1)
,`an_vue` int
);

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `v_annonce_liste`
-- (Voir ci-dessous la vue réelle)
--
DROP VIEW IF EXISTS `v_annonce_liste`;
CREATE TABLE IF NOT EXISTS `v_annonce_liste` (
`an_id` int
,`an_titre` varchar(100)
,`log_prix` decimal(10,2)
,`log_reference` varchar(15)
,`log_surf_hab` mediumint
,`log_type_de_bien` char(1)
);

-- --------------------------------------------------------

--
-- Structure de la table `waz_agent`
--

DROP TABLE IF EXISTS `waz_agent`;
CREATE TABLE IF NOT EXISTS `waz_agent` (
  `agent_id` int NOT NULL AUTO_INCREMENT,
  `agent_nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_mail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_passeword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_d_inscr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_d_decon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agent_d_ajout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_agent`
--

INSERT INTO `waz_agent` (`agent_id`, `agent_nom`, `agent_prenom`, `agent_mail`, `agent_login`, `agent_passeword`, `agent_d_inscr`, `agent_d_decon`, `agent_d_ajout`) VALUES
(2, 'Blossom', 'Hester', 'sollicitudin.orci@nulla.edu', 'Gallegos, Uta G.', 'VGX32RMU2UC', '10/09/2021', '31/07/2021', '15/01/2022'),
(3, 'Ignacia', 'Mccall', 'enim@lobortisnisi.net', 'Fowler, Ryan J.', 'KKT01RHQ3DE', '03/05/2022', '28/09/2021', '15/08/2021'),
(4, 'Kendall', 'Steele', 'magna.Suspendisse.tristique@QuisquevariusNam.co.uk', 'Duran, Dakota B.', 'KZZ30BSI9BS', '20/08/2021', '25/04/2021', '05/09/2020'),
(5, 'Isaac', 'Dominguez', 'Pellentesque@vulputateullamcorper.com', 'Valdez, Shafira D.', 'OMF87BYV0EC', '01/02/2021', '10/08/2020', '29/08/2020'),
(6, 'Donovan', 'Gibson', 'ornare.elit@ultrices.org', 'Larsen, Jane F.', 'ECI08BGC5XP', '21/10/2020', '29/04/2022', '30/10/2020'),
(7, 'Cally', 'Crane', 'urna.nec.luctus@metus.edu', 'Vance, Amery C.', 'GMF25QKY7SJ', '23/09/2020', '04/04/2022', '28/11/2021'),
(8, 'Zena', 'Galloway', 'adipiscing.ligula.Aenean@quispedePraesent.co.uk', 'Henry, Eden Q.', 'QXD57TSU1HL', '29/12/2021', '02/01/2021', '15/04/2022'),
(9, 'Hall', 'Waters', 'Proin.mi@nisinibh.co.uk', 'Buckner, Yoshi C.', 'CMQ83FFL2UH', '09/08/2021', '27/12/2020', '05/04/2022'),
(10, 'Melvin', 'Osborne', 'ullamcorper@atvelit.co.uk', 'Lee, Erica D.', 'GVS65NSF5FH', '17/03/2022', '02/11/2021', '07/06/2021'),
(11, 'Riley', 'Ellison', 'neque@ultriciesornare.org', 'Cochran, Serina S.', 'MQE70QCL6JP', '26/03/2021', '30/09/2021', '21/12/2020'),
(12, 'Murphy', 'Watson', 'dictum.eleifend@luctus.org', 'Cash, Haviva L.', 'DFO90IWH2OC', '14/02/2021', '03/10/2021', '11/11/2021'),
(13, 'Hiram', 'Mathews', 'urna.justo.faucibus@malesuadaInteger.ca', 'Moreno, Debra N.', 'YTB81RLZ5TM', '01/09/2021', '26/04/2022', '15/11/2020'),
(14, 'Keely', 'Parks', 'cursus.luctus@Nullafacilisis.org', 'Cummings, Trevor J.', 'THC32HVC2NY', '21/08/2021', '12/11/2020', '27/08/2021'),
(15, 'Hannah', 'Burke', 'Curae.Donec@arcuVivamus.org', 'Weber, Margaret D.', 'XJY87UJC0DC', '12/02/2021', '29/01/2022', '08/06/2021'),
(16, 'Olga', 'Lang', 'adipiscing.lacus.Ut@orcitincidunt.org', 'Maddox, Stacy P.', 'SHQ06RDM3YA', '27/01/2021', '13/05/2022', '19/09/2021'),
(17, 'Oleg', 'Pratt', 'sagittis.Duis.gravida@eleifendnec.ca', 'Kane, Elton S.', 'CSP01JQG4EM', '20/08/2020', '23/09/2021', '24/08/2021'),
(18, 'Uriel', 'Lynch', 'neque.Morbi.quis@dictummagnaUt.edu', 'Washington, Dustin L.', 'XKJ88MNX9HU', '07/04/2021', '03/09/2020', '16/01/2021'),
(19, 'Michael', 'Shaw', 'ligula.tortor.dictum@mattis.ca', 'Spence, Berk O.', 'FWW85YUQ8LJ', '29/10/2021', '11/04/2021', '16/11/2021'),
(20, 'Gemma', 'Lindsay', 'Cras.interdum.Nunc@Fusce.com', 'Haley, Callie X.', 'NBO66AJM7DT', '03/04/2021', '05/04/2022', '26/06/2020'),
(21, 'Owen', 'Knox', 'Cras.pellentesque@molestietellus.co.uk', 'Douglas, Reuben T.', 'TDN92BMX2HR', '24/03/2021', '26/04/2022', '03/03/2022'),
(22, 'Christopher', 'Nicholson', 'Cras.lorem.lorem@nasceturridiculusmus.org', 'Cote, Keely G.', 'CFT27VHU3TM', '17/07/2021', '03/04/2022', '04/06/2020'),
(23, 'Emmanuel', 'Wyatt', 'dolor.sit@lorem.com', 'Peterson, Tiger D.', 'JCH68LMU1LY', '14/08/2020', '18/12/2020', '02/04/2022'),
(24, 'Jade', 'Perkins', 'Vivamus.rhoncus@egestas.edu', 'Melton, Sasha B.', 'EMR39TIB3RR', '04/05/2022', '05/01/2021', '16/11/2020'),
(25, 'Otto', 'Tanner', 'lobortis.quam@maurissapien.org', 'Moss, Debra I.', 'FBM14VEL4QT', '01/07/2021', '26/12/2021', '04/05/2022'),
(26, 'Shana', 'Jensen', 'adipiscing@adipiscing.edu', 'Hays, Finn T.', 'SJK20BWM1WD', '25/08/2021', '20/06/2020', '05/07/2021'),
(27, 'Zelenia', 'Sharp', 'nec.enim.Nunc@liberoettristique.co.uk', 'Ellison, Patience J.', 'XTY52CRC9IP', '07/07/2020', '26/02/2022', '30/08/2021'),
(28, 'Jacob', 'Hayes', 'ac@tellusimperdiet.org', 'Moses, Olga E.', 'GQC53RPP6IJ', '09/12/2021', '23/09/2021', '19/02/2021'),
(29, 'Hilary', 'Lyons', 'dolor.sit@Sedmalesuada.co.uk', 'Colon, Glenna F.', 'YUG82KIJ7UP', '11/07/2020', '21/03/2022', '21/08/2020'),
(30, 'Paki', 'Benjamin', 'arcu.Sed.eu@ipsum.ca', 'Pugh, Davis G.', 'GRV88CVW3KL', '17/01/2022', '15/11/2021', '09/03/2022'),
(31, 'Chandler', 'Sims', 'mauris@dictummagnaUt.com', 'Golden, Hope J.', 'OCJ00LPC6RY', '08/04/2022', '16/06/2021', '31/05/2022'),
(32, 'Kuame', 'Fox', 'arcu.ac.orci@nec.edu', 'Bean, Carlos B.', 'KPU83FJY1HE', '09/07/2020', '23/06/2020', '27/08/2020'),
(33, 'Keaton', 'Giles', 'Quisque.nonummy@Suspendissecommodo.co.uk', 'Blackwell, Cassandra Q.', 'GTT51IEG9YZ', '22/07/2021', '12/08/2021', '20/02/2022'),
(34, 'Trevor', 'Cortez', 'pede@accumsansedfacilisis.net', 'Hampton, Laura U.', 'IFG68AOL1YV', '02/12/2020', '22/07/2021', '07/03/2022'),
(35, 'Diana', 'Banks', 'velit@mollisvitaeposuere.ca', 'Hoover, Ruth R.', 'ZXB19UYU0JS', '23/04/2021', '28/03/2021', '21/11/2020'),
(36, 'Bethany', 'Morse', 'enim.gravida.sit@enim.net', 'Smith, Clayton J.', 'XKU68DAG2GU', '23/02/2022', '02/06/2020', '09/09/2021'),
(37, 'Leonard', 'King', 'porta.elit.a@est.org', 'Gilliam, Sylvia M.', 'RAX01TNW1VB', '04/06/2020', '09/07/2021', '08/10/2020'),
(38, 'Thane', 'Blanchard', 'porttitor.interdum.Sed@lorem.ca', 'Nixon, Darius R.', 'SXD05WZI2QF', '17/09/2021', '02/03/2021', '06/01/2021'),
(39, 'Cole', 'Reynolds', 'velit.justo@justoeuarcu.edu', 'Carpenter, Upton P.', 'EWI90VIN2NR', '03/06/2021', '09/11/2020', '28/11/2020'),
(40, 'Gannon', 'Park', 'lacus.pede@necmalesuada.edu', 'Hewitt, Ezekiel U.', 'EZC26LVF0BM', '25/12/2021', '21/02/2022', '18/09/2020'),
(41, 'Cullen', 'Mcintosh', 'Integer.vulputate@sit.net', 'Barton, Daryl C.', 'TCW04HQR7RY', '12/08/2020', '26/06/2021', '24/07/2021'),
(42, 'Adrian', 'Becker', 'blandit@ipsumleo.net', 'Clark, Lionel K.', 'PQL59FXN3BP', '04/09/2020', '12/01/2022', '03/05/2021'),
(43, 'Abraham', 'Shaw', 'ipsum.dolor@nislMaecenasmalesuada.net', 'Hurley, Daquan X.', 'RED69USZ8OQ', '21/09/2021', '01/06/2021', '01/12/2020'),
(44, 'Brent', 'Whitaker', 'dapibus.rutrum@Duis.net', 'Graham, Lane S.', 'GTQ09GFM6YE', '05/07/2021', '27/03/2022', '18/11/2020'),
(45, 'Nehru', 'Levy', 'mauris.blandit@lectusante.com', 'Bradford, Kieran O.', 'CJM28GAZ7UM', '29/06/2020', '20/03/2022', '03/08/2020'),
(46, 'Xerxes', 'Norton', 'dictum@aliquetProin.co.uk', 'Sanford, Zelda J.', 'NOY01MTQ9GZ', '17/12/2020', '09/05/2021', '08/07/2020'),
(47, 'Robin', 'Mclaughlin', 'et.magnis.dis@tacitisociosqu.co.uk', 'Rasmussen, Hope L.', 'EWC09LBA8IQ', '13/02/2022', '21/04/2021', '18/11/2020'),
(48, 'Talon', 'Justice', 'felis.purus.ac@velmauris.org', 'Velasquez, Valentine X.', 'RGA09ZRU8RE', '20/11/2021', '04/02/2022', '04/05/2022'),
(49, 'Deborah', 'Rodriquez', 'ipsum@atliberoMorbi.ca', 'Dyer, Risa D.', 'CHG66DVT1WQ', '17/09/2020', '03/01/2022', '24/01/2021'),
(50, 'William', 'Harmon', 'nunc@orciin.co.uk', 'Fulton, Calvin U.', 'ELJ11OCX1VC', '08/04/2022', '29/03/2021', '29/07/2020'),
(51, 'Yvette', 'Callahan', 'arcu.Curabitur.ut@orcilacus.com', 'Dominguez, Demetrius H.', 'CJA29GOU7ZY', '10/02/2022', '07/08/2021', '26/02/2022'),
(52, 'Keefe', 'Mayer', 'Duis.elementum@nonfeugiat.com', 'Graves, Martina P.', 'YXG04EED6MM', '22/08/2020', '08/10/2021', '14/11/2020'),
(53, 'Kathleen', 'Atkins', 'orci@Quisqueliberolacus.ca', 'Berger, Blair Y.', 'YMT08HTG5SE', '31/05/2022', '22/02/2022', '15/05/2022'),
(54, 'David', 'Cochran', 'dolor.quam@Lorem.net', 'Irwin, Valentine U.', 'NUJ41UAL1BY', '21/02/2022', '21/02/2021', '24/02/2021'),
(55, 'Brenden', 'Kelley', 'inceptos@sitamet.net', 'Orr, Pearl V.', 'QQU64XYG6BC', '23/07/2020', '21/12/2020', '03/12/2021'),
(56, 'August', 'Macdonald', 'commodo.auctor.velit@lectuspede.com', 'Thornton, Maxine O.', 'LPK12RFH7XE', '11/10/2021', '01/04/2022', '09/04/2022'),
(57, 'Abraham', 'Decker', 'In.scelerisque.scelerisque@adipiscingnon.com', 'Munoz, Julian S.', 'CPH78THJ5ME', '18/02/2022', '06/03/2022', '13/12/2021'),
(58, 'Rigel', 'Walker', 'elementum@interdum.edu', 'Gutierrez, Claudia Q.', 'GSP52TWV5KJ', '29/09/2021', '25/09/2021', '13/12/2020'),
(59, 'Amity', 'Bryan', 'tellus.Nunc.lectus@ac.net', 'Perkins, Katell O.', 'DTN03JYI9AO', '04/04/2021', '04/01/2021', '15/07/2020'),
(60, 'Nina', 'Morales', 'mi.felis.adipiscing@Nam.ca', 'Walters, Andrew D.', 'XUJ71BNH9QF', '01/02/2021', '09/04/2022', '12/10/2021'),
(61, 'Elaine', 'Petty', 'tristique.senectus@Morbinequetellus.ca', 'Cannon, Rhonda X.', 'SXY85MKR0KD', '27/11/2020', '17/07/2021', '12/03/2021'),
(62, 'Myles', 'Lawrence', 'enim.commodo@quam.edu', 'Bradley, Amir V.', 'KBJ76AXI5CT', '19/01/2022', '31/05/2021', '20/04/2021'),
(63, 'Kenneth', 'Leblanc', 'ornare.lectus@ornare.edu', 'Barry, Ulla S.', 'PTR46HLM7CJ', '21/08/2021', '07/11/2021', '09/08/2020'),
(64, 'Kimberly', 'Koch', 'gravida@odiovel.com', 'Reese, Castor M.', 'YLB85QAX6DH', '07/05/2021', '22/08/2020', '18/01/2021'),
(65, 'Aiko', 'Roy', 'Suspendisse@acmi.com', 'Thomas, Theodore U.', 'MXF76XYE7XR', '14/06/2020', '29/08/2021', '18/11/2021'),
(66, 'Dakota', 'Adkins', 'pretium.et.rutrum@Uttincidunt.ca', 'Petersen, Irma Z.', 'PJH94LWE0LS', '12/08/2020', '28/08/2021', '13/07/2021'),
(67, 'Sage', 'Barker', 'ridiculus.mus@euismod.com', 'Campos, Mohammad O.', 'QDL60ORY7WT', '03/06/2020', '05/06/2021', '22/11/2020'),
(68, 'Grant', 'Sharp', 'at@diam.com', 'White, Arden B.', 'HJS47LAJ2ZC', '15/05/2021', '31/12/2020', '16/08/2021'),
(69, 'Renee', 'Doyle', 'egestas.hendrerit.neque@Vivamusnon.ca', 'Perkins, Carl E.', 'OWA28TGN3KR', '23/02/2021', '02/03/2021', '03/10/2020'),
(70, 'Christen', 'Ball', 'est.mauris@condimentumDonecat.co.uk', 'Medina, Aiko D.', 'WZW68IOI5KC', '01/03/2022', '26/02/2022', '14/07/2020'),
(71, 'Roth', 'Huffman', 'gravida.non.sollicitudin@Aliquamornare.org', 'Byers, Berk B.', 'NVI07EAN3WL', '16/02/2022', '06/04/2021', '07/06/2020'),
(72, 'Quemby', 'Berry', 'ut.pellentesque.eget@ornaretortor.org', 'Gardner, Josephine R.', 'MBE99WJF2JN', '12/02/2022', '22/05/2022', '14/04/2021'),
(73, 'Alvin', 'Christian', 'neque@Proin.ca', 'Cleveland, Camille D.', 'RVJ19VJD7JH', '19/01/2021', '27/11/2020', '19/11/2020'),
(74, 'Veronica', 'Rowland', 'est.Mauris.eu@nibhlacinia.ca', 'David, Lucy D.', 'DUY59OAG8CY', '06/06/2020', '01/02/2022', '02/07/2021'),
(75, 'Nichole', 'Combs', 'Nullam@sitametrisus.com', 'Cherry, Calvin W.', 'EQZ24EWZ6UR', '09/11/2021', '28/05/2022', '21/06/2021'),
(76, 'Xenos', 'Foster', 'malesuada@nec.org', 'Elliott, Stella O.', 'UXH16JLX0HR', '08/12/2020', '08/08/2021', '04/06/2020'),
(77, 'Griffin', 'Skinner', 'euismod.urna@vel.edu', 'Poole, Martha K.', 'OGT09BCI6EF', '01/12/2020', '16/09/2020', '23/08/2021'),
(78, 'Donovan', 'Ferguson', 'non@Fusce.com', 'Delaney, Germane M.', 'MHU66OXY1TY', '17/05/2022', '21/05/2022', '29/08/2021'),
(79, 'Colleen', 'Soto', 'interdum.Nunc.sollicitudin@eterosProin.co.uk', 'Soto, Harrison F.', 'GGG99CRV5NB', '05/09/2021', '02/01/2021', '14/04/2022'),
(80, 'Noah', 'Bowman', 'quis.pede.Praesent@odio.ca', 'Luna, Cora Y.', 'RFH83YWF2XD', '24/10/2020', '04/12/2021', '28/03/2022'),
(81, 'Macaulay', 'Greer', 'erat.eget@vitaeerat.co.uk', 'Schroeder, Kennedy Z.', 'RFE06DHY5DK', '30/05/2022', '07/09/2021', '28/03/2022'),
(82, 'Tobias', 'Lloyd', 'adipiscing.fringilla.porttitor@ornarelectus.com', 'Cobb, Keiko I.', 'VSN36LNA0FL', '16/03/2021', '05/06/2020', '04/06/2020'),
(83, 'Leslie', 'Cantrell', 'aptent.taciti@vitaemaurissit.org', 'Campos, Yolanda O.', 'TSV87CIZ1KX', '08/10/2020', '30/07/2020', '21/08/2020'),
(84, 'Keane', 'Koch', 'lorem.auctor@tellusjusto.net', 'Downs, Sandra E.', 'KOH44ZUF3VH', '15/05/2021', '01/12/2021', '12/02/2021'),
(85, 'Jonas', 'Marshall', 'Aliquam.fringilla@DonectinciduntDonec.com', 'Church, Grady L.', 'CYD29KNK3HT', '28/09/2021', '06/05/2022', '31/08/2020'),
(86, 'Kieran', 'Fleming', 'penatibus@cursus.co.uk', 'Carey, Judith X.', 'APR45SBU6QG', '22/10/2020', '23/07/2020', '12/07/2020'),
(87, 'Russell', 'Odonnell', 'dolor.Nulla.semper@nascetur.edu', 'Chapman, Imani V.', 'UGY94UOD1DE', '17/02/2021', '16/07/2020', '06/12/2021'),
(88, 'Velma', 'Hunt', 'Aliquam.gravida@habitantmorbitristique.org', 'Valencia, Herrod K.', 'HXK19QHJ9KR', '25/04/2021', '18/01/2021', '04/01/2022'),
(89, 'Otto', 'Hinton', 'risus@telluseu.ca', 'Oneil, Guinevere Y.', 'HKE49JWF0AJ', '26/12/2020', '02/01/2022', '04/08/2020'),
(90, 'Peter', 'Holloway', 'diam.vel.arcu@viverra.com', 'Fuller, Tiger J.', 'MQR09EUS9DF', '02/09/2021', '19/03/2022', '04/05/2021'),
(91, 'Forrest', 'Ortiz', 'odio@sedsapien.com', 'Delacruz, Isadora H.', 'AUA79IGC0HY', '02/07/2021', '10/06/2020', '01/09/2021'),
(92, 'Craig', 'Head', 'a.arcu.Sed@sodales.org', 'Rice, Bradley L.', 'KSE03XAM9UX', '17/01/2021', '10/05/2022', '06/07/2021'),
(93, 'Keegan', 'Bradshaw', 'velit.eu@interdumfeugiat.ca', 'Sexton, Isadora Z.', 'XSP21TSE1HC', '08/05/2021', '03/12/2021', '17/04/2021'),
(94, 'Avye', 'Casey', 'non@Nuncac.edu', 'Nichols, Zena A.', 'QCF93VOK9OC', '28/08/2021', '18/02/2021', '14/12/2020'),
(95, 'Merrill', 'Leach', 'ut.eros.non@ametrisusDonec.org', 'Mccoy, Sara Y.', 'GUT34GLC2US', '17/09/2020', '12/09/2021', '17/02/2022'),
(96, 'William', 'Wright', 'enim.non.nisi@lacusvarius.net', 'Blankenship, Wesley E.', 'QFV82NWZ5ZT', '17/06/2021', '26/02/2022', '05/10/2020'),
(97, 'Lacy', 'Trevino', 'nisl.elementum.purus@Curabituregestas.ca', 'Hooper, Michael S.', 'DXB60FJO7YS', '24/09/2020', '17/01/2021', '22/01/2022'),
(98, 'Jorden', 'Haley', 'mollis@nuncsitamet.edu', 'Anthony, Gary Z.', 'ZFD27RXN0UB', '26/05/2021', '18/03/2021', '27/07/2021'),
(99, 'Brooke', 'Ryan', 'amet@scelerisquenequeNullam.ca', 'French, Kibo I.', 'VVE88WKK1MF', '25/08/2021', '21/01/2022', '16/02/2021'),
(100, 'Coby', 'Tyler', 'Sed.nunc@Nunc.com', 'Snow, Price S.', 'IVF31KID8YO', '27/02/2022', '30/01/2021', '15/07/2021');

-- --------------------------------------------------------

--
-- Structure de la table `waz_annonce`
--

DROP TABLE IF EXISTS `waz_annonce`;
CREATE TABLE IF NOT EXISTS `waz_annonce` (
  `an_id` int NOT NULL AUTO_INCREMENT,
  `an_type_offre` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `an_titre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `an_date_ajout` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `an_date_modification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `an_log_id` int DEFAULT NULL,
  `an_agent_id` int DEFAULT NULL,
  `an_vue` int NOT NULL,
  PRIMARY KEY (`an_id`),
  KEY `an_log_id` (`an_log_id`),
  KEY `an_agent_id` (`an_agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_annonce`
--

INSERT INTO `waz_annonce` (`an_id`, `an_type_offre`, `an_titre`, `an_date_ajout`, `an_date_modification`, `an_log_id`, `an_agent_id`, `an_vue`) VALUES
(1, 'a', 'Vente', '2020-12-15 02:06:38', '2021-10-04 00:56:31', 28, 98, 87834648),
(2, 'V', 'Vente', '2022-02-13 12:15:52', '2022-03-25 10:45:04', 90, 35, 12327517),
(3, 'a', 'Location', '2022-03-23 05:22:15', '2021-01-19 18:01:11', 26, 88, 83150945),
(4, 'a', 'Location', '2020-12-24 20:09:12', '2021-10-25 04:20:08', 5, 30, 88218038),
(5, 'a', 'Location', '2021-03-26 02:35:47', '2020-11-03 16:10:02', 61, 93, 70192359),
(6, 'a', 'Location', '2021-11-03 17:44:14', '2021-01-07 15:47:07', 31, 55, 21665429),
(7, 'a', 'Location', '2021-11-13 01:58:06', '2020-07-17 04:46:13', 25, 73, 10543076),
(8, 'V', 'Location', '2020-11-11 01:17:46', '2022-04-20 15:56:26', 96, 56, 79040175),
(9, 'a', 'Location', '2021-04-20 09:43:30', '2020-12-24 11:44:59', 91, 49, 79007643),
(10, 'V', 'Vente', '2020-06-25 10:18:42', '2021-11-25 02:48:31', 78, 3, 85943483),
(11, 'a', 'Vente', '2020-11-14 12:41:09', '2020-07-01 07:52:26', 85, 8, 44125191),
(12, 'l', 'Vente', '2021-10-02 10:27:09', '2022-02-14 07:02:32', 91, 46, 82043520),
(13, 'V', 'Location', '2021-03-09 13:16:48', '2022-01-05 17:24:17', 1, 52, 29249463),
(14, 'V', 'Location', '2021-02-16 00:57:35', '2021-11-25 20:29:36', 89, 82, 49890452),
(15, 'a', 'Location', '2021-11-26 20:35:16', '2021-10-27 06:52:15', 21, 78, 60176480),
(16, 'V', 'Vente', '2021-11-22 18:08:55', '2021-06-24 10:36:03', 95, 92, 56057443),
(17, 'l', 'Location', '2021-12-09 08:33:31', '2022-03-13 19:27:05', 43, 40, 48879592),
(18, 'a', 'Vente', '2021-05-30 20:44:37', '2021-06-08 06:40:39', 89, 6, 37373293),
(19, 'a', 'Vente', '2022-05-31 06:15:23', '2020-07-08 01:49:57', 7, 50, 28933469),
(20, 'V', 'Location', '2021-03-01 13:13:39', '2022-05-06 05:38:34', 71, 51, 59243009),
(21, 'V', 'Location', '2020-06-26 07:56:18', '2021-11-30 15:19:17', 29, 72, 72768568),
(22, 'l', 'Vente', '2021-08-06 01:09:16', '2022-04-13 08:46:47', 90, 12, 7910629),
(23, 'l', 'Vente', '2022-04-13 00:30:00', '2021-10-05 20:43:55', 32, 24, 17621801),
(24, 'l', 'Vente', '2022-03-21 19:59:36', '2021-11-04 05:53:28', 58, 74, 88038796),
(25, 'l', 'Location', '2021-11-03 16:39:06', '2020-09-01 05:47:47', 34, 97, 68233935),
(26, 'a', 'Location', '2021-10-07 12:26:37', '2021-01-29 08:02:33', 53, 73, 24463321),
(27, 'l', 'Location', '2020-06-28 02:19:46', '2021-04-28 03:25:34', 12, 92, 49321465),
(28, 'l', 'Location', '2022-02-20 03:51:17', '2021-12-15 12:06:30', 45, 5, 64968468),
(29, 'V', 'Vente', '2020-12-31 15:40:41', '2020-07-15 05:08:35', 12, 31, 65288951),
(30, 'l', 'Location', '2020-07-25 08:53:15', '2020-07-24 07:35:33', 89, 91, 93532812),
(31, 'a', 'Vente', '2020-11-04 10:24:45', '2020-12-12 05:44:18', 40, 32, 47507388),
(32, 'a', 'Vente', '2022-04-11 11:42:56', '2020-06-11 17:22:33', 60, 68, 45724546),
(33, 'V', 'Location', '2021-11-23 02:33:56', '2021-10-26 15:49:52', 54, 41, 42275954),
(34, 'a', 'Vente', '2022-04-04 16:47:31', '2021-06-02 02:28:31', 2, 90, 15001911),
(35, 'l', 'Location', '2021-02-06 02:47:24', '2021-09-28 20:09:43', 76, 21, 58863423),
(36, 'V', 'Location', '2020-10-03 06:36:06', '2021-03-06 09:26:45', 26, 29, 12316695),
(37, 'a', 'Vente', '2021-09-10 02:56:43', '2022-04-16 07:14:00', 75, 62, 90443674),
(38, 'l', 'Vente', '2021-06-03 22:25:32', '2021-12-16 09:38:51', 98, 64, 85468156),
(39, 'a', 'Location', '2021-01-27 18:17:37', '2022-03-22 06:42:24', 73, 19, 59578608),
(40, 'a', 'Vente', '2021-03-23 10:59:45', '2020-08-17 00:18:03', 66, 35, 93851218),
(41, 'V', 'Vente', '2021-07-17 10:17:04', '2020-10-31 12:39:36', 83, 4, 66776433),
(42, 'V', 'Vente', '2021-07-31 01:12:06', '2020-09-05 13:24:11', 87, 70, 28844987),
(43, 'V', 'Location', '2020-09-05 18:59:17', '2020-12-28 11:57:18', 26, 91, 49605279),
(44, 'l', 'Location', '2021-01-05 08:23:08', '2021-12-28 09:08:28', 30, 28, 80532586),
(45, 'V', 'Location', '2020-06-25 04:56:34', '2022-03-20 00:35:44', 58, 59, 36564403),
(46, 'a', 'Location', '2021-04-25 21:34:56', '2020-06-08 19:52:32', 83, 5, 45243569),
(47, 'l', 'Vente', '2021-08-12 18:40:08', '2022-04-18 13:21:34', 34, 15, 5579428),
(48, 'l', 'Vente', '2020-07-09 07:51:06', '2022-04-27 04:45:41', 25, 27, 89509489),
(49, 'V', 'Vente', '2020-06-18 20:34:22', '2021-03-23 17:37:05', 17, 21, 63932655),
(50, 'V', 'Location', '2021-08-12 03:44:55', '2021-05-04 06:45:32', 65, 57, 47275555),
(51, 'a', 'Location', '2021-09-15 14:18:03', '2020-11-06 04:46:12', 89, 58, 35520709),
(52, 'a', 'Vente', '2022-04-18 19:57:09', '2021-01-25 17:48:20', 61, 63, 80533023),
(53, 'V', 'Vente', '2021-09-10 03:38:09', '2021-05-21 01:54:45', 60, 20, 61722318),
(54, 'a', 'Vente', '2021-02-18 01:09:09', '2022-03-10 05:48:19', 4, 46, 30740695),
(55, 'V', 'Location', '2021-11-06 03:13:12', '2022-02-21 10:36:12', 44, 38, 55250410),
(56, 'a', 'Vente', '2020-06-26 02:40:05', '2022-06-05 17:38:36', 19, 37, 18411668),
(57, 'V', 'Location', '2020-11-25 10:58:28', '2021-05-26 21:08:03', 100, 63, 15584848),
(58, 'a', 'Location', '2021-10-09 01:49:16', '2021-09-19 22:16:01', 96, 96, 34558324),
(59, 'a', 'Vente', '2021-09-14 23:05:34', '2021-05-11 09:10:52', 98, 45, 96945625),
(60, 'V', 'Location', '2020-11-29 19:18:29', '2021-09-23 12:29:44', 81, 5, 5231215),
(61, 'V', 'Vente', '2020-06-14 22:34:23', '2022-02-22 00:49:57', 71, 68, 43247623),
(62, 'a', 'Location', '2021-09-22 07:48:22', '2020-09-05 04:58:44', 63, 14, 90046556),
(63, 'a', 'Vente', '2021-07-28 17:58:25', '2021-04-22 13:11:22', 5, 17, 27150990),
(64, 'V', 'Vente', '2022-02-18 04:14:58', '2021-07-20 07:19:48', 99, 79, 41548948),
(65, 'l', 'Vente', '2021-10-21 06:03:42', '2020-12-21 03:15:18', 42, 79, 42086044),
(66, 'a', 'Location', '2021-06-09 16:59:58', '2022-06-04 13:39:54', 69, 81, 13484693),
(67, 'l', 'Vente', '2021-11-18 20:20:57', '2021-02-19 15:20:24', 10, 24, 27795153),
(68, 'a', 'Location', '2020-08-11 08:10:51', '2021-06-17 00:04:26', 24, 90, 25239045),
(69, 'V', 'Vente', '2020-08-03 06:26:58', '2021-05-27 09:56:59', 60, 20, 34807919),
(70, 'l', 'Location', '2021-04-17 22:34:32', '2020-06-24 11:38:28', 13, 9, 82812698),
(71, 'V', 'Location', '2020-06-29 16:08:22', '2020-07-17 02:09:07', 1, 44, 42478201),
(72, 'V', 'Vente', '2022-03-01 04:25:50', '2021-02-04 18:05:08', 48, 42, 15359960),
(73, 'a', 'Location', '2022-06-05 07:06:17', '2022-02-19 18:57:03', 61, 52, 31992822),
(74, 'a', 'Location', '2020-06-25 22:20:27', '2020-09-07 19:19:42', 24, 69, 69438980),
(75, 'l', 'Location', '2022-01-18 03:28:11', '2020-12-06 17:55:52', 75, 93, 22104314),
(76, 'l', 'Vente', '2022-05-20 16:01:35', '2021-08-18 10:23:58', 89, 51, 3821587),
(77, 'a', 'Location', '2021-10-14 18:41:47', '2022-06-04 20:36:50', 43, 98, 28470345),
(78, 'a', 'Vente', '2021-05-28 07:50:19', '2021-06-18 09:27:56', 33, 40, 52019996),
(79, 'l', 'Vente', '2022-01-15 03:36:01', '2022-05-19 22:19:15', 56, 64, 19285996),
(80, 'V', 'Vente', '2021-04-06 02:27:17', '2021-05-21 17:29:40', 55, 15, 14598780),
(81, 'V', 'Location', '2021-04-11 16:30:54', '2022-03-12 08:51:23', 70, 18, 42488100),
(82, 'V', 'Vente', '2021-07-23 15:06:28', '2021-07-27 22:52:39', 84, 15, 50587752),
(83, 'l', 'Vente', '2020-12-15 04:55:36', '2020-07-30 13:39:04', 2, 3, 25598141),
(84, 'V', 'Vente', '2022-01-14 18:42:03', '2022-02-03 17:02:37', 67, 90, 24520711),
(85, 'V', 'Location', '2022-06-03 16:51:55', '2021-09-16 09:32:33', 59, 62, 83461675),
(86, 'V', 'Location', '2022-01-08 23:40:32', '2021-10-12 01:10:19', 63, 28, 41994042),
(87, 'l', 'Location', '2022-01-15 07:39:44', '2021-02-24 00:58:15', 21, 59, 42519954),
(88, 'a', 'Vente', '2020-11-18 22:26:26', '2020-09-08 14:23:29', 18, 47, 76112860),
(89, 'V', 'Location', '2021-02-05 07:21:54', '2021-08-12 20:29:26', 64, 100, 96277495),
(90, 'l', 'Vente', '2021-10-08 22:06:12', '2020-09-14 20:11:40', 19, 77, 81935658),
(91, 'a', 'Location', '2021-06-15 18:56:29', '2020-08-01 11:28:01', 77, 89, 15760919),
(92, 'V', 'Vente', '2021-08-24 15:55:42', '2021-11-21 13:52:10', 45, 4, 88572855),
(93, 'V', 'Vente', '2021-11-13 05:38:42', '2022-02-17 16:44:32', 71, 22, 64964339),
(94, 'l', 'Location', '2021-07-28 03:57:46', '2021-11-22 02:09:33', 91, 6, 27487634),
(95, 'l', 'Location', '2021-11-11 09:22:48', '2021-07-31 09:28:16', 37, 24, 27531046),
(96, 'V', 'Location', '2021-05-25 17:59:38', '2021-11-06 15:31:21', 47, 86, 83765517),
(97, 'V', 'Vente', '2020-11-13 23:54:41', '2020-09-28 14:15:19', 46, 87, 53338810),
(98, 'a', 'Location', '2022-02-22 19:24:52', '2021-03-07 03:22:07', 82, 75, 25754022),
(99, 'a', 'Vente', '2022-05-05 23:14:37', '2022-02-03 12:26:20', 18, 49, 61398713),
(100, 'l', 'Location', '2021-06-08 00:37:00', '2022-05-29 16:59:09', 65, 52, 97594849);

-- --------------------------------------------------------

--
-- Structure de la table `waz_commune`
--

DROP TABLE IF EXISTS `waz_commune`;
CREATE TABLE IF NOT EXISTS `waz_commune` (
  `commune_id` int NOT NULL AUTO_INCREMENT,
  `commune_nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commune_cp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`commune_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_commune`
--

INSERT INTO `waz_commune` (`commune_id`, `commune_nom`, `commune_cp`) VALUES
(1, 'Melipeuco', '34667'),
(2, 'Hattersheim am Main', '46608'),
(3, 'Harnoncourt', '25031'),
(4, 'Saintes', '92049'),
(5, 'Hindeloopen', '18308'),
(6, 'Görlitz', '35939'),
(7, 'Aieta', '74039'),
(8, 'Ceranesi', '72602'),
(9, 'Chieti', '23718'),
(10, 'Invercargill', '45742'),
(11, 'Nancy', '51675'),
(12, 'Swan Hill', '81131'),
(13, 'Merthyr Tydfil', '60808'),
(14, 'Kacchi', '19953'),
(15, 'Montgomery', '56622'),
(16, 'Falerone', '69345'),
(17, 'Bella', '09139'),
(18, 'Sierning', '93832'),
(19, 'Stroud', '46348'),
(20, 'Saint-Servais', '12602'),
(21, 'Braunschweig', '64957'),
(22, 'Travo', '08274'),
(23, 'Fusagasugá', '60956'),
(24, 'Spiere-Helkijn', '60871'),
(25, 'Acquedolci', '22494'),
(26, 'Pollena Trocchia', '07761'),
(27, 'Ipswich', '05777'),
(28, 'Tejar', '26512'),
(29, 'Ham-sur-Heure-Nalinnes', '79158'),
(30, 'Pforzheim', '18565'),
(31, 'Lipetsk', '81564'),
(32, 'Surabaya', '54123'),
(33, 'Berloz', '69859'),
(34, 'Oordegem', '43288'),
(35, 'Poznań', '56720'),
(36, 'Fulda', '30834'),
(37, 'Momignies', '44163'),
(38, 'San Luis Potosí', '20383'),
(39, 'Halkirk', '27535'),
(40, 'Zavitinsk', '45100'),
(41, 'Baasrode', '86362'),
(42, 'Notre-Dame-de-la-Salette', '40304'),
(43, 'Blumenau', '50524'),
(44, 'Neu-Isenburg', '73892'),
(45, 'Sandy', '43471'),
(46, 'Caxias do Sul', '74815'),
(47, 'Vladimir', '38861'),
(48, 'Banbury', '47696'),
(49, 'Coquimbo', '78488'),
(50, 'Honolulu', '38466'),
(51, 'Holywell', '81469'),
(52, 'Wadgassen', '17377'),
(53, 'Lauro de Freitas', '45966'),
(54, 'Huesca', '78852'),
(55, 'Strijtem', '08680'),
(56, 'Saint-Nicolas', '98909'),
(57, 'Schriek', '66107'),
(58, 'West Vancouver', '82002'),
(59, 'Solnechnogorsk', '43389'),
(60, 'Wolverhampton', '52369'),
(61, 'Moose Jaw', '78278'),
(62, 'Dampicourt', '53495'),
(63, 'Kasli', '71150'),
(64, 'Jauche', '30842'),
(65, 'Casperia', '57976'),
(66, 'Cawdor', '79543'),
(67, 'High Level', '65695'),
(68, 'Ottignies-Louvain-la-Neuve', '61316'),
(69, 'Neu-Isenburg', '01889'),
(70, 'Valparaíso', '27029'),
(71, 'Bruckneudorf', '29290'),
(72, 'Builth Wells', '49236'),
(73, 'Port Lincoln', '22934'),
(74, 'Torghar', '30521'),
(75, 'Berlare', '65598'),
(76, 'Valenciennes', '34292'),
(77, 'Pyeongtaek', '50054'),
(78, 'Zoetermeer', '84854'),
(79, 'Warrnambool', '20546'),
(80, 'Lac La Biche County', '78926'),
(81, 'Avignon', '77946'),
(82, 'Maple Ridge', '30723'),
(83, 'Lewiston', '09991'),
(84, 'Mount Pearl', '19857'),
(85, 'Alençon', '15574'),
(86, 'Shreveport', '97439'),
(87, 'Bahawalnagar', '79693'),
(88, 'Laakdal', '12217'),
(89, 'Nizhny', '86728'),
(90, 'Chía', '64724'),
(91, 'Benestare', '28046'),
(92, 'Colonnella', '05577'),
(93, 'Weyburn', '03351'),
(94, 'Stratford', '81269'),
(95, 'Zevekote', '78353'),
(96, 'Juneau', '75887'),
(97, 'Huechuraba', '34274'),
(98, 'Redruth', '46790'),
(99, 'North Shore', '74165'),
(100, 'Eckernförde', '88543');

-- --------------------------------------------------------

--
-- Structure de la table `waz_location`
--

DROP TABLE IF EXISTS `waz_location`;
CREATE TABLE IF NOT EXISTS `waz_location` (
  `loc_id` int NOT NULL AUTO_INCREMENT,
  `loc_MeubleNon_Meuble` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `loc_date_debut` date NOT NULL,
  `loc_date_fin` date NOT NULL,
  `loc_agent_id` int NOT NULL,
  `loc_log_id` int NOT NULL,
  PRIMARY KEY (`loc_id`),
  KEY `loc_agent_id` (`loc_agent_id`),
  KEY `loc_log_id` (`loc_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_location`
--

INSERT INTO `waz_location` (`loc_id`, `loc_MeubleNon_Meuble`, `loc_date_debut`, `loc_date_fin`, `loc_agent_id`, `loc_log_id`) VALUES
(1, 'Non Meublé', '2022-05-26', '2021-04-04', 10, 100),
(2, 'Non Meublé', '2021-03-02', '2022-01-22', 81, 58),
(3, 'Non Meublé', '2020-10-17', '2021-05-07', 4, 52),
(4, 'Non Meublé', '2020-06-16', '2022-03-08', 72, 93),
(5, 'Non Meublé', '2020-06-16', '2020-06-18', 78, 47),
(6, 'Non Meublé', '2021-02-17', '2022-02-09', 70, 92),
(7, 'Non Meublé', '2021-02-15', '2021-07-16', 89, 31),
(8, 'Meublé', '2021-03-29', '2021-12-03', 3, 66),
(9, 'Non Meublé', '2021-05-26', '2021-11-30', 20, 85),
(10, 'Non Meublé', '2021-10-15', '2020-11-02', 43, 11),
(11, 'Non Meublé', '2020-12-08', '2022-04-24', 84, 72),
(12, 'Meublé', '2020-12-28', '2020-08-22', 16, 8),
(13, 'Non Meublé', '2021-06-15', '2021-11-18', 100, 13),
(14, 'Non Meublé', '2022-03-08', '2021-09-04', 43, 60),
(15, 'Meublé', '2020-12-05', '2020-08-14', 13, 3),
(16, 'Meublé', '2022-03-31', '2021-05-28', 51, 77),
(17, 'Non Meublé', '2021-06-21', '2021-10-22', 56, 14),
(18, 'Non Meublé', '2020-10-28', '2020-06-25', 100, 1),
(19, 'Non Meublé', '2021-08-21', '2021-06-20', 56, 30),
(20, 'Meublé', '2021-04-16', '2021-09-27', 19, 82),
(21, 'Non Meublé', '2020-12-02', '2022-03-28', 63, 86),
(22, 'Meublé', '2022-03-14', '2020-12-27', 73, 42),
(23, 'Meublé', '2021-05-31', '2022-06-07', 53, 7),
(24, 'Meublé', '2020-11-04', '2020-08-26', 71, 1),
(25, 'Non Meublé', '2020-11-24', '2022-04-02', 4, 33),
(26, 'Meublé', '2021-06-09', '2020-09-27', 47, 91),
(27, 'Non Meublé', '2020-10-10', '2021-12-04', 40, 38),
(28, 'Meublé', '2020-07-24', '2020-07-16', 98, 49),
(29, 'Non Meublé', '2022-03-28', '2022-04-27', 6, 1),
(30, 'Non Meublé', '2022-01-26', '2020-12-23', 29, 39),
(31, 'Non Meublé', '2022-01-10', '2020-10-23', 97, 80),
(32, 'Non Meublé', '2022-05-29', '2021-06-17', 14, 98),
(33, 'Meublé', '2022-02-25', '2021-11-21', 31, 6),
(34, 'Meublé', '2022-02-07', '2022-02-11', 78, 56),
(35, 'Non Meublé', '2022-02-26', '2020-10-09', 6, 60),
(36, 'Non Meublé', '2021-05-02', '2021-07-27', 90, 41),
(37, 'Non Meublé', '2021-03-15', '2022-03-13', 82, 56),
(38, 'Meublé', '2022-02-15', '2020-11-29', 57, 47),
(39, 'Non Meublé', '2020-10-21', '2021-10-29', 79, 3),
(40, 'Non Meublé', '2020-10-19', '2020-06-16', 81, 76),
(41, 'Meublé', '2022-05-09', '2022-01-18', 49, 57),
(42, 'Meublé', '2021-06-01', '2020-12-24', 74, 26),
(43, 'Non Meublé', '2020-11-10', '2021-02-12', 45, 82),
(44, 'Meublé', '2021-02-17', '2022-03-20', 36, 90),
(45, 'Meublé', '2021-11-18', '2021-02-04', 76, 94),
(46, 'Non Meublé', '2022-03-19', '2020-10-31', 84, 93),
(47, 'Non Meublé', '2022-05-05', '2021-05-11', 21, 52),
(48, 'Non Meublé', '2021-12-12', '2022-03-13', 31, 4),
(49, 'Meublé', '2021-12-08', '2020-10-18', 69, 18),
(50, 'Non Meublé', '2020-10-04', '2022-05-31', 43, 38),
(51, 'Meublé', '2020-12-05', '2020-08-24', 68, 8),
(52, 'Meublé', '2021-08-06', '2021-04-27', 81, 56),
(53, 'Meublé', '2021-12-07', '2021-03-31', 24, 87),
(54, 'Non Meublé', '2021-12-14', '2020-10-17', 28, 23),
(55, 'Meublé', '2022-04-29', '2022-04-03', 49, 38),
(56, 'Non Meublé', '2022-02-23', '2022-01-28', 13, 67),
(57, 'Meublé', '2021-05-08', '2021-09-07', 84, 32),
(58, 'Meublé', '2020-06-23', '2020-10-28', 63, 33),
(59, 'Non Meublé', '2020-10-06', '2020-06-30', 61, 38),
(60, 'Non Meublé', '2021-09-09', '2021-07-23', 100, 77),
(61, 'Non Meublé', '2022-03-21', '2021-09-01', 26, 100),
(62, 'Non Meublé', '2021-01-23', '2022-05-19', 73, 79),
(63, 'Meublé', '2022-03-17', '2021-07-26', 25, 76),
(64, 'Meublé', '2021-12-05', '2020-08-10', 76, 5),
(65, 'Non Meublé', '2021-12-14', '2020-11-25', 84, 100),
(66, 'Meublé', '2022-05-19', '2021-03-31', 88, 50),
(67, 'Non Meublé', '2022-05-19', '2021-12-07', 40, 60),
(68, 'Meublé', '2021-07-29', '2021-11-19', 35, 1),
(69, 'Meublé', '2021-09-27', '2021-12-06', 95, 26),
(70, 'Non Meublé', '2020-10-24', '2021-05-08', 39, 5),
(71, 'Non Meublé', '2021-12-01', '2021-08-02', 83, 34),
(72, 'Non Meublé', '2021-04-27', '2020-10-31', 42, 22),
(73, 'Non Meublé', '2021-03-01', '2020-07-08', 12, 88),
(74, 'Meublé', '2021-01-14', '2021-12-08', 74, 93),
(75, 'Non Meublé', '2022-02-24', '2021-01-10', 46, 23),
(76, 'Meublé', '2020-10-16', '2020-06-11', 40, 78),
(77, 'Meublé', '2021-07-26', '2020-08-18', 3, 95),
(78, 'Non Meublé', '2020-06-22', '2021-12-13', 7, 73),
(79, 'Meublé', '2021-10-15', '2021-08-02', 36, 90),
(80, 'Non Meublé', '2021-06-04', '2022-02-12', 76, 43),
(81, 'Non Meublé', '2021-12-30', '2021-07-26', 10, 17),
(82, 'Meublé', '2021-03-27', '2022-06-08', 4, 8),
(83, 'Meublé', '2022-02-13', '2022-05-10', 53, 17),
(84, 'Meublé', '2021-06-04', '2021-10-29', 43, 78),
(85, 'Meublé', '2021-02-12', '2021-10-29', 83, 39),
(86, 'Meublé', '2022-04-04', '2020-09-03', 83, 16),
(87, 'Non Meublé', '2021-06-24', '2020-06-19', 94, 40),
(88, 'Meublé', '2020-10-17', '2022-04-11', 29, 3),
(89, 'Non Meublé', '2020-12-14', '2020-08-04', 55, 36),
(90, 'Meublé', '2021-03-22', '2021-03-06', 87, 61),
(91, 'Meublé', '2020-12-14', '2021-11-07', 41, 36),
(92, 'Meublé', '2022-05-25', '2020-08-31', 66, 20),
(93, 'Meublé', '2021-06-04', '2020-08-09', 12, 16),
(94, 'Meublé', '2021-03-15', '2022-05-04', 93, 31),
(95, 'Non Meublé', '2021-05-06', '2020-12-05', 62, 48),
(96, 'Meublé', '2021-08-17', '2022-04-24', 14, 12),
(97, 'Non Meublé', '2020-08-21', '2022-02-24', 55, 91),
(98, 'Meublé', '2021-04-27', '2021-09-24', 16, 11),
(99, 'Non Meublé', '2021-08-25', '2021-10-09', 8, 14),
(100, 'Non Meublé', '2022-01-18', '2021-10-04', 55, 89);

-- --------------------------------------------------------

--
-- Structure de la table `waz_logement`
--

DROP TABLE IF EXISTS `waz_logement`;
CREATE TABLE IF NOT EXISTS `waz_logement` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `log_type_de_bien` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `log_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `log_reference` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `log_pieces` mediumint DEFAULT NULL,
  `log_surf_hab` mediumint DEFAULT NULL,
  `log_surf_tot` mediumint DEFAULT NULL,
  `log_diagnostic` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `log_prix` decimal(10,2) DEFAULT NULL,
  `log_localisation` int DEFAULT NULL,
  `log_quartier_id` int DEFAULT NULL,
  `log_prop_id` int DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_logement`
--

INSERT INTO `waz_logement` (`log_id`, `log_type_de_bien`, `log_description`, `log_reference`, `log_pieces`, `log_surf_hab`, `log_surf_tot`, `log_diagnostic`, `log_prix`, `log_localisation`, `log_quartier_id`, `log_prop_id`) VALUES
(1, 'M', 'libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque', '29.875.586-6', 3, 69, 846, 'o', '495.00', 0, 44, 58),
(2, 'p', 'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec', '11.822.068-4', 6, 59, 107, 'o', '328.00', 0, 51, 100),
(3, 't', 'ac metus vitae velit egestas', '7.209.449-2', 6, 56, 110, 'v', '965.00', 0, 28, 51),
(4, 's', 'nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt', '6.832.273-1', 9, 51, 378, 'o', '554.00', 0, 80, 39),
(5, 'M', 'elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et', '34.658.637-0', 6, 12, 860, 'j', '906.00', 876, 67, 48),
(6, 'a', 'nascetur ridiculus mus. Aenean', '12.143.194-7', 9, 63, 540, 'o', '362.00', 635, 71, 46),
(7, 's', 'tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum', '45.633.038-K', 6, 47, 603, 'r', '425.00', 0, 100, 99),
(8, 'p', 'a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt', '25.930.156-4', 9, 100, 871, 'o', '248.00', 4267, 77, 57),
(9, 's', 'Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl.', '45.663.057-K', 1, 91, 929, 'j', '865.00', 759, 76, 71),
(10, 't', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '48.828.129-1', 1, 83, 453, 'j', '390.00', 0, 93, 70),
(11, 'a', 'ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet', '7.741.782-6', 4, 76, 98, 'o', '857.00', 0, 97, 51),
(12, 'p', 'elit,', '43.262.269-K', 1, 26, 274, 'v', '902.00', 734, 4, 82),
(13, 's', 'iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', '47.482.122-6', 6, 29, 753, 'v', '723.00', 0, 76, 60),
(14, 's', 'amet metus.', '32.352.622-2', 10, 82, 598, 'r', '182.00', 0, 89, 49),
(15, 'p', 'ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam', '41.382.857-0', 2, 63, 475, 'r', '120.00', 8961, 97, 94),
(16, 'M', 'velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc', '49.288.400-6', 3, 42, 302, 'o', '727.00', 0, 9, 13),
(17, 't', 'pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id', '38.972.908-6', 1, 43, 44, 'v', '30.00', 1036, 21, 78),
(18, 'p', 'placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad', '19.762.152-4', 6, 100, 82, 'o', '742.00', 627, 47, 47),
(19, 'p', 'egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum', '35.206.437-8', 8, 28, 757, 'r', '986.00', 455, 50, 38),
(20, 'M', 'eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis', '49.181.345-8', 7, 12, 120, 'o', '67.00', 0, 13, 82),
(21, 's', 'id, blandit at,', '20.027.935-2', 4, 25, 26, 'v', '910.00', 3859, 70, 40),
(22, 'a', 'libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi', '15.291.793-7', 9, 41, 864, 'j', '376.00', 0, 22, 67),
(23, 's', 'pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare', '49.918.496-4', 7, 61, 675, 'o', '319.00', 0, 64, 52),
(24, 't', 'Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis.', '13.381.991-6', 9, 64, 59, 'o', '689.00', 263, 4, 78),
(25, 't', 'interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi', '21.488.948-K', 10, 62, 89, 'v', '321.00', 0, 25, 94),
(26, 's', 'Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc', '34.889.620-2', 5, 17, 965, 'o', '122.00', 256, 39, 69),
(27, 't', 'Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus,', '20.599.034-8', 1, 78, 633, 'r', '388.00', 166, 7, 80),
(28, 'A', 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada', '47.191.572-6', 2, 55, 121, 'v', '41.00', 0, 53, 31),
(29, 't', 'Vivamus rhoncus. Donec est. Nunc', '10.576.724-2', 6, 63, 83, 'r', '608.00', 4178, 60, 32),
(30, 'a', 'turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a', '27.213.524-K', 1, 54, 126, 'v', '701.00', 646, 95, 14),
(31, 's', 'eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere', '32.816.349-7', 5, 22, 638, 'r', '191.00', 6834, 88, 90),
(32, 'a', 'sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam', '13.930.592-2', 2, 23, 647, 'o', '766.00', 0, 61, 18),
(33, 't', 'Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem', '33.387.585-3', 9, 32, 953, 'o', '333.00', 0, 38, 61),
(34, 's', 'magna. Phasellus dolor elit,', '35.060.473-1', 7, 78, 890, 'r', '318.00', 0, 53, 55),
(35, 'p', 'vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '34.622.759-1', 6, 9, 502, 'o', '182.00', 489, 15, 11),
(36, 'M', 'Ut sagittis lobortis mauris.', '14.806.751-1', 10, 3, 624, 'o', '981.00', 832, 61, 39),
(37, 'p', 'auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales', '10.596.591-5', 8, 51, 64, 'o', '149.00', 0, 32, 93),
(38, 'A', 'Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna', '30.089.926-9', 2, 47, 61, 'j', '638.00', 5018, 69, 47),
(39, 'M', 'magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer', '49.988.375-7', 7, 45, 244, 'j', '149.00', 5834, 56, 10),
(40, 'p', 'aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla.', '18.632.019-0', 9, 88, 159, 'j', '52.00', 876, 59, 49),
(41, 'a', 'ligula eu enim. Etiam', '40.255.008-2', 2, 54, 46, 'o', '813.00', 643, 25, 27),
(42, 'p', 'scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus', '37.595.917-8', 7, 97, 571, 'v', '682.00', 0, 13, 9),
(43, 'M', 'adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor', '5.983.890-3', 2, 58, 849, 'j', '547.00', 666, 82, 14),
(44, 't', 'Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam', '22.469.277-3', 2, 93, 453, 'v', '845.00', 0, 72, 36),
(45, 'p', 'euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim.', '10.262.084-4', 2, 21, 732, 'o', '497.00', 9100, 97, 51),
(46, 'A', 'magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec', '25.044.302-1', 9, 68, 346, 'j', '468.00', 0, 8, 21),
(47, 'p', 'ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus.', '11.967.567-7', 9, 30, 99, 'r', '0.00', 0, 70, 88),
(48, 'a', 'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum', '37.850.614-K', 1, 55, 842, 'v', '395.00', 0, 41, 91),
(49, 's', 'amet diam', '43.251.578-8', 7, 42, 405, 'r', '26.00', 0, 5, 36),
(50, 'M', 'pellentesque massa lobortis', '36.777.923-3', 8, 69, 244, 'v', '913.00', 1063, 55, 26),
(51, 'p', 'a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend', '47.165.062-5', 10, 82, 921, 'v', '938.00', 672, 17, 92),
(52, 'A', 'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus', '13.740.118-5', 8, 56, 433, 'r', '797.00', 0, 87, 91),
(53, 'a', 'malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna', '16.826.629-4', 6, 47, 778, 'o', '785.00', 0, 47, 25),
(54, 'a', 'purus mauris a nunc.', '50.236.320-4', 9, 82, 332, 'v', '329.00', 0, 62, 72),
(55, 'A', 'nec tellus. Nunc lectus pede, ultrices a, auctor', '30.654.972-3', 8, 2, 89, 'r', '483.00', 8588, 14, 50),
(56, 't', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae', '35.248.133-5', 1, 21, 462, 'v', '299.00', 233, 57, 39),
(57, 'A', 'Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit', '49.188.118-6', 10, 5, 370, 'j', '499.00', 0, 62, 66),
(58, 'A', 'magna tellus faucibus leo, in lobortis tellus justo sit amet', '6.991.680-5', 1, 23, 485, 'j', '617.00', 7906, 64, 33),
(59, 'A', 'volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero', '34.629.165-6', 4, 20, 179, 'o', '502.00', 483, 26, 71),
(60, 's', 'Nunc sollicitudin commodo ipsum. Suspendisse non', '29.542.599-7', 9, 75, 537, 'r', '452.00', 0, 62, 28),
(61, 's', 'imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus', '16.347.074-8', 7, 16, 225, 'v', '211.00', 7437, 17, 52),
(62, 'a', 'a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,', '46.448.670-4', 3, 67, 759, 'o', '747.00', 1710, 85, 76),
(63, 'M', 'natoque penatibus et magnis', '17.046.248-3', 6, 95, 334, 'o', '656.00', 4519, 5, 45),
(64, 't', 'vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend', '15.111.608-6', 2, 73, 714, 'v', '528.00', 6122, 31, 76),
(65, 't', 'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem,', '27.563.132-9', 5, 91, 384, 'j', '809.00', 154, 70, 20),
(66, 'p', 'adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida', '5.750.055-7', 5, 64, 944, 'r', '57.00', 490, 30, 23),
(67, 'a', 'ultrices. Vivamus rhoncus. Donec est.', '30.349.462-6', 5, 28, 118, 'o', '774.00', 7642, 6, 34),
(68, 'p', 'dui, in sodales elit erat', '31.361.018-7', 5, 58, 966, 'v', '695.00', 508, 67, 59),
(69, 't', 'risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus', '39.695.098-7', 8, 30, 372, 'j', '859.00', 0, 44, 31),
(70, 'A', 'ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare', '28.387.453-2', 5, 65, 905, 'r', '739.00', 0, 66, 95),
(71, 'p', 'ut dolor dapibus gravida. Aliquam tincidunt, nunc', '44.783.659-9', 6, 81, 500, 'j', '431.00', 0, 61, 86),
(72, 'p', 'nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie.', '28.926.296-2', 9, 6, 239, 'r', '710.00', 807, 13, 28),
(73, 't', 'gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed', '5.382.451-K', 6, 96, 499, 'r', '408.00', 0, 56, 64),
(74, 't', 'vestibulum', '10.251.713-K', 5, 81, 927, 'v', '403.00', 0, 69, 29),
(75, 's', 'Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna', '7.063.827-4', 3, 59, 578, 'o', '915.00', 0, 49, 36),
(76, 'A', 'tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam', '34.617.475-7', 6, 8, 59, 'v', '456.00', 620, 42, 56),
(77, 't', 'dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla.', '38.658.224-6', 2, 73, 483, 'j', '490.00', 0, 75, 41),
(78, 'a', 'morbi tristique senectus et netus et malesuada fames ac', '27.066.063-0', 5, 45, 520, 'r', '994.00', 0, 77, 82),
(79, 't', 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui.', '26.966.641-2', 3, 37, 436, 'o', '778.00', 730, 66, 80),
(80, 's', 'Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede.', '42.401.390-0', 10, 45, 641, 'r', '175.00', 999, 54, 88),
(81, 'M', 'quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus', '36.510.026-8', 1, 69, 389, 'j', '156.00', 3136, 63, 8),
(82, 'A', 'iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', '42.132.874-9', 10, 10, 707, 'j', '240.00', 258, 2, 24),
(83, 'p', 'pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim', '34.954.955-7', 7, 83, 536, 'o', '51.00', 414, 93, 35),
(84, 'a', 'Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna.', '22.224.538-9', 1, 6, 591, 'v', '853.00', 4956, 15, 49),
(85, 's', 'tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper', '50.178.377-3', 10, 73, 459, 'v', '472.00', 3267, 59, 48),
(86, 'M', 'sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices', '13.363.872-5', 3, 99, 325, 'r', '207.00', 0, 83, 93),
(87, 'A', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus.', '44.879.620-5', 9, 43, 701, 'j', '884.00', 0, 44, 79),
(88, 'a', 'eleifend vitae, erat. Vivamus', '11.824.638-1', 9, 6, 378, 'v', '950.00', 0, 80, 99),
(89, 't', 'nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim.', '7.154.275-0', 3, 25, 258, 'j', '801.00', 822, 52, 19),
(90, 'p', 'aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend,', '48.373.375-5', 4, 3, 153, 'r', '852.00', 996, 37, 96),
(91, 'A', 'nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a,', '10.888.047-3', 7, 92, 43, 'r', '806.00', 743, 76, 59),
(92, 'a', 'libero mauris, aliquam eu, accumsan sed, facilisis', '37.969.855-7', 4, 24, 368, 'o', '777.00', 625, 5, 49),
(93, 'A', 'erat nonummy ultricies ornare, elit elit fermentum', '17.679.586-7', 2, 56, 489, 'j', '593.00', 504, 81, 27),
(94, 't', 'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce', '26.675.659-3', 6, 28, 288, 'r', '285.00', 0, 56, 33),
(95, 'M', 'Praesent eu dui. Cum sociis natoque penatibus et magnis', '42.947.569-4', 2, 18, 939, 'o', '999.00', 290, 45, 22),
(96, 'M', 'conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt', '38.617.718-K', 4, 43, 645, 'r', '293.00', 0, 44, 84),
(97, 's', 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus', '17.948.358-0', 4, 55, 258, 'j', '993.00', 640, 43, 29),
(98, 't', 'Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.', '33.436.929-3', 8, 44, 612, 'r', '123.00', 864, 96, 44),
(99, 'a', 'ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac', '41.394.224-1', 10, 28, 437, 'r', '135.00', 7916, 99, 76),
(100, 'a', 'ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida', '36.757.284-1', 4, 59, 170, 'o', '397.00', 0, 92, 91);

-- --------------------------------------------------------

--
-- Structure de la table `waz_options`
--

DROP TABLE IF EXISTS `waz_options`;
CREATE TABLE IF NOT EXISTS `waz_options` (
  `opt_id` int NOT NULL AUTO_INCREMENT,
  `opt_libelle` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`opt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_options`
--

INSERT INTO `waz_options` (`opt_id`, `opt_libelle`) VALUES
(1, 'aucun(e)'),
(2, 'jardin'),
(3, 'garage'),
(4, 'combles aménageables'),
(5, 'piscine'),
(6, 'balcon'),
(7, 'terrasse'),
(8, 'parking privé'),
(9, 'cours'),
(10, 'hammam');

-- --------------------------------------------------------

--
-- Structure de la table `waz_photos`
--

DROP TABLE IF EXISTS `waz_photos`;
CREATE TABLE IF NOT EXISTS `waz_photos` (
  `photo_id` int NOT NULL AUTO_INCREMENT,
  `photo_libelle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `photo_log_id` int NOT NULL,
  PRIMARY KEY (`photo_id`),
  KEY `photo_log_id` (`photo_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_photos`
--

INSERT INTO `waz_photos` (`photo_id`, `photo_libelle`, `photo_log_id`) VALUES
(1, '1-1.jpg', 76),
(2, 'ofidegdrkzcg.jpg', 18),
(3, 'edpqsfjsalxr.jpg', 39),
(4, 'idtowqyxygar.jpg', 32),
(5, 'nglafmpbjvzc.jpg', 32),
(6, 'yvmcmkvntkkj.jpg', 67),
(7, 'zkgfzoxlzyja.jpg', 73),
(8, 'rkrsqkajgaxq.jpg', 70),
(9, 'pkxucnllbsxj.jpg', 2),
(10, 'ijnlilwvkjbg.jpg', 50),
(11, 'dmcsgqfemyrs.jpg', 35),
(12, 'ydokxcccksfx.jpg', 49),
(13, 'mwrwcadqixxi.jpg', 82),
(14, 'ncmbcgrfxdor.jpg', 44),
(15, 'sulimqxwvano.jpg', 28),
(16, 'xeppyuuqrdtu.jpg', 28),
(17, 'lcrhjijdridv.jpg', 35),
(18, 'ewlykgwsvsuw.jpg', 65),
(19, 'vlpehoxmlbxf.jpg', 67),
(20, 'sdxsfjovtfpr.jpg', 92),
(21, 'pjitcsdbsfpe.jpg', 51),
(22, 'hntdnswdtrpt.jpg', 55),
(23, 'rbcdthaqyvvh.jpg', 43),
(24, 'bkxrippjcstv.jpg', 15),
(25, 'xhrvguabdopo.jpg', 52),
(26, 'ghxziugnjxug.jpg', 14),
(27, 'yfriqgtoigzx.jpg', 87),
(28, 'syxycohxaprh.jpg', 44),
(29, 'gtgtcatygjnn.jpg', 99),
(30, 'qvkkhxnlyhkv.jpg', 68),
(31, 'pzzerhhwggzb.jpg', 54),
(32, 'vbdjuvkkjagb.jpg', 79),
(33, 'hsqvoqyxrckb.jpg', 80),
(34, 'oolmuutduare.jpg', 28),
(35, 'oquzebertztt.jpg', 7),
(36, 'vxelsgkypiex.jpg', 76),
(37, 'itrxqzoetzpf.jpg', 57),
(38, 'nfbheovkacwj.jpg', 93),
(39, 'wioxxtjlgwoz.jpg', 97),
(40, 'amisypuxkoig.jpg', 96),
(41, 'azbdjfgktvww.jpg', 25),
(42, 'toaogozeykoo.jpg', 85),
(43, 'oxoltfdawwlo.jpg', 43),
(44, 'vheagkztuibe.jpg', 57),
(45, 'vpwhibyoswwu.jpg', 33),
(46, 'wnulffhtxhcw.jpg', 50),
(47, 'yzqrrhmswrkr.jpg', 22),
(48, 'awwsbbjdopga.jpg', 42),
(49, 'pzcilmkbqpwk.jpg', 22),
(50, 'fqbabripbjrq.jpg', 95),
(51, 'yhsykohpkrox.jpg', 63),
(52, 'uorkyawjszhd.jpg', 49),
(53, 'jbwfsikgqego.jpg', 43),
(54, 'bddtpcxttdfi.jpg', 38),
(55, 'rgskiyuwvuxu.jpg', 75),
(56, 'vayxazhrqwcl.jpg', 67),
(57, 'jedbinhprkdc.jpg', 90),
(58, 'irbjfkssqcvn.jpg', 73),
(59, 'vmcuqvyibqah.jpg', 9),
(60, 'hrhhicmmxyco.jpg', 55),
(61, 'sjcwfnpmzbnm.jpg', 20),
(62, 'eocwtbyzfmnn.jpg', 23),
(63, 'nhhjgjhbtlfe.jpg', 28),
(64, 'koqmletedhpx.jpg', 10),
(65, 'aexbviftszfs.jpg', 94),
(66, 'ixwraebqsjfl.jpg', 70),
(67, 'dsiqzqljhlyh.jpg', 81),
(68, 'plksxyhnzcpf.jpg', 11),
(69, 'hivwiuleoczl.jpg', 17),
(70, 'owhxfoayhrng.jpg', 97),
(71, 'iksnuoifonxz.jpg', 83),
(72, 'krhwxuejrwih.jpg', 93),
(73, 'foveoeasoqtz.jpg', 93),
(74, 'bxljssvttbhh.jpg', 19),
(75, 'dovocjcdespl.jpg', 96),
(76, 'nslstqcaynhh.jpg', 1),
(77, 'pyhdotpclwrv.jpg', 58),
(78, 'zfqzxdhfpmvk.jpg', 64),
(79, 'lowbttnabghi.jpg', 55),
(80, 'xxockvbcgsfx.jpg', 63),
(81, 'puzkapiixrkp.jpg', 9),
(82, 'zgggzslinipm.jpg', 52),
(83, 'kinafyqgcdwg.jpg', 47),
(84, 'sxgiruwhiipq.jpg', 39),
(85, 'otiqpjyqevwk.jpg', 89),
(86, 'qmtfgnhucfin.jpg', 100),
(87, 'zjhmsrgldmfb.jpg', 81),
(88, 'dargliuzajsg.jpg', 36),
(89, 'aqalvnjhfmtu.jpg', 81),
(90, 'knxjhskzkxeb.jpg', 68),
(91, 'dzdgtxwgoetq.jpg', 33),
(92, 'kxbodvgfpwvk.jpg', 97),
(93, 'yerxvwsnflyc.jpg', 39),
(94, 'xebzgdgrlabr.jpg', 40),
(95, 'ospdwbgjllvz.jpg', 52),
(96, 'ettuwikdtoeo.jpg', 65),
(97, 'dakoivrdrcfm.jpg', 77),
(98, 'wduykwihgjop.jpg', 21),
(99, 'qxspupnhnwva.jpg', 39),
(100, 'zuvadzqxdrai.jpg', 83);

-- --------------------------------------------------------

--
-- Structure de la table `waz_prospects`
--

DROP TABLE IF EXISTS `waz_prospects`;
CREATE TABLE IF NOT EXISTS `waz_prospects` (
  `prop_id` int NOT NULL AUTO_INCREMENT,
  `prop_nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_adresse_actuelle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_tel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_date_naissance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_budjet_minim` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_budjet_maxi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_salaire` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prop_avisimpots` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `prop_bulletins_salaire1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `prop_bulletins_salaire2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `prop_bulletins_salaire3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `prop_piece_identite` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `prop_situation_familiale` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `prop_garant` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prop_civilite` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`prop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_prospects`
--

INSERT INTO `waz_prospects` (`prop_id`, `prop_nom`, `prop_prenom`, `prop_adresse_actuelle`, `prop_tel`, `prop_email`, `prop_date_naissance`, `prop_budjet_minim`, `prop_budjet_maxi`, `prop_salaire`, `prop_avisimpots`, `prop_bulletins_salaire1`, `prop_bulletins_salaire2`, `prop_bulletins_salaire3`, `prop_piece_identite`, `prop_situation_familiale`, `prop_garant`, `prop_civilite`) VALUES
(2, 'Ortega', 'Elijah', '9587 Iaculis Ave', '181-4047', 'eu@accumsanconvallisante.net', '2021-07-15 17:02:12', '158,421€', '697,824€', '100,040€', 'ieuzwpf.pdf', 'fjjihnp.pdf', 'iwfwyje.pdf', 'xvlkcxq.pdf', 'irqnbnq.jpg', 'Marié(e)', 'Non', 'Mme'),
(3, 'Jensen', 'Kamal', '271-6909 Duis Chemin', '477-4640', 'Aliquam.gravida.mauris@ultricies.org', '2022-02-20 07:52:34', '74,468€', '377,412€', '21,258€', 'pqiqhbr.pdf', 'duqsimd.pdf', 'zbretvd.pdf', 'djfvfdp.pdf', 'ebyseaq.jpg', 'Celibataire', 'Non', 'Mme'),
(5, 'King', 'Emily', '152-2153 Aliquet Rue', '1-247-342-7124', 'penatibus.et.magnis@AeneanmassaInteger.com', '2020-10-06 07:45:01', '24,235€', '719,618€', '27,870€', 'uzewwwk.pdf', 'xyqprxk.pdf', 'ogltgca.pdf', 'unxchpc.pdf', 'letawqh.jpg', 'Celibataire', 'Oui', 'M.'),
(6, 'Gilliam', 'Ivor', '245 Bibendum Rd.', '1-588-959-5226', 'magna.tellus@etmagnisdis.ca', '2021-04-23 11:36:43', '15,779€', '694,241€', '183,225€', 'fxnarij.pdf', 'ysmttko.pdf', 'bhgtmun.pdf', 'wvlpjra.pdf', 'ypaiuqu.jpg', 'Celibataire', 'Non', 'Mme'),
(7, 'Blankenship', 'Marsden', 'Appartement 535-8639 Etiam Avenue', '901-5016', 'eu@semperpretium.net', '2020-12-08 07:43:47', '142,706€', '121,571€', '172,908€', 'nlyaryz.pdf', 'niedjwa.pdf', 'mcoendr.pdf', 'qgirhjk.pdf', 'ajyfuxa.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(8, 'Valencia', 'Aristotle', 'CP 323, 7947 Posuere, Route', '807-1211', 'magna.sed@auctor.com', '2021-03-24 08:31:12', '136,320€', '944,481€', '124,122€', 'iuaihrx.pdf', 'mbanwwo.pdf', 'gygfysp.pdf', 'dydenxd.pdf', 'ejgmahy.jpg', 'Marié(e)', 'Non', 'Mme'),
(9, 'Hoover', 'Forrest', 'CP 271, 4602 Ipsum Rd.', '130-5200', 'mus.Proin.vel@Ut.net', '2021-04-16 13:32:36', '43,438€', '099,767€', '69,897€', 'ludfbgy.pdf', 'vpfzfal.pdf', 'rwiqryl.pdf', 'aebnnez.pdf', 'icqdvej.jpg', 'Autre', 'Non', ''),
(10, 'Walton', 'Ronan', 'Appartement 677-6153 Nullam Ave', '379-6489', 'ornare@vitaealiquameros.net', '2021-10-21 03:18:17', '151,828€', '095,420€', '164,666€', 'yqfecaa.pdf', 'negvyre.pdf', 'zknhrbd.pdf', 'xqzcduf.pdf', 'qrcabng.jpg', 'Marié(e)', 'Oui', 'Mme'),
(11, 'Salas', 'Zahir', 'CP 244, 3813 Gravida. Rue', '774-4682', 'aliquet@aceleifendvitae.org', '2021-03-05 12:41:47', '9,744€', '425,795€', '2,801€', 'iaivvbh.pdf', 'opyemde.pdf', 'swajunt.pdf', 'hasjasn.pdf', 'vinjsmk.jpg', 'Celibataire', 'Oui', ''),
(12, 'Nolan', 'Fuller', 'CP 798, 2023 Magna Impasse', '954-9149', 'lorem.luctus.ut@laoreet.ca', '2021-12-08 18:15:20', '193,281€', '279,280€', '142,730€', 'brnqenj.pdf', 'wvnimkx.pdf', 'yrpwhnd.pdf', 'fxdsshv.pdf', 'nlmyciy.jpg', 'Autre', 'Non', 'Mlle'),
(13, 'Macias', 'George', 'Appartement 714-3979 A Rd.', '515-9306', 'dictum.ultricies.ligula@aliquamiaculislacus.edu', '2021-01-28 16:42:15', '113,354€', '751,793€', '123,386€', 'vcffbqi.pdf', 'cxahqvs.pdf', 'zskrurl.pdf', 'zrnkiti.pdf', 'zvgrjxr.jpg', 'Celibataire', 'Oui', 'Mme'),
(14, 'Terrell', 'Thaddeus', 'Appartement 321-3971 Ornare, Av.', '1-999-949-0524', 'Suspendisse.tristique.neque@luctusaliquetodio.ca', '2022-03-12 23:15:02', '36,810€', '353,374€', '142,307€', 'khmjjgd.pdf', 'fgnlzxg.pdf', 'rggldwx.pdf', 'sjxplis.pdf', 'cepxqxq.jpg', 'Celibataire', 'Oui', 'M.'),
(15, 'Ochoa', 'Fulton', '785-715 A Rd.', '1-144-288-0991', 'arcu.iaculis.enim@augueporttitor.net', '2020-06-16 11:30:48', '169,034€', '269,816€', '156,439€', 'dtqtrnc.pdf', 'kfdanrj.pdf', 'nwuvkvf.pdf', 'lhtyvhs.pdf', 'ssycolq.jpg', 'Autre', 'Non', 'Mme'),
(16, 'Cunningham', 'Jessica', 'Appartement 215-5555 Tellus, Rd.', '702-2468', 'placerat.Cras.dictum@Phasellus.com', '2021-10-13 00:58:27', '35,825€', '889,766€', '153,512€', 'sdhzsvz.pdf', 'mcwuxsc.pdf', 'qiagytc.pdf', 'hioaoxn.pdf', 'fgaqjgj.jpg', 'Autre', 'Non', 'Mme'),
(17, 'Paul', 'Cora', '225-6966 Tellus Route', '864-6133', 'Nunc.sed@nullaCraseu.co.uk', '2021-12-07 02:22:39', '154,957€', '261,327€', '55,726€', 'gdivpbj.pdf', 'eqbesii.pdf', 'zkltlvo.pdf', 'ezmfnjl.pdf', 'zaiyivm.jpg', 'Celibataire', 'Non', 'Mlle'),
(18, 'Stein', 'Daniel', 'CP 591, 7150 Lobortis Impasse', '1-736-389-5897', 'Fusce.aliquam.enim@cursuset.co.uk', '2020-08-23 21:12:04', '33,827€', '635,904€', '164,999€', 'axyuwea.pdf', 'crwnwvf.pdf', 'gqihtww.pdf', 'wunwsgp.pdf', 'puaaurf.jpg', 'Marié(e)', 'Non', ''),
(19, 'Baldwin', 'Nell', 'CP 470, 4564 Donec Chemin', '1-895-523-9232', 'mattis.velit@vitaenibhDonec.ca', '2021-07-23 03:47:07', '179,092€', '443,017€', '69,133€', 'ntmkbmb.pdf', 'sstthka.pdf', 'mongxcu.pdf', 'ielgdug.pdf', 'njjcdbo.jpg', 'Celibataire', 'Non', ''),
(20, 'Bates', 'Cassandra', '9526 In Ave', '1-563-145-1469', 'ultricies.adipiscing.enim@imperdietornare.ca', '2021-09-16 22:45:42', '122,640€', '595,572€', '60,678€', 'yekcngr.pdf', 'ujtjefk.pdf', 'gnfgbqf.pdf', 'ubikytg.pdf', 'rrarcvp.jpg', 'Celibataire', 'Non', 'Mme'),
(21, 'Nelson', 'Axel', '467-9836 Mi Rue', '1-368-811-6698', 'penatibus.et@adipiscing.org', '2020-10-20 01:43:08', '128,303€', '841,297€', '105,302€', 'pumpnya.pdf', 'xkusigm.pdf', 'qcwhyrv.pdf', 'iibwcel.pdf', 'wdvxmgj.jpg', 'Divorcé(e)', 'Oui', 'Mme'),
(22, 'Mann', 'Yolanda', 'Appartement 436-7398 Tellus Route', '1-173-710-7838', 'ut.pellentesque.eget@posuereenimnisl.ca', '2021-08-06 11:55:58', '111,604€', '037,415€', '37,379€', 'lplvahe.pdf', 'xhsicxl.pdf', 'afbiipo.pdf', 'mibridw.pdf', 'stdpwmj.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(23, 'Humphrey', 'Melodie', '7452 Metus. Chemin', '628-6988', 'Nunc@scelerisquelorem.ca', '2020-07-10 01:10:29', '105,572€', '379,112€', '3,195€', 'etidytx.pdf', 'djdxfbs.pdf', 'ffmutqt.pdf', 'jxbrgqy.pdf', 'vaijytj.jpg', 'Celibataire', 'Non', ''),
(24, 'Bean', 'Valentine', 'Appartement 427-2441 Et Rd.', '121-2448', 'libero.Integer@sitametmassa.co.uk', '2021-10-06 09:16:07', '174,512€', '013,159€', '18,480€', 'hwgpgsn.pdf', 'pxrstfg.pdf', 'yzxwzfb.pdf', 'fxycmsf.pdf', 'aavncgi.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(25, 'Kemp', 'Bruce', 'Appartement 103-5968 Laoreet Route', '1-278-297-2574', 'lorem@pharetrautpharetra.com', '2021-08-03 12:08:41', '27,984€', '873,180€', '139,331€', 'aazmqrk.pdf', 'spzuvkz.pdf', 'pncstea.pdf', 'hannhxw.pdf', 'whlvsbt.jpg', 'Divorcé(e)', 'Non', 'M.'),
(26, 'Price', 'Gavin', 'Appartement 886-7841 Quis Rd.', '1-725-225-4141', 'fermentum.vel.mauris@magna.org', '2021-10-01 18:49:10', '37,081€', '728,319€', '139,476€', 'dyyazxe.pdf', 'tzpwmek.pdf', 'tmdywxd.pdf', 'zrfxxgs.pdf', 'xfftyqe.jpg', 'Autre', 'Oui', 'Mme'),
(27, 'Davidson', 'Carly', 'Appartement 546-8069 Molestie Rue', '620-8293', 'elit@mollis.net', '2021-12-03 18:28:32', '175,082€', '640,890€', '79,452€', 'kolwesw.pdf', 'ybjnwxd.pdf', 'khhgfmx.pdf', 'qxtngjj.pdf', 'zomzseh.jpg', 'Celibataire', 'Oui', 'M.'),
(28, 'Terry', 'Callie', '8253 Sodales Av.', '1-440-330-9411', 'neque.In.ornare@mollis.co.uk', '2021-11-08 08:24:30', '173,208€', '914,745€', '15,383€', 'uipspna.pdf', 'wndshbx.pdf', 'iyhwlnr.pdf', 'ihhdcrm.pdf', 'speyqap.jpg', 'Divorcé(e)', 'Oui', ''),
(29, 'Tyson', 'Karen', 'CP 179, 8233 Quis Rue', '300-3879', 'at@sem.co.uk', '2022-02-17 10:38:26', '184,432€', '739,398€', '54,590€', 'rbzjzxl.pdf', 'fngxanj.pdf', 'fkfwykc.pdf', 'ubqyiwv.pdf', 'smmqply.jpg', 'Marié(e)', 'Oui', 'Mlle'),
(30, 'Justice', 'Xenos', '769-2560 Sodales Ave', '1-910-862-8628', 'semper@Integerinmagna.org', '2021-02-28 07:34:55', '58,576€', '295,304€', '193,623€', 'xqfxold.pdf', 'snptxzt.pdf', 'nzlwdpm.pdf', 'yhfmzhw.pdf', 'umqtezb.jpg', 'Autre', 'Non', ''),
(31, 'Hernandez', 'Serena', '207-5750 Id, Rd.', '1-374-827-6273', 'mi.Duis@pellentesquemassa.ca', '2021-06-10 01:07:32', '127,463€', '317,020€', '186,532€', 'pgwaqhb.pdf', 'eewnsoe.pdf', 'yegaloi.pdf', 'cuarvfe.pdf', 'nachakc.jpg', 'Autre', 'Oui', 'Mme'),
(32, 'Vang', 'Shea', '1362 Arcu. Ave', '1-231-411-9961', 'Sed.eu@Fusce.ca', '2022-01-22 14:31:18', '73,900€', '105,392€', '113,009€', 'tipkabx.pdf', 'kdeuqus.pdf', 'jfmswgp.pdf', 'whhoghr.pdf', 'bgvwxed.jpg', 'Celibataire', 'Oui', 'Mme'),
(33, 'Burton', 'Wylie', '800-9770 Feugiat Rue', '623-4592', 'arcu@natoque.org', '2020-08-07 11:08:32', '183,307€', '324,233€', '131,369€', 'hxconce.pdf', 'eopxuek.pdf', 'xsyrcio.pdf', 'olzjiae.pdf', 'qdcjlwz.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(34, 'Burris', 'Xerxes', 'CP 742, 3706 Ac Rue', '1-572-497-0763', 'facilisis.facilisis.magna@vitaesodalesnisi.ca', '2021-11-18 14:38:11', '155,199€', '809,449€', '134,215€', 'ssadgib.pdf', 'jptevfn.pdf', 'djgrfyt.pdf', 'dviyqke.pdf', 'dlmjmex.jpg', 'Celibataire', 'Oui', 'M.'),
(35, 'Houston', 'Leigh', '8061 Risus. Ave', '1-457-255-6411', 'ligula.Aenean@eu.edu', '2022-01-30 18:19:47', '156,586€', '589,665€', '177,975€', 'swvgyya.pdf', 'wzaubpd.pdf', 'oikuysr.pdf', 'benaoif.pdf', 'ubmhzia.jpg', 'Marié(e)', 'Oui', 'Mlle'),
(36, 'Gutierrez', 'Aristotle', 'CP 106, 8514 Pede. Route', '647-2160', 'enim.condimentum.eget@loremDonecelementum.edu', '2021-09-13 11:29:01', '194,724€', '660,642€', '62,412€', 'nwbnffa.pdf', 'tytgemh.pdf', 'rrdxyuh.pdf', 'gdcxctk.pdf', 'ilogzno.jpg', 'Divorcé(e)', 'Non', 'M.'),
(37, 'Watkins', 'Linus', 'Appartement 618-2512 Vel, Route', '1-556-541-9819', 'ullamcorper.Duis.at@euismodin.co.uk', '2021-12-29 08:09:13', '125,563€', '466,889€', '152,267€', 'uiuptgc.pdf', 'luibflg.pdf', 'jeyhizu.pdf', 'fbogfwr.pdf', 'nmfgywt.jpg', 'Divorcé(e)', 'Non', ''),
(38, 'Barrera', 'Dorothy', 'CP 985, 8678 Ultrices Chemin', '714-6662', 'ultricies@imperdiet.com', '2021-10-27 09:00:38', '182,857€', '242,970€', '198,640€', 'qkwtkoy.pdf', 'ddnvcsb.pdf', 'jzaobmq.pdf', 'nkrjitm.pdf', 'ayhfhav.jpg', 'Autre', 'Non', 'Mlle'),
(39, 'Welch', 'Chancellor', '925-9703 Luctus Av.', '1-667-184-9832', 'feugiat.placerat@posuere.org', '2021-03-24 06:00:59', '159,677€', '064,056€', '174,633€', 'yidqcpk.pdf', 'xeexazz.pdf', 'oonevle.pdf', 'moysggv.pdf', 'zpanbqn.jpg', 'Marié(e)', 'Oui', ''),
(40, 'Mclean', 'Quin', 'CP 155, 4044 Ipsum. Impasse', '631-3484', 'eu.erat.semper@semvitaealiquam.co.uk', '2020-12-08 00:29:14', '57,086€', '009,534€', '28,483€', 'rgptvgg.pdf', 'axibvkh.pdf', 'buffyji.pdf', 'tscqgmq.pdf', 'qjxiriw.jpg', 'Autre', 'Oui', 'Mme'),
(41, 'Oneill', 'Laith', '905-7879 Nunc, Ave', '734-2568', 'elementum@Namacnulla.com', '2020-07-23 11:59:24', '112,980€', '307,410€', '133,110€', 'cdiwpth.pdf', 'gqevsqm.pdf', 'ltcpznc.pdf', 'aldfrzi.pdf', 'eryyvrg.jpg', 'Divorcé(e)', 'Oui', 'Mme'),
(42, 'Rivera', 'Conan', '950-130 Dui. Route', '437-3060', 'nascetur.ridiculus.mus@Nullam.org', '2020-11-27 18:58:27', '95,057€', '191,821€', '143,470€', 'yhtnoxc.pdf', 'ezihngi.pdf', 'phdrvmd.pdf', 'ojbsizi.pdf', 'rngwbgg.jpg', 'Autre', 'Oui', 'Mme'),
(43, 'Oneal', 'Gannon', 'CP 978, 5134 Congue Impasse', '106-3775', 'neque.Nullam@massaMaurisvestibulum.co.uk', '2021-12-23 07:54:07', '131,430€', '746,102€', '163,674€', 'rdunhsj.pdf', 'vakpjqm.pdf', 'lpeajpi.pdf', 'czaikug.pdf', 'ajnlern.jpg', 'Marié(e)', 'Non', ''),
(44, 'Chandler', 'Josephine', '856-9130 Nullam Rue', '1-766-602-4967', 'diam.luctus@sedsem.edu', '2021-01-09 23:52:53', '89,946€', '438,440€', '102,600€', 'lasyisw.pdf', 'myuegyh.pdf', 'udhmblz.pdf', 'cpgkgtr.pdf', 'xsjausl.jpg', 'Divorcé(e)', 'Non', 'Mlle'),
(45, 'Lee', 'Marsden', 'Appartement 558-9627 Ridiculus Chemin', '588-4486', 'egestas.Sed.pharetra@Suspendisseac.edu', '2020-11-08 11:05:24', '194,159€', '786,600€', '148,772€', 'adhhecz.pdf', 'utpvhke.pdf', 'dfulywz.pdf', 'xzzukcc.pdf', 'fijfgtr.jpg', 'Divorcé(e)', 'Oui', 'M.'),
(46, 'Nieves', 'Deacon', '702-8070 Ac Rue', '439-4346', 'mattis@eget.co.uk', '2020-07-28 13:39:21', '128,443€', '918,448€', '159,173€', 'ujhdthy.pdf', 'lqfuwya.pdf', 'ekygxeg.pdf', 'akgahmf.pdf', 'kjfxkwz.jpg', 'Marié(e)', 'Oui', ''),
(47, 'Emerson', 'Ira', '8244 Nullam Avenue', '159-4555', 'bibendum.sed@malesuadaid.co.uk', '2020-11-01 03:28:35', '118,419€', '380,102€', '114,283€', 'irekmbc.pdf', 'zesxprc.pdf', 'bhscheg.pdf', 'ytfnxcp.pdf', 'jxgevol.jpg', 'Celibataire', 'Oui', 'Mme'),
(48, 'Morgan', 'Heather', '6099 Et Rue', '389-2567', 'et@bibendumDonecfelis.co.uk', '2021-10-17 02:41:08', '92,788€', '421,886€', '128,751€', 'dpzftks.pdf', 'uymtaze.pdf', 'xwcgjan.pdf', 'fjadzvt.pdf', 'knsdaif.jpg', 'Autre', 'Non', 'Mme'),
(49, 'Fuentes', 'Damon', '176 Laoreet Impasse', '881-6897', 'Donec.egestas@consectetuer.co.uk', '2021-07-23 02:50:17', '39,257€', '976,934€', '100,541€', 'kckdwcu.pdf', 'lfealgy.pdf', 'ooiymki.pdf', 'imedczr.pdf', 'lwldows.jpg', 'Autre', 'Oui', 'Mme'),
(50, 'Potts', 'Deirdre', '826-7916 Nunc Impasse', '571-4634', 'mauris.Morbi.non@Sed.com', '2020-10-28 08:32:01', '150,012€', '330,651€', '167,473€', 'tsvsdpp.pdf', 'kbiahal.pdf', 'ylbpwgt.pdf', 'fzqqggq.pdf', 'xuobyco.jpg', 'Divorcé(e)', 'Oui', 'M.'),
(51, 'Stephenson', 'Aimee', 'Appartement 137-2450 Quisque Route', '1-806-352-1379', 'facilisis.magna.tellus@duinec.co.uk', '2021-08-19 17:05:35', '171,778€', '490,821€', '147,062€', 'lfezdle.pdf', 'utskurj.pdf', 'ynmpcpz.pdf', 'gofcgqv.pdf', 'nhfpzjj.jpg', 'Autre', 'Non', 'Mme'),
(52, 'Reyes', 'Madaline', 'Appartement 334-1746 Ipsum Ave', '1-219-892-5508', 'varius.et.euismod@famesac.ca', '2021-12-02 10:40:07', '73,597€', '962,663€', '53,859€', 'ghjgili.pdf', 'uvztjdy.pdf', 'nutxrng.pdf', 'mycvgku.pdf', 'ajjxupt.jpg', 'Divorcé(e)', 'Non', ''),
(53, 'Horton', 'Olivia', '812-2256 Duis Ave', '1-262-564-7853', 'elit.pharetra@Etiambibendum.org', '2021-03-07 05:08:43', '131,228€', '797,336€', '145,501€', 'qucvxbg.pdf', 'cdratzf.pdf', 'nszfcpp.pdf', 'gszhwnr.pdf', 'uzcelkt.jpg', 'Autre', 'Oui', 'Mlle'),
(54, 'Conrad', 'Donovan', '125-8327 Nec Rd.', '841-7508', 'dolor.elit@ProinvelitSed.co.uk', '2022-01-20 19:24:15', '148,544€', '451,722€', '12,824€', 'diruuvp.pdf', 'ihdlrcj.pdf', 'poqbsou.pdf', 'zjwaqdu.pdf', 'pxnvmqr.jpg', 'Autre', 'Oui', 'Mme'),
(55, 'Delgado', 'Jasmine', '8551 Eu Impasse', '1-577-228-6493', 'tellus@commodotincidunt.org', '2021-01-02 02:07:06', '175,236€', '054,105€', '89,757€', 'szsmyqq.pdf', 'hekznip.pdf', 'rfuaxqb.pdf', 'rrebmuf.pdf', 'oynhikn.jpg', 'Autre', 'Oui', 'Mme'),
(56, 'Shaffer', 'Emerald', '9781 Mi Rd.', '1-393-174-6557', 'amet@ipsum.com', '2022-04-13 18:58:10', '28,051€', '882,151€', '86,987€', 'fstnhpp.pdf', 'svomair.pdf', 'rhwbhyv.pdf', 'xsbsccn.pdf', 'odczgie.jpg', 'Divorcé(e)', 'Oui', ''),
(57, 'Buckner', 'Madeline', 'Appartement 358-5004 A Chemin', '788-1249', 'in@aliquam.com', '2022-04-29 23:55:08', '101,110€', '144,776€', '19,832€', 'elwekzn.pdf', 'wevtxsj.pdf', 'ygtyrsa.pdf', 'xkorejy.pdf', 'vooscnx.jpg', 'Divorcé(e)', 'Non', ''),
(58, 'Mckinney', 'Henry', 'CP 151, 9277 Id, Chemin', '526-5241', 'non@Sednullaante.org', '2021-04-22 03:24:45', '142,217€', '462,832€', '95,200€', 'vliqlcd.pdf', 'vzgqhml.pdf', 'dtyacvs.pdf', 'sqptrnz.pdf', 'dupayxt.jpg', 'Divorcé(e)', 'Oui', 'Mme'),
(59, 'Tyler', 'Karina', 'CP 991, 4559 Aliquam Av.', '129-8236', 'fringilla@estacmattis.net', '2022-04-09 05:55:36', '60,365€', '643,142€', '169,381€', 'akedazi.pdf', 'kopbtps.pdf', 'gfhekaf.pdf', 'jmwcqxt.pdf', 'gvuzmsh.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(60, 'Herman', 'Dai', 'Appartement 622-5955 Euismod Rue', '767-1256', 'Fusce@liberoInteger.ca', '2020-09-08 21:16:51', '168,517€', '925,164€', '1,668€', 'wnpnfzt.pdf', 'wffrvrg.pdf', 'bukmhpj.pdf', 'bidsavn.pdf', 'ihvdaha.jpg', 'Autre', 'Oui', 'M.'),
(61, 'Gallagher', 'Aurelia', 'Appartement 133-5933 Pellentesque Ave', '1-917-399-2390', 'Sed.nec.metus@faucibus.edu', '2022-03-09 12:24:13', '92,616€', '080,720€', '108,235€', 'vxpholl.pdf', 'mxjaxco.pdf', 'hlccjwp.pdf', 'uuwzmvd.pdf', 'kqbmvhh.jpg', 'Autre', 'Non', 'Mlle'),
(62, 'Hayden', 'Nicholas', 'CP 984, 8661 Curabitur Route', '844-8903', 'tempor@scelerisquemollis.net', '2021-08-20 15:13:09', '74,457€', '478,174€', '94,960€', 'tbcsttf.pdf', 'sexljki.pdf', 'ochhama.pdf', 'mlcpxnq.pdf', 'ubuycrc.jpg', 'Marié(e)', 'Non', 'M.'),
(63, 'Kirk', 'Geoffrey', '420-9342 Mus. Rd.', '716-2531', 'diam.Duis@ridiculus.com', '2020-12-16 01:23:56', '174,723€', '621,189€', '177,122€', 'xiizsud.pdf', 'cwsllsh.pdf', 'jsrsdhw.pdf', 'ilpzszt.pdf', 'viopybr.jpg', 'Marié(e)', 'Non', 'Mme'),
(64, 'Riley', 'Keely', 'CP 692, 2487 Taciti Impasse', '506-1706', 'tellus.imperdiet@eleifendegestasSed.co.uk', '2021-07-22 19:01:05', '16,271€', '908,354€', '6,141€', 'wyjbwpa.pdf', 'atqxdep.pdf', 'rcrhauo.pdf', 'pyorjff.pdf', 'rlwjxin.jpg', 'Marié(e)', 'Oui', 'Mme'),
(65, 'Wood', 'Edan', 'CP 771, 9851 Eget Rd.', '1-974-338-0379', 'tortor.dictum.eu@at.org', '2022-03-09 20:35:54', '3,620€', '761,241€', '73,764€', 'lksdlkw.pdf', 'cphjvlu.pdf', 'fudqlkv.pdf', 'qskyadj.pdf', 'fzvsbnh.jpg', 'Autre', 'Oui', ''),
(66, 'Horne', 'Clio', '3700 Id Chemin', '1-626-850-9249', 'volutpat.Nulla@leo.co.uk', '2021-12-07 01:08:47', '112,193€', '439,912€', '80,895€', 'ksnwpkc.pdf', 'mcteeoi.pdf', 'ymjhwlv.pdf', 'kbqxefh.pdf', 'kmktwcb.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(67, 'Romero', 'Wylie', 'Appartement 780-8395 Integer Ave', '1-503-455-5125', 'sed.dolor@diamProindolor.com', '2022-04-30 11:08:42', '152,202€', '509,370€', '15,687€', 'gwxksuj.pdf', 'wxqsqfb.pdf', 'fljzque.pdf', 'uwhgixj.pdf', 'kprvkai.jpg', 'Divorcé(e)', 'Oui', 'Mme'),
(68, 'Morris', 'Luke', '5617 Nunc, Rue', '1-955-935-5386', 'ac.libero.nec@etultrices.net', '2021-02-27 00:39:55', '6,056€', '606,036€', '48,426€', 'celzctm.pdf', 'agbbfww.pdf', 'kzqksdf.pdf', 'wwenntd.pdf', 'kpnajoa.jpg', 'Celibataire', 'Non', 'M.'),
(69, 'Hinton', 'Jane', '9567 Lorem, Avenue', '292-6278', 'eu.dui@a.com', '2021-02-04 09:33:11', '7,528€', '902,541€', '76,816€', 'yokmbac.pdf', 'zwlcmqx.pdf', 'zazgaxo.pdf', 'enbxbbo.pdf', 'xgvusmj.jpg', 'Celibataire', 'Oui', 'Mlle'),
(70, 'Fowler', 'Barclay', 'Appartement 647-7393 Enim. Ave', '828-9872', 'et@commodohendreritDonec.co.uk', '2021-03-25 13:33:02', '142,958€', '392,395€', '118,062€', 'ieuqbcq.pdf', 'ojlozsf.pdf', 'cjmpafu.pdf', 'dhpussn.pdf', 'yxoxcmr.jpg', 'Divorcé(e)', 'Oui', 'Mme'),
(71, 'Gates', 'Pandora', 'Appartement 923-927 Lacus. Ave', '1-678-152-4787', 'arcu.et@mauris.net', '2021-06-14 00:05:53', '53,585€', '825,087€', '171,050€', 'pvwvupy.pdf', 'hrwcaio.pdf', 'sbizinz.pdf', 'xjewlxw.pdf', 'ltdwnhp.jpg', 'Marié(e)', 'Non', 'Mme'),
(72, 'Gill', 'Hillary', '499-4960 Diam Ave', '417-5995', 'pede@egetvenenatis.edu', '2022-04-26 01:18:04', '153,179€', '296,984€', '56,295€', 'tqnuqeb.pdf', 'yqlvkiy.pdf', 'mnddobo.pdf', 'elehtoy.pdf', 'xgzuunk.jpg', 'Celibataire', 'Oui', 'Mme'),
(73, 'Craig', 'Bianca', 'Appartement 844-1927 Neque Ave', '1-274-450-2025', 'Ut.tincidunt.orci@et.net', '2022-05-19 08:06:24', '119,506€', '572,599€', '60,141€', 'nlerkeo.pdf', 'hurgshg.pdf', 'yuzugzj.pdf', 'gkesett.pdf', 'vkoqgjb.jpg', 'Celibataire', 'Oui', ''),
(74, 'Lyons', 'Imani', 'CP 981, 9299 Rhoncus Rue', '1-379-445-6848', 'Donec.vitae.erat@litoratorquentper.com', '2021-05-17 23:32:44', '146,543€', '220,334€', '165,478€', 'pjnfnok.pdf', 'totchrd.pdf', 'bvscexc.pdf', 'xrpmdvt.pdf', 'xjhavgy.jpg', 'Marié(e)', 'Oui', 'Mme'),
(75, 'Burris', 'Berk', 'Appartement 359-5962 Luctus Rd.', '520-8686', 'nec.luctus@magnaSed.ca', '2022-01-11 23:43:28', '81,344€', '239,244€', '60,743€', 'nrcdtom.pdf', 'zjslybo.pdf', 'nluftry.pdf', 'sjyhejx.pdf', 'hkufszv.jpg', 'Marié(e)', 'Non', ''),
(76, 'Dominguez', 'Jenna', '368-4130 Eu Route', '1-871-399-4524', 'ligula@pulvinararcu.co.uk', '2022-05-16 16:34:10', '56,091€', '348,963€', '133,149€', 'pijreis.pdf', 'pgfeoro.pdf', 'clstbhb.pdf', 'twqhxsg.pdf', 'lpuxhxr.jpg', 'Marié(e)', 'Oui', 'Mme'),
(77, 'Browning', 'Briar', 'Appartement 466-9781 Venenatis Route', '254-7916', 'parturient.montes@cursusnon.com', '2021-10-02 19:37:16', '58,443€', '857,998€', '113,204€', 'mnbaohg.pdf', 'mbiexpb.pdf', 'havfgwx.pdf', 'diqyltg.pdf', 'meghbmy.jpg', 'Autre', 'Oui', ''),
(78, 'Mays', 'Alexander', '7837 Nisi. Ave', '1-824-172-0503', 'Integer.aliquam@tortor.com', '2020-08-16 20:00:44', '167,089€', '379,668€', '49,430€', 'zvoolch.pdf', 'uxyfalq.pdf', 'limsuss.pdf', 'lkebowq.pdf', 'nupbpdn.jpg', 'Divorcé(e)', 'Oui', 'Mlle'),
(79, 'Wiley', 'Thaddeus', 'Appartement 347-4810 Semper Rd.', '1-672-996-8342', 'pede.et@orciluctuset.org', '2021-01-17 04:21:51', '70,734€', '247,314€', '172,225€', 'lmuufwr.pdf', 'efwhruc.pdf', 'jdygxnp.pdf', 'aaxplyp.pdf', 'wnxpzvn.jpg', 'Autre', 'Non', 'M.'),
(80, 'Mendez', 'Ferris', '404-2442 Blandit Impasse', '588-6166', 'vel.pede@tellusnonmagna.net', '2020-06-17 13:42:38', '98,236€', '800,561€', '184,220€', 'xqoahfi.pdf', 'sfgxgbi.pdf', 'fglhfqg.pdf', 'zlwzmkc.pdf', 'ckkjrmv.jpg', 'Marié(e)', 'Oui', 'Mme'),
(81, 'Trevino', 'Guy', 'Appartement 222-6509 Morbi Ave', '426-2462', 'Pellentesque@noncursus.net', '2021-09-04 20:10:43', '31,919€', '084,960€', '192,600€', 'cuupkha.pdf', 'xxszpty.pdf', 'gyotbhr.pdf', 'nzonlhj.pdf', 'mwbaxhp.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(82, 'Mercer', 'Reed', 'Appartement 201-1698 Orci Avenue', '1-133-408-6278', 'Donec.vitae.erat@elitpedemalesuada.ca', '2020-08-01 01:59:53', '6,273€', '950,853€', '127,756€', 'qrjjnnd.pdf', 'iotntns.pdf', 'dtlecfg.pdf', 'kkomwvt.pdf', 'wgforqv.jpg', 'Marié(e)', 'Non', 'M.'),
(83, 'Larsen', 'Levi', '536-5686 Ligula. Rue', '1-733-928-6657', 'erat.volutpat@Donecat.edu', '2021-11-28 03:35:40', '68,743€', '192,575€', '9,581€', 'ksiwjsl.pdf', 'hbywvao.pdf', 'vpsjjox.pdf', 'qnkvszq.pdf', 'bqtgfph.jpg', 'Celibataire', 'Oui', 'M.'),
(84, 'Spears', 'Judith', 'CP 362, 1244 Interdum Route', '1-243-381-2272', 'arcu@bibendumsedest.net', '2020-10-16 09:25:56', '169,476€', '980,029€', '60,887€', 'ozlvfds.pdf', 'tdeqksz.pdf', 'yxvaeyk.pdf', 'qjkxwaj.pdf', 'exibtfz.jpg', 'Celibataire', 'Non', 'Mme'),
(85, 'Floyd', 'India', '402-3275 Urna, Av.', '1-370-812-5666', 'cursus.diam.at@ornarelectusjusto.com', '2021-09-30 09:57:03', '26,672€', '025,360€', '101,792€', 'elrsagr.pdf', 'ttcopal.pdf', 'tnduxil.pdf', 'ymssomh.pdf', 'dimnfmm.jpg', 'Marié(e)', 'Non', 'Mme'),
(86, 'Giles', 'Quinn', 'CP 751, 9320 Duis Av.', '338-1433', 'Nulla@enimNuncut.com', '2021-07-24 20:31:06', '158,378€', '100,063€', '13,663€', 'pbnaheg.pdf', 'suuvjar.pdf', 'wbslala.pdf', 'moefjer.pdf', 'kexgyhw.jpg', 'Celibataire', 'Oui', 'Mlle'),
(87, 'Bates', 'Cally', 'CP 815, 3721 Interdum. Rue', '1-334-655-7592', 'quis.arcu@nasceturridiculusmus.co.uk', '2020-07-18 01:56:53', '135,647€', '765,405€', '8,835€', 'nlzdpxw.pdf', 'gflncwz.pdf', 'qslkazr.pdf', 'gstmypm.pdf', 'ofuebjf.jpg', 'Marié(e)', 'Non', 'Mme'),
(88, 'Carrillo', 'Hunter', 'Appartement 260-5127 Proin Rue', '1-470-209-2689', 'ut.aliquam@sit.co.uk', '2021-07-13 15:30:53', '86,680€', '402,005€', '90,599€', 'utjwiys.pdf', 'evyvazz.pdf', 'jefezen.pdf', 'mpvicra.pdf', 'rcussce.jpg', 'Divorcé(e)', 'Oui', 'Mme'),
(89, 'Nieves', 'Haviva', 'CP 310, 2160 Ligula Route', '504-2930', 'ac@metus.edu', '2022-01-23 23:30:29', '137,646€', '462,190€', '94,439€', 'wzvclmi.pdf', 'nuhxsnd.pdf', 'yhpbrbb.pdf', 'sisdbuq.pdf', 'lzqroqk.jpg', 'Celibataire', 'Non', 'Mme'),
(90, 'Gilliam', 'Aidan', 'CP 836, 1918 Ipsum. Ave', '291-8892', 'dapibus.rutrum@consectetuer.org', '2022-04-28 00:31:00', '24,693€', '499,841€', '140,269€', 'vtuswfp.pdf', 'sgfacls.pdf', 'gdqheel.pdf', 'oeosucc.pdf', 'kpawgnx.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(91, 'Schmidt', 'Berk', 'CP 452, 770 Ornare, Impasse', '303-9840', 'Proin.non.massa@In.org', '2020-12-14 13:27:59', '7,640€', '689,495€', '45,635€', 'qewenxd.pdf', 'usqhelg.pdf', 'tngunfc.pdf', 'lmqhymn.pdf', 'sucwgrz.jpg', 'Autre', 'Oui', 'Mme'),
(92, 'Bowen', 'Hayfa', 'CP 216, 5843 Viverra. Rd.', '169-1299', 'nostra.per@tellusimperdiet.org', '2021-07-20 02:20:11', '110,616€', '168,830€', '64,438€', 'tslfsiy.pdf', 'fycqnvx.pdf', 'pwmvmxh.pdf', 'yfsjnfv.pdf', 'prpmvvc.jpg', 'Divorcé(e)', 'Oui', 'Mme'),
(93, 'Macdonald', 'Erich', 'CP 107, 7283 Ac Impasse', '516-0759', 'Aenean@montesnasceturridiculus.net', '2021-04-02 22:32:28', '25,276€', '624,734€', '18,657€', 'lchqfnx.pdf', 'sgbhput.pdf', 'dnyqcdl.pdf', 'bodefns.pdf', 'qceovok.jpg', 'Marié(e)', 'Oui', 'Mme'),
(94, 'Hooper', 'Alexander', 'CP 200, 9190 Convallis Ave', '1-778-685-0406', 'quam.Pellentesque.habitant@enimcommodohendrerit.ca', '2021-05-04 21:31:30', '101,281€', '995,642€', '11,079€', 'hhvlpdd.pdf', 'onhsmrr.pdf', 'yvyhlry.pdf', 'zlmbrsv.pdf', 'czmihgc.jpg', 'Divorcé(e)', 'Non', 'M.'),
(95, 'Howard', 'Donna', 'Appartement 530-7490 Lobortis Rue', '546-5006', 'lorem.eget.mollis@vestibulum.edu', '2020-11-04 07:57:47', '51,318€', '721,651€', '88,854€', 'isvtksu.pdf', 'tkmazox.pdf', 'lsntzan.pdf', 'tlayrez.pdf', 'xqwgycr.jpg', 'Marié(e)', 'Non', 'Mlle'),
(96, 'Alford', 'Meghan', 'Appartement 369-6806 Lorem Rue', '917-3209', 'et.ipsum.cursus@feliseget.co.uk', '2021-02-05 11:59:38', '44,423€', '186,617€', '154,787€', 'rgehrmf.pdf', 'qdfapjd.pdf', 'soohydk.pdf', 'egbuzen.pdf', 'gskbkgd.jpg', 'Divorcé(e)', 'Non', 'Mme'),
(97, 'Hester', 'Mara', '4544 Non Avenue', '376-1965', 'erat@Sedmalesuada.ca', '2022-05-14 15:04:22', '36,364€', '481,125€', '73,088€', 'rlsktgx.pdf', 'tdnwouj.pdf', 'pczbbqo.pdf', 'yipvplb.pdf', 'bafylob.jpg', 'Marié(e)', 'Oui', ''),
(98, 'Gill', 'Meredith', 'Appartement 783-356 Penatibus Rue', '563-8153', 'tellus@risusIn.co.uk', '2021-06-26 10:28:23', '15,727€', '078,108€', '199,181€', 'ybpjztx.pdf', 'veqkrwp.pdf', 'hnpbnmr.pdf', 'nfglxmy.pdf', 'urouzvm.jpg', 'Marié(e)', 'Oui', 'Mlle'),
(99, 'Fowler', 'Rigel', '511-3073 Congue, Chemin', '1-230-459-7635', 'consectetuer.adipiscing@erategetipsum.co.uk', '2022-04-24 22:19:34', '49,854€', '044,837€', '114,062€', 'kazwdrk.pdf', 'hbfafyh.pdf', 'kkqiytx.pdf', 'rvxrlnk.pdf', 'ptefvso.jpg', 'Autre', 'Non', 'Mme'),
(100, 'English', 'Burton', 'CP 493, 7871 Vestibulum, Impasse', '1-542-792-4425', 'egestas.ligula.Nullam@erat.ca', '2020-08-20 19:34:17', '181,489€', '738,925€', '186,766€', 'szkkqfi.pdf', 'cvvyamz.pdf', 'typbumz.pdf', 'kdjtdba.pdf', 'xgjuzoi.jpg', 'Marié(e)', 'Oui', 'Mlle');

-- --------------------------------------------------------

--
-- Structure de la table `waz_quartier`
--

DROP TABLE IF EXISTS `waz_quartier`;
CREATE TABLE IF NOT EXISTS `waz_quartier` (
  `quartier_id` int NOT NULL AUTO_INCREMENT,
  `quartier_libelle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quartier_commune_id` int NOT NULL,
  PRIMARY KEY (`quartier_id`),
  KEY `quartier_commune_id` (`quartier_commune_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_quartier`
--

INSERT INTO `waz_quartier` (`quartier_id`, `quartier_libelle`, `quartier_commune_id`) VALUES
(1, 'amet ornare lectus', 9),
(2, 'et ipsum cursus', 79),
(3, 'luctus sit amet,', 7),
(4, 'sed dolor. Fusce', 92),
(5, 'neque. Nullam nisl.', 57),
(6, 'nonummy. Fusce fermentum', 54),
(7, 'odio. Phasellus at', 91),
(8, 'a tortor. Nunc', 7),
(9, 'Quisque varius. Nam', 89),
(10, 'interdum. Curabitur dictum.', 32),
(11, 'Etiam gravida molestie', 13),
(12, 'eleifend. Cras sed', 71),
(13, 'semper cursus. Integer', 72),
(14, 'pede. Suspendisse dui.', 34),
(15, 'sem magna nec', 33),
(16, 'malesuada id, erat.', 69),
(17, 'augue. Sed molestie.', 12),
(18, 'lorem, sit amet', 7),
(19, 'mattis. Integer eu', 52),
(20, 'dapibus id, blandit', 34),
(21, 'lorem fringilla ornare', 63),
(22, 'tempus mauris erat', 52),
(23, 'Curabitur vel lectus.', 97),
(24, 'vulputate ullamcorper magna.', 31),
(25, 'sit amet ante.', 47),
(26, 'taciti sociosqu ad', 40),
(27, 'egestas. Aliquam fringilla', 52),
(28, 'magna. Nam ligula', 64),
(29, 'metus urna convallis', 44),
(30, 'blandit enim consequat', 26),
(31, 'non leo. Vivamus', 24),
(32, 'Nulla interdum. Curabitur', 18),
(33, 'posuere cubilia Curae;', 68),
(34, 'mauris. Suspendisse aliquet', 16),
(35, 'erat, in consectetuer', 11),
(36, 'velit egestas lacinia.', 74),
(37, 'varius. Nam porttitor', 70),
(38, 'diam at pretium', 12),
(39, 'egestas hendrerit neque.', 65),
(40, 'risus a ultricies', 50),
(41, 'tincidunt vehicula risus.', 65),
(42, 'nec, mollis vitae,', 79),
(43, 'felis. Donec tempor,', 11),
(44, 'orci quis lectus.', 19),
(45, 'et tristique pellentesque,', 73),
(46, 'placerat velit. Quisque', 18),
(47, 'tempor augue ac', 71),
(48, 'bibendum. Donec felis', 34),
(49, 'velit eget laoreet', 68),
(50, 'natoque penatibus et', 77),
(51, 'ornare egestas ligula.', 71),
(52, 'aliquet lobortis, nisi', 80),
(53, 'dis parturient montes,', 99),
(54, 'neque. Morbi quis', 30),
(55, 'Nullam enim. Sed', 68),
(56, 'Proin vel arcu', 64),
(57, 'mattis ornare, lectus', 41),
(58, 'montes, nascetur ridiculus', 56),
(59, 'hendrerit a, arcu.', 68),
(60, 'ipsum sodales purus,', 75),
(61, 'Nulla tempor augue', 50),
(62, 'vulputate, posuere vulputate,', 34),
(63, 'luctus vulputate, nisi', 71),
(64, 'lorem. Donec elementum,', 74),
(65, 'Duis dignissim tempor', 36),
(66, 'aliquet diam. Sed', 78),
(67, 'neque venenatis lacus.', 91),
(68, 'dignissim magna a', 65),
(69, 'accumsan sed, facilisis', 86),
(70, 'sed, sapien. Nunc', 69),
(71, 'tellus justo sit', 14),
(72, 'sodales nisi magna', 16),
(73, 'ridiculus mus. Donec', 18),
(74, 'Etiam bibendum fermentum', 70),
(75, 'eros nec tellus.', 25),
(76, 'non lorem vitae', 46),
(77, 'dictum sapien. Aenean', 88),
(78, 'vel arcu eu', 76),
(79, 'ipsum ac mi', 48),
(80, 'Donec consectetuer mauris', 20),
(81, 'Integer vitae nibh.', 86),
(82, 'egestas. Fusce aliquet', 10),
(83, 'enim non nisi.', 28),
(84, 'euismod mauris eu', 7),
(85, 'nisl. Quisque fringilla', 18),
(86, 'commodo ipsum. Suspendisse', 8),
(87, 'egestas hendrerit neque.', 85),
(88, 'tellus, imperdiet non,', 94),
(89, 'non, bibendum sed,', 23),
(90, 'diam lorem, auctor', 9),
(91, 'sem magna nec', 35),
(92, 'leo. Cras vehicula', 3),
(93, 'Nunc quis arcu', 9),
(94, 'vulputate dui, nec', 47),
(95, 'et tristique pellentesque,', 53),
(96, 'pede sagittis augue,', 65),
(97, 'mi lacinia mattis.', 65),
(98, 'tincidunt. Donec vitae', 39),
(99, 'lacus pede sagittis', 77),
(100, 'ornare, elit elit', 28);

-- --------------------------------------------------------

--
-- Structure de la table `waz_users`
--

DROP TABLE IF EXISTS `waz_users`;
CREATE TABLE IF NOT EXISTS `waz_users` (
  `us_id` int NOT NULL AUTO_INCREMENT,
  `us_nom` varchar(50) NOT NULL,
  `us_prenom` varchar(50) NOT NULL,
  `us_pseudo` varchar(100) NOT NULL,
  `us_email` varchar(100) NOT NULL,
  `us_password` text NOT NULL,
  `us_date_inscription` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `waz_users`
--

INSERT INTO `waz_users` (`us_id`, `us_nom`, `us_prenom`, `us_pseudo`, `us_email`, `us_password`, `us_date_inscription`) VALUES
(1, 'Aristotle', 'Lars', 'Davenport', 'elit@orcilobortisaugue.org', 'DTW64DQM1KU', '2021-07-29 15:44:39'),
(2, 'Joel', 'Raja', 'Chandler', 'aptent.taciti.sociosqu@adipiscinglacus.co.uk', 'KIZ06JDH1IJ', '2021-07-29 15:44:39'),
(3, 'Finn', 'Jermaine', 'Klein', 'vel.lectus@Phasellus.edu', 'SLG89CQY3IL', '2021-07-29 15:44:39'),
(4, 'Fuller', 'Caleb', 'Foreman', 'massa@consectetuer.com', 'WKS01BWG3WZ', '2021-07-29 15:44:39'),
(5, 'Austin', 'Ayanna', 'Mcclain', 'Sed.malesuada.augue@molestie.com', 'KPH06TYG7YX', '2021-07-29 15:44:39'),
(6, 'Kirsten', 'Steven', 'Morales', 'aliquam.eu@nuncest.com', 'AZY39TGJ9RK', '2021-07-29 15:44:39'),
(7, 'Alika', 'Tucker', 'Reynolds', 'ligula.Aenean@massaIntegervitae.co.uk', 'AXK88AIZ1DU', '2021-07-29 15:44:39'),
(8, 'Daniel', 'Josephine', 'Salazar', 'sagittis.semper.Nam@Utsagittis.co.uk', 'FCI92PLY8TA', '2021-07-29 15:44:39'),
(9, 'Theodore', 'Jameson', 'Mays', 'Phasellus.in.felis@loremvehiculaet.edu', 'FCD39ZFS8EZ', '2021-07-29 15:44:39'),
(10, 'Bianca', 'Wyoming', 'Sawyer', 'vitae@molestieintempus.ca', 'ZXU82FHU6WR', '2021-07-29 15:44:39'),
(11, 'Duncan', 'Graham', 'Bowen', 'non.luctus@blanditmattis.org', 'JNM87UZX3CG', '2021-07-29 15:44:39'),
(12, 'Pamela', 'Travis', 'Bond', 'mauris@dictummi.org', 'JQC55GYL6QV', '2021-07-29 15:44:39'),
(13, 'Merrill', 'Jaime', 'Colon', 'rhoncus@inconsectetuer.co.uk', 'VVD79MBJ5IX', '2021-07-29 15:44:39'),
(14, 'Zelda', 'Carlos', 'Booth', 'ullamcorper.viverra.Maecenas@Nullam.net', 'CBF52ZQN4MZ', '2021-07-29 15:44:39'),
(15, 'Stacy', 'Emery', 'Reilly', 'Phasellus.nulla@risus.edu', 'SKR73FMC7BB', '2021-07-29 15:44:39'),
(16, 'Stella', 'Laura', 'Chase', 'nonummy@ametluctus.net', 'ZBY39ALJ1IS', '2021-07-29 15:44:39'),
(17, 'Idola', 'Joseph', 'Merrill', 'iaculis.quis@Donec.org', 'QEW40ZIH9NF', '2021-07-29 15:44:39'),
(18, 'Byron', 'Leo', 'Cherry', 'nec.urna@aliquamenim.net', 'GSZ25XDC2LX', '2021-07-29 15:44:39'),
(19, 'Adele', 'Shay', 'Tyler', 'dapibus.id.blandit@elitNullafacilisi.com', 'ANX07UTA8WP', '2021-07-29 15:44:39'),
(20, 'Xandra', 'Willa', 'Anderson', 'et@maurissapiencursus.ca', 'ANS46UDB6HP', '2021-07-29 15:44:39'),
(21, 'Justine', 'Gay', 'Mccormick', 'neque.In.ornare@sed.com', 'PHX91SCT5VE', '2021-07-29 15:44:39'),
(22, 'Kalia', 'Dahlia', 'Buckley', 'ornare.facilisis@elitpede.org', 'KLX05QNL8SR', '2021-07-29 15:44:39'),
(23, 'Noble', 'Prescott', 'Castaneda', 'nibh@iaculisodioNam.org', 'IUB30GQG5QY', '2021-07-29 15:44:39'),
(24, 'Lester', 'Austin', 'Ruiz', 'posuere@risusDuis.co.uk', 'TEW09BZU5NM', '2021-07-29 15:44:39'),
(25, 'Jamal', 'Raphael', 'Mcbride', 'consequat.lectus@magnaSuspendisse.ca', 'PAK93YPK7LU', '2021-07-29 15:44:39'),
(26, 'Uriel', 'Tiger', 'Summers', 'Aliquam.erat.volutpat@iaculis.edu', 'JYO83BVI2FJ', '2021-07-29 15:44:39'),
(27, 'Ali', 'John', 'Calderon', 'mollis@consectetuerrhoncus.com', 'ZOL90AWY8TL', '2021-07-29 15:44:39'),
(28, 'Hammett', 'Whitney', 'Fisher', 'lorem@enim.com', 'XWE97FBN1WX', '2021-07-29 15:44:39'),
(29, 'Claudia', 'Serena', 'Harding', 'Duis@Cras.org', 'LIM72UCA6UQ', '2021-07-29 15:44:39'),
(30, 'Wanda', 'Chantale', 'Velasquez', 'tortor@posuerecubilia.co.uk', 'TYZ71BYB1RY', '2021-07-29 15:44:39'),
(31, 'Thane', 'Melissa', 'Hunter', 'diam.Pellentesque@aneque.ca', 'BKP65DVB8HC', '2021-07-29 15:44:39'),
(32, 'Mannix', 'Ariel', 'Jacobson', 'hendrerit@egetmetuseu.net', 'WCR17CCE2YS', '2021-07-29 15:44:39'),
(33, 'Celeste', 'Ciara', 'Bolton', 'dui.in.sodales@tellus.net', 'YBH49ZHG2UD', '2021-07-29 15:44:39'),
(34, 'Berk', 'Kelly', 'Buck', 'mi@Aliquam.edu', 'NIZ61IZA6DP', '2021-07-29 15:44:39'),
(35, 'Hayes', 'Benjamin', 'Flynn', 'Nulla.interdum@porttitortellus.edu', 'TWU21HKO5WY', '2021-07-29 15:44:39'),
(36, 'Rogan', 'Kathleen', 'Grimes', 'eu.odio@Nullamnisl.ca', 'JZT68JFB5JF', '2021-07-29 15:44:39'),
(37, 'Silas', 'Moana', 'Chen', 'nec@et.com', 'WHQ00UEJ8OJ', '2021-07-29 15:44:39'),
(38, 'Kevyn', 'Thomas', 'Burnett', 'varius.orci@neque.com', 'GSV45DAM4ZQ', '2021-07-29 15:44:39'),
(39, 'George', 'Blake', 'Soto', 'eu.placerat@Integervitae.org', 'GHQ77BHX6QV', '2021-07-29 15:44:39'),
(40, 'Clinton', 'Simone', 'Henson', 'Nam@nuncrisus.edu', 'ZXF32GQB5XN', '2021-07-29 15:44:39'),
(41, 'Sara', 'Peter', 'Mcbride', 'erat@commodotincidunt.edu', 'MYB58CRX4ZP', '2021-07-29 15:44:39'),
(42, 'Shad', 'Nita', 'Sharp', 'diam.nunc@montes.net', 'ZXZ49WCG3UZ', '2021-07-29 15:44:39'),
(43, 'Hop', 'Yvette', 'Shaffer', 'velit.in.aliquet@Nulladignissim.edu', 'QBC72RDR4NP', '2021-07-29 15:44:39'),
(44, 'Mariam', 'Cedric', 'Long', 'enim.Curabitur@ac.edu', 'KDU59UHA0UH', '2021-07-29 15:44:39'),
(45, 'Orlando', 'Bevis', 'Williams', 'et.commodo@rutrum.edu', 'XPI13HYX2SN', '2021-07-29 15:44:39'),
(46, 'Wang', 'August', 'Bean', 'tellus@utpellentesqueeget.co.uk', 'ZFI80IJR9CI', '2021-07-29 15:44:39'),
(47, 'Ira', 'Zeph', 'Horton', 'blandit.Nam@ut.org', 'UCT66KNB9DO', '2021-07-29 15:44:39'),
(48, 'Rina', 'Lisandra', 'Mcmillan', 'dis.parturient.montes@Suspendisseeleifend.co.uk', 'MKV33DTR4TO', '2021-07-29 15:44:39'),
(49, 'Kameko', 'Aspen', 'Lamb', 'urna.justo.faucibus@afeugiat.ca', 'HCC69YRR4XM', '2021-07-29 15:44:39'),
(50, 'Mohammad', 'Susan', 'Martin', 'Duis.at@turpis.com', 'OTJ42ZYK7GQ', '2021-07-29 15:44:39'),
(51, 'Colorado', 'Dominic', 'Higgins', 'Nullam@montesnasceturridiculus.org', 'WKR33VEE0WW', '2021-07-29 15:44:39'),
(52, 'Graiden', 'Grady', 'Atkins', 'est@massalobortisultrices.com', 'NTC98TPZ0MG', '2021-07-29 15:44:39'),
(53, 'Aristotle', 'Upton', 'Boone', 'Suspendisse.ac.metus@diam.org', 'BDP38DOU2GA', '2021-07-29 15:44:39'),
(54, 'Xenos', 'Rogan', 'Sosa', 'ornare.In@quamdignissim.ca', 'YIL65FTB9XA', '2021-07-29 15:44:39'),
(55, 'Kenyon', 'Shay', 'Riggs', 'Suspendisse@ipsumleoelementum.edu', 'HQB71RLX9GC', '2021-07-29 15:44:39'),
(56, 'Vladimir', 'Ignatius', 'Mitchell', 'Etiam@Nullam.org', 'PCF40JUG1YH', '2021-07-29 15:44:39'),
(57, 'Alan', 'Walker', 'Hines', 'est@pedeSuspendisse.net', 'JBD88NFE1SL', '2021-07-29 15:44:39'),
(58, 'Ebony', 'Molly', 'Galloway', 'tellus@facilisisnonbibendum.ca', 'ARK87YHE3ZU', '2021-07-29 15:44:39'),
(59, 'Mallory', 'Christian', 'Shaffer', 'Nulla@Mauriseuturpis.edu', 'EDG45ILP4SP', '2021-07-29 15:44:39'),
(60, 'Inez', 'Walker', 'Dillard', 'Class@etmalesuadafames.org', 'WVN42ZEH8VY', '2021-07-29 15:44:39'),
(61, 'Ishmael', 'Mark', 'Gould', 'nibh.enim@Suspendisse.edu', 'BXF67ITN7PG', '2021-07-29 15:44:39'),
(62, 'Ferris', 'Caesar', 'Holden', 'mattis@massalobortisultrices.co.uk', 'ANI48WFB4NZ', '2021-07-29 15:44:39'),
(63, 'Tate', 'Tanya', 'Hernandez', 'elementum.sem@dictumauguemalesuada.co.uk', 'WYI40EXN1DC', '2021-07-29 15:44:39'),
(64, 'Ignatius', 'Helen', 'Conway', 'eget.nisi.dictum@malesuada.com', 'JJG53MUR8ZQ', '2021-07-29 15:44:39'),
(65, 'Sarah', 'Jolene', 'Oneil', 'eu@nec.ca', 'DCS18HYQ4DP', '2021-07-29 15:44:39'),
(66, 'Lester', 'Len', 'Dejesus', 'tincidunt.nunc.ac@mollisneccursus.edu', 'QCZ23OJS3GM', '2021-07-29 15:44:39'),
(67, 'Rajah', 'Ira', 'Dalton', 'lacus.Aliquam@nec.com', 'FKS68JKE8ZU', '2021-07-29 15:44:39'),
(68, 'Kaseem', 'Marcia', 'Bond', 'tortor.Nunc@orciPhasellus.co.uk', 'TYX56SKV8GX', '2021-07-29 15:44:39'),
(69, 'Amena', 'Addison', 'Knight', 'malesuada.malesuada.Integer@semper.com', 'OVM97YVA8AP', '2021-07-29 15:44:39'),
(70, 'Keaton', 'Acton', 'Sheppard', 'turpis.In.condimentum@nec.edu', 'PFV12IGC9SX', '2021-07-29 15:44:39'),
(71, 'Mariam', 'Cameron', 'Spence', 'est.Nunc@egestasligula.com', 'MCJ79QVD5WR', '2021-07-29 15:44:40'),
(72, 'Merritt', 'Kim', 'Riley', 'aliquam.enim.nec@consequatnecmollis.net', 'OZF80XUP8SM', '2021-07-29 15:44:40'),
(73, 'Colt', 'Jorden', 'Neal', 'torquent@mollis.net', 'UYJ64HZC1DG', '2021-07-29 15:44:40'),
(74, 'Odysseus', 'Dara', 'Miller', 'Duis.ac@ornareplacerat.co.uk', 'TKD29QQP5RV', '2021-07-29 15:44:40'),
(75, 'Julian', 'Piper', 'Christian', 'sapien.molestie.orci@ullamcorperviverraMaecenas.net', 'DUL44YIP6MU', '2021-07-29 15:44:40'),
(76, 'Conan', 'Libby', 'Hendrix', 'ultricies.dignissim.lacus@ametmassa.co.uk', 'TTZ93ORS2UD', '2021-07-29 15:44:40'),
(77, 'Lana', 'Remedios', 'Bishop', 'viverra.Maecenas.iaculis@nonegestasa.edu', 'JMX31UKW8VX', '2021-07-29 15:44:40'),
(78, 'Darrel', 'Donovan', 'Barrett', 'libero.Proin.sed@in.net', 'KIQ05ADN5PQ', '2021-07-29 15:44:40'),
(79, 'Phelan', 'Penelope', 'Mcmahon', 'porttitor.vulputate@Donectempus.com', 'DID07HVZ3KB', '2021-07-29 15:44:40'),
(80, 'Myra', 'Germaine', 'Acevedo', 'rutrum.urna.nec@nectempus.org', 'XTP19EEA9GA', '2021-07-29 15:44:40'),
(81, 'Dara', 'Kylie', 'Sullivan', 'natoque@euturpisNulla.com', 'UGL54WLD4NA', '2021-07-29 15:44:40'),
(82, 'Buckminster', 'Brandon', 'Good', 'Etiam.laoreet.libero@pharetraQuisqueac.com', 'NFG81QJA5MZ', '2021-07-29 15:44:40'),
(83, 'Dexter', 'Randall', 'Hester', 'elementum@vestibulum.co.uk', 'GSH60LTU0US', '2021-07-29 15:44:40'),
(84, 'Aristotle', 'Lunea', 'Bradley', 'velit@scelerisqueneque.net', 'HXR55BOF3ZH', '2021-07-29 15:44:40'),
(85, 'Shelley', 'Vivian', 'Shaw', 'nisi.magna@auctorullamcorpernisl.com', 'WNI64MCS4NQ', '2021-07-29 15:44:40'),
(86, 'Seth', 'Tarik', 'Riddle', 'hendrerit@velpedeblandit.ca', 'ZZE21GMP6IG', '2021-07-29 15:44:40'),
(87, 'Jonas', 'Zenia', 'Watson', 'non.justo@Donec.org', 'JIG72AJH0IF', '2021-07-29 15:44:40'),
(88, 'Wylie', 'Amanda', 'Lucas', 'et.pede.Nunc@molestiesodales.net', 'CFU48DGY2OX', '2021-07-29 15:44:40'),
(89, 'James', 'Karen', 'Roth', 'luctus.aliquet@indolorFusce.com', 'REN32KCE9IU', '2021-07-29 15:44:40'),
(90, 'Chester', 'Garth', 'Christensen', 'Donec@pedeNunc.com', 'MPQ81LAR2ZM', '2021-07-29 15:44:40'),
(91, 'Yoshio', 'Nash', 'Clarke', 'Donec@arcuCurabitur.ca', 'LKK24JHV5EK', '2021-07-29 15:44:40'),
(92, 'Ginger', 'Wilma', 'Carver', 'purus.mauris.a@utodiovel.org', 'OHY61RJS5CA', '2021-07-29 15:44:40'),
(93, 'Juliet', 'Meredith', 'Stewart', 'adipiscing.non.luctus@Utsagittis.org', 'TLV86XCZ5SX', '2021-07-29 15:44:40'),
(94, 'Karly', 'Roary', 'Blevins', 'molestie.orci@Namnulla.edu', 'DVZ29DGR4MR', '2021-07-29 15:44:40'),
(95, 'Halla', 'Ruth', 'French', 'non@variusultricesmauris.co.uk', 'YXP32TJL4SA', '2021-07-29 15:44:40'),
(96, 'Pandora', 'Ivana', 'Melton', 'mollis@Duis.ca', 'ZLF59GGI1SF', '2021-07-29 15:44:40'),
(97, 'Mollie', 'Anastasia', 'Mckenzie', 'vulputate.velit.eu@estac.com', 'YZZ75ESX1UD', '2021-07-29 15:44:40'),
(98, 'Halee', 'Lucas', 'Hoffman', 'Fusce@adlitoratorquent.com', 'HLD67XIQ1AQ', '2021-07-29 15:44:40'),
(99, 'Brenna', 'Jacob', 'Leonard', 'non.bibendum@pedesagittisaugue.edu', 'EVR19PLE5QV', '2021-07-29 15:44:40'),
(100, 'Keelie', 'Elijah', 'Byrd', 'Mauris.quis@cursusNunc.com', 'ABH22XSM4HH', '2021-07-29 15:44:40'),
(118, 'AMIRAT', 'Youcef', 'yyyy', 'youcefamirat86@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-08-02 17:43:01'),
(119, 'AMIRAT', 'Youcef', 'zzz', 'youcefamirat86@gmail.com', '8d5e957f297893487bd98fa830fa6413', '2021-08-03 10:29:39'),
(120, 'AMIRAT', 'Youcef', 'yuuu', 'youcefamirat86@gmail.com', '202cb962ac59075b964b07152d234b70', '2021-08-03 12:23:00'),
(121, 'AMIRAT', 'Youcef', 'ttttttttttt', 'youcefamirat86@gmail.com', '1c9ac0159c94d8d0cbedc973445af2da', '2021-08-03 12:23:31'),
(122, 'AMIRAT', 'Youcef', 'aaa', 'youcefamirat86@gmail.com', '0cc175b9c0f1b6a831c399e269772661', '2021-08-03 13:09:23');

-- --------------------------------------------------------

--
-- Structure de la table `waz_vente`
--

DROP TABLE IF EXISTS `waz_vente`;
CREATE TABLE IF NOT EXISTS `waz_vente` (
  `vente_id` int NOT NULL AUTO_INCREMENT,
  `vente_type_de_vente` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vente_date` date NOT NULL,
  `vente_agent_id` int NOT NULL,
  `vente_log_id` int NOT NULL,
  PRIMARY KEY (`vente_id`),
  KEY `vente_agent_id` (`vente_agent_id`),
  KEY `vente_log_id` (`vente_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `waz_vente`
--

INSERT INTO `waz_vente` (`vente_id`, `vente_type_de_vente`, `vente_date`, `vente_agent_id`, `vente_log_id`) VALUES
(2, 'Neuf', '2022-02-04', 94, 20),
(3, 'Viage', '2021-01-15', 28, 78),
(4, 'Neuf', '2020-06-28', 88, 18),
(5, 'Viage', '2021-05-29', 6, 4),
(6, 'Neuf', '2022-04-26', 31, 89),
(7, 'Viage', '2020-11-12', 14, 86),
(8, 'Neuf', '2021-03-07', 72, 73),
(10, 'Viage', '2021-04-09', 52, 29),
(11, 'Ancien', '2021-01-17', 69, 34),
(12, 'Viage', '2020-12-24', 31, 52),
(13, 'Ancien', '2022-03-30', 97, 49),
(14, 'Viage', '2022-01-29', 36, 25),
(15, 'Neuf', '2022-01-23', 91, 53),
(16, 'Viage', '2021-11-07', 82, 41),
(17, 'Neuf', '2021-04-08', 55, 87),
(18, 'Viage', '2021-09-22', 61, 58),
(19, 'Neuf', '2020-10-31', 37, 54),
(20, 'Neuf', '2020-06-09', 39, 56),
(21, 'Ancien', '2021-08-14', 18, 23),
(22, 'Viage', '2020-10-16', 84, 74),
(23, 'Ancien', '2021-01-31', 36, 24),
(24, 'Ancien', '2022-02-12', 73, 42),
(25, 'Neuf', '2021-12-20', 19, 59),
(26, 'Ancien', '2021-05-10', 30, 1),
(27, 'Ancien', '2021-09-24', 42, 84),
(28, 'Ancien', '2022-03-08', 92, 53),
(29, 'Neuf', '2020-07-13', 100, 36),
(30, 'Neuf', '2021-02-15', 15, 24),
(31, 'Viage', '2020-10-19', 8, 16),
(32, 'Ancien', '2022-04-07', 70, 55),
(33, 'Viage', '2022-02-21', 81, 68),
(34, 'Ancien', '2022-05-20', 60, 30),
(35, 'Neuf', '2022-01-09', 34, 43),
(36, 'Viage', '2022-05-31', 98, 54),
(37, 'Viage', '2021-10-05', 58, 96),
(38, 'Viage', '2021-07-10', 10, 59),
(39, 'Viage', '2021-04-12', 56, 6),
(40, 'Viage', '2022-05-18', 22, 2),
(41, 'Ancien', '2021-08-24', 95, 17),
(42, 'Neuf', '2020-12-06', 73, 2),
(43, 'Ancien', '2022-04-05', 24, 73),
(44, 'Ancien', '2020-09-08', 72, 21),
(45, 'Viage', '2020-10-25', 97, 15),
(46, 'Ancien', '2021-09-21', 26, 64),
(47, 'Viage', '2020-07-05', 87, 67),
(48, 'Ancien', '2022-01-25', 63, 75),
(49, 'Ancien', '2020-08-09', 46, 90),
(50, 'Ancien', '2021-03-20', 79, 100),
(51, 'Viage', '2020-10-29', 33, 10),
(52, 'Neuf', '2021-09-19', 76, 99),
(53, 'Ancien', '2022-01-02', 36, 100),
(54, 'Neuf', '2021-11-20', 45, 87),
(55, 'Neuf', '2021-06-21', 74, 19),
(56, 'Neuf', '2020-11-28', 23, 73),
(57, 'Ancien', '2020-09-01', 72, 51),
(58, 'Ancien', '2021-03-02', 90, 58),
(59, 'Neuf', '2020-09-04', 6, 76),
(60, 'Neuf', '2022-05-05', 80, 65),
(61, 'Ancien', '2022-05-07', 30, 98),
(62, 'Neuf', '2022-02-15', 59, 38),
(63, 'Ancien', '2020-07-15', 87, 93),
(64, 'Neuf', '2022-05-20', 40, 95),
(65, 'Neuf', '2021-12-15', 63, 99),
(66, 'Viage', '2021-05-10', 27, 47),
(67, 'Viage', '2021-02-18', 27, 41),
(68, 'Neuf', '2021-07-08', 46, 68),
(69, 'Neuf', '2021-12-12', 25, 14),
(70, 'Neuf', '2020-06-11', 75, 67),
(71, 'Ancien', '2021-05-29', 76, 4),
(72, 'Neuf', '2021-12-04', 72, 86),
(73, 'Neuf', '2022-02-01', 3, 23),
(74, 'Neuf', '2021-04-12', 34, 8),
(75, 'Ancien', '2020-06-16', 73, 27),
(76, 'Viage', '2021-04-22', 38, 82),
(77, 'Viage', '2021-06-16', 73, 52),
(78, 'Viage', '2021-09-29', 52, 97),
(79, 'Viage', '2022-03-18', 4, 99),
(80, 'Ancien', '2020-09-01', 99, 49),
(81, 'Ancien', '2021-07-18', 75, 16),
(82, 'Viage', '2020-08-01', 100, 87),
(83, 'Neuf', '2021-02-20', 97, 54),
(84, 'Viage', '2020-09-05', 58, 76),
(85, 'Neuf', '2020-06-19', 5, 51),
(86, 'Ancien', '2020-07-08', 74, 15),
(87, 'Ancien', '2021-08-10', 74, 77),
(88, 'Ancien', '2021-04-04', 81, 73),
(89, 'Viage', '2022-02-09', 18, 7),
(90, 'Ancien', '2020-12-28', 71, 13),
(91, 'Viage', '2020-07-27', 36, 84),
(92, 'Ancien', '2020-11-01', 93, 30),
(93, 'Viage', '2020-09-20', 70, 18),
(94, 'Neuf', '2021-03-29', 18, 17),
(95, 'Ancien', '2022-02-28', 92, 22),
(96, 'Ancien', '2021-11-04', 80, 14),
(97, 'Neuf', '2021-03-24', 77, 64),
(98, 'Viage', '2022-04-22', 87, 10),
(99, 'Ancien', '2021-07-22', 4, 72),
(100, 'Ancien', '2022-05-29', 93, 99);

-- --------------------------------------------------------

--
-- Structure de la vue `v_annonce_consulter`
--
DROP TABLE IF EXISTS `v_annonce_consulter`;

DROP VIEW IF EXISTS `v_annonce_consulter`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_annonce_consulter`  AS  select `waz_annonce`.`an_id` AS `an_id`,`waz_annonce`.`an_type_offre` AS `an_type_offre`,`waz_annonce`.`an_titre` AS `an_titre`,`waz_annonce`.`an_date_ajout` AS `an_date_ajout`,`waz_annonce`.`an_date_modification` AS `an_date_modification`,`waz_annonce`.`an_log_id` AS `an_log_id`,`waz_annonce`.`an_agent_id` AS `an_agent_id`,`waz_annonce`.`an_vue` AS `an_vue` from `waz_annonce` order by `waz_annonce`.`an_vue` desc ;

-- --------------------------------------------------------

--
-- Structure de la vue `v_annonce_liste`
--
DROP TABLE IF EXISTS `v_annonce_liste`;

DROP VIEW IF EXISTS `v_annonce_liste`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_annonce_liste`  AS  select `waz_annonce`.`an_id` AS `an_id`,`waz_annonce`.`an_titre` AS `an_titre`,`waz_logement`.`log_reference` AS `log_reference`,`waz_logement`.`log_type_de_bien` AS `log_type_de_bien`,`waz_logement`.`log_surf_hab` AS `log_surf_hab`,`waz_logement`.`log_prix` AS `log_prix` from (`waz_logement` join `waz_annonce` on((`waz_annonce`.`an_log_id` = `waz_logement`.`log_id`))) ;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acheter`
--
ALTER TABLE `acheter`
  ADD CONSTRAINT `acheter_ibfk_1` FOREIGN KEY (`acheter_vente_id`) REFERENCES `waz_vente` (`vente_id`),
  ADD CONSTRAINT `acheter_ibfk_2` FOREIGN KEY (`acheter_prop_id`) REFERENCES `waz_prospects` (`prop_id`);

--
-- Contraintes pour la table `consulte`
--
ALTER TABLE `consulte`
  ADD CONSTRAINT `consulte_ibfk_1` FOREIGN KEY (`consulter_an_id`) REFERENCES `waz_annonce` (`an_id`),
  ADD CONSTRAINT `consulte_ibfk_2` FOREIGN KEY (`consulter_util_id`) REFERENCES `waz_utilisateur` (`util_id`);

--
-- Contraintes pour la table `louer`
--
ALTER TABLE `louer`
  ADD CONSTRAINT `louer_ibfk_1` FOREIGN KEY (`louer_loc_id`) REFERENCES `waz_location` (`loc_id`),
  ADD CONSTRAINT `louer_ibfk_2` FOREIGN KEY (`louer_prop_id`) REFERENCES `waz_prospects` (`prop_id`);

--
-- Contraintes pour la table `possede`
--
ALTER TABLE `possede`
  ADD CONSTRAINT `possede_ibfk_1` FOREIGN KEY (`posseder_log_id`) REFERENCES `waz_logement` (`log_id`),
  ADD CONSTRAINT `possede_ibfk_2` FOREIGN KEY (`posseder_opt_id`) REFERENCES `waz_options` (`opt_id`);

--
-- Contraintes pour la table `vendre`
--
ALTER TABLE `vendre`
  ADD CONSTRAINT `vendre_ibfk_1` FOREIGN KEY (`vendre_vente_id`) REFERENCES `waz_vente` (`vente_id`),
  ADD CONSTRAINT `vendre_ibfk_2` FOREIGN KEY (`vendre_prop_id`) REFERENCES `waz_prospects` (`prop_id`);

--
-- Contraintes pour la table `waz_annonce`
--
ALTER TABLE `waz_annonce`
  ADD CONSTRAINT `waz_annonce_ibfk_1` FOREIGN KEY (`an_log_id`) REFERENCES `waz_logement` (`log_id`),
  ADD CONSTRAINT `waz_annonce_ibfk_2` FOREIGN KEY (`an_agent_id`) REFERENCES `waz_agent` (`agent_id`);

--
-- Contraintes pour la table `waz_location`
--
ALTER TABLE `waz_location`
  ADD CONSTRAINT `waz_location_ibfk_1` FOREIGN KEY (`loc_agent_id`) REFERENCES `waz_agent` (`agent_id`),
  ADD CONSTRAINT `waz_location_ibfk_2` FOREIGN KEY (`loc_log_id`) REFERENCES `waz_logement` (`log_id`);

--
-- Contraintes pour la table `waz_photos`
--
ALTER TABLE `waz_photos`
  ADD CONSTRAINT `waz_photos_ibfk_1` FOREIGN KEY (`photo_log_id`) REFERENCES `waz_logement` (`log_id`);

--
-- Contraintes pour la table `waz_quartier`
--
ALTER TABLE `waz_quartier`
  ADD CONSTRAINT `waz_quartier_ibfk_1` FOREIGN KEY (`quartier_commune_id`) REFERENCES `waz_commune` (`commune_id`);

--
-- Contraintes pour la table `waz_vente`
--
ALTER TABLE `waz_vente`
  ADD CONSTRAINT `waz_vente_ibfk_1` FOREIGN KEY (`vente_agent_id`) REFERENCES `waz_agent` (`agent_id`),
  ADD CONSTRAINT `waz_vente_ibfk_2` FOREIGN KEY (`vente_log_id`) REFERENCES `waz_logement` (`log_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
