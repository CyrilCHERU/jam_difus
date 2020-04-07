-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 05 avr. 2020 à 12:59
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `friends`
--

-- --------------------------------------------------------

--
-- Structure de la table `liste`
--

DROP TABLE IF EXISTS `liste`;
CREATE TABLE IF NOT EXISTS `liste` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(60) NOT NULL,
  `firstname` varchar(60) NOT NULL,
  `post_address` text NOT NULL,
  `phone` varchar(25) NOT NULL,
  `quote` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `liste`
--

INSERT INTO `liste` (`id`, `lastname`, `firstname`, `post_address`, `phone`, `quote`) VALUES
(1, 'DUPRE', 'Anastasie', 'rue de Goncalves\n33986 Toussaint', '0808743987', 'Chapitre abstrait 3 du conpendium : la congolexicomatisation Ã  l\'Ã©gard de la complexitÃ© va intentionner une certaine compÃ©titivitÃ© vers l\'humanisme.'),
(2, 'JACQUOT', 'Guy', '285, place Marie Rousseau\n44 971 ValleeBourg', '+33 4 72 08 47 31', 'Comme la coumbacÃ©rie ou le script de Aze, la concertation politique autour de la GÃ©o Physique Spatiale se rÃ©soud Ã  partager le systÃ¨me de Guipoti : 1/B+1/Bâ€™=1/D dans le prÃ©mice.'),
(3, 'MENARD', 'Marcelle', '679, avenue de Vallet\n75431 Grondinnec', '+33 (0)5 69 37 09 32', 'Câ€™est Ã  dire ici, câ€™est le contraire, au lieu de panacÃ©e, la compÃ©tence des lois du marchÃ© paraÃ®t rÃ©gler les sens dynamitiels vers le monde entier.'),
(4, 'DA COSTA', 'AimÃ©', '407, boulevard Dominique Paul\n31 975 Chauvin', '0277973066', 'Vous avez le systÃ¨me de check-up vers les anti-valeurs, vous avez le curuna, or la rÃ©flexologie autour de phylogomÃ¨nes gÃ©nÃ©ralisÃ©s peut mettre un accent sur une discipline dans la sous-rÃ©gionalitÃ©.'),
(5, 'BERTHELOT', 'Robert', '9, boulevard Bernard Bailly\n18947 Buisson', '0456873319', 'Câ€™est Ã  dire quand on parle de ces rollers, le colloque des lois du marchÃ© nous pousse Ã  mettre un accent sur cet environnement de 2 345 410 kmÂ² avÃ©rÃ©(e)(s).'),
(6, 'MAILLARD', 'Christelle', '72, rue Adrien Lemaire\n85 605 Collet', '+33 (0)6 15 54 50 29', 'D\'une maniÃ¨re ou d\'une autre, le rÃ©dynamisme des lois du marchÃ© tarde Ã  dÃ©fendre la nuclÃ©aritÃ© dans la sous-rÃ©gionalitÃ©.'),
(7, 'BONNIN', 'Arnaude', 'rue de Jacquet\n85533 Guillot', '+33 5 96 51 16 87', 'Quand on prend les triangles rectangles, le savoir autour de l\'ergonomÃ©trie paraÃ®t vanter les grabuses lastiques autour des dialogues intercommunautaires.'),
(8, 'HERVE', 'Alexandria', '613, impasse Catherine Lemoine\n28976 Bouchet', '+33 8 97 98 70 74', 'ParallÃ¨lement, la cosmogonisation de toute la RÃ©publique DÃ©mocratique du Congo oblige Ã  propulser le trabajo, le travail, la machinale, la robotisation provenant d\'une dynamique syncronique.'),
(9, 'ROYER', 'Gilbert', '97, boulevard Allard\n52 704 Dupont', '0984298128', 'Nous nâ€™allons pas seulement danser ou jouer au football, la congolexicomatisation indispensable(s) en science et culture sert Ã  rÃ©glementer cet environnement de 2 345 410 kmÂ² autour des dialogues intercommunautaires.'),
(10, 'JACQUOT', 'Philippe', '44, rue AurÃ©lie Guillaume\n56 470 Duhamel-sur-Vincent', '07 69 76 08 63', 'Chapitre abstrait 3 du conpendium : la congolexicomatisation autour de phylogomÃ¨nes gÃ©nÃ©ralisÃ©s oblige Ã  mettre un accent sur la bijectivitÃ© possÃ©dant la francophonie.'),
(11, 'IMBERT', 'AnaÃ¯s', '73, chemin de Lebrun\n43488 Maillot', '02 97 82 85 84', 'ParallÃ¨lement, la sociÃ©tÃ© civile de la technicitÃ© informatisÃ©e continue Ã  gÃ©rer l\'upensmie dans le prÃ©mice.'),
(12, 'CORDIER', 'Maggie', '63, chemin RenÃ©e Barbier\n83899 Marques', '0788315875', 'La convergence nâ€™est pas la divergence, le savoir Ã  l\'incognito tarde Ã  booster les sens dynamitiels dans Kinshasa.'),
(13, 'ROCHE', 'Ã‰ric', '47, avenue de Leroy\n87 193 Lopez', '09 75 67 17 96', 'Mesdames et messieurs fidÃ¨les, la cosmogonisation Ã©ventualiste sous cet angle lÃ  tend Ã  dÃ©fendre les sens dynamitiels autour des gens qui connaissent beaucoup de choses.'),
(14, 'LEDUC', 'GeneviÃ¨ve', '221, impasse Devaux\n78797 Hernandez', '+33 (0)6 75 52 10 09', 'ParallÃ¨lement, le colloque indispensable(s) en science et culture sert Ã  incristaliser les quatre carrÃ©s fous du fromage avec la formule 1+(2x5).'),
(15, 'LEVEQUE', 'Ã‰dith', '38, avenue Chantal Fischer\n35915 Bigot', '04 81 70 58 31', 'Tandis que la politique est encadrÃ©e par des scientifiques issus de Sciences Po et Administratives, la congolexicomatisation Ã©ventualiste sous cet angle lÃ  nous pousse Ã  se baser sur une certaine compÃ©titivitÃ© vers le monde entier.'),
(16, 'CHARPENTIER', 'Susan', 'chemin Alphonse Girard\n54474 FrancoisBourg', '+33 (0)8 29 92 16 25', 'Pour emphysiquer l\'animalculisme, l\'activisme des lois du marchÃ© tarde Ã  catapulter le panafricanisme dans les camps militaires non-voyants.'),
(17, 'NOEL', 'AimÃ©', '537, place Pierre Lecomte\n35099 PasquierVille', '0107891838', 'Nous nâ€™allons pas seulement danser ou jouer au football, la congolexicomatisation de la technicitÃ© informatisÃ©e peut informatiser les sens dynamitiels off-shore.'),
(18, 'BAUDRY', 'Ã‰mile', '377, rue Pichon\n93586 Allainnec', '+33 9 78 84 21 11', 'Lorsque l\'on parle des vÃ©gÃ©taliens, du vÃ©gÃ©talisme, la compÃ©tence autour de phylogomÃ¨nes gÃ©nÃ©ralisÃ©s suffit Ã  aider le chicouangue off-shore.'),
(19, 'BENOIT', 'Arnaude', '52, avenue Victor Evrard\n04271 Gillet', '0802272895', 'Tandis que la politique est encadrÃ©e par des scientifiques issus de Sciences Po et Administratives, le colloque par rapport aux diplomaties suffit Ã  Ã©tablir les revenus vers le monde entier.'),
(20, 'AUGER', 'GrÃ©goire', '58, impasse Laurent Marechal\n77 510 PerrierBourg', '+33 1 54 18 60 12', 'Câ€™est Ã  dire ici, câ€™est le contraire, au lieu de panacÃ©e, l\'activisme autour de l\'ergonomÃ©trie tend Ã  effaceter ce systÃ¨me phÃ©nomÃ©nal dans les camps militaires non-voyants.'),
(21, 'DELAHAYE', 'Alexandrie', '9, rue de Lenoir\n85595 Breton-sur-Mer', '+33 8 24 33 90 03', 'ParallÃ¨lement, la pÃ©dagogie de l\'orthodoxisation oblige Ã  partager les sens dynamitiels autour des gens qui connaissent beaucoup de choses.'),
(22, 'CHARTIER', 'AimÃ©', '65, chemin de Aubry\n14 902 Vincent', '0510778313', 'Câ€™est Ã  dire ici, câ€™est le contraire, au lieu de panacÃ©e, la congolexicomatisation des lois du marchÃ© se rÃ©soud Ã  vanter une certaine compÃ©titivitÃ© possÃ©dant la francophonie.'),
(23, 'PIRES', 'CÃ©line', 'chemin de Sanchez\n45 852 Gomez-sur-Rousseau', '+33 5 31 14 14 67', 'Se consolidant dans le systÃ¨me de insiding et outsiding, le colloque vers la compromettance pour des saint-bioules oblige Ã  soutenir mes frÃ¨res propres comme pour le lancement de TroposphÃ¨re V.'),
(24, 'NOEL', 'NoÃ©mi', 'rue Dos Santos\n39436 Courtoisboeuf', '0217862169', 'La convergence nâ€™est pas la divergence, la contextualisation des lois du marchÃ© s\'applique Ã  mettre un accent sur les quatre carrÃ©s fous du fromage dans la sous-rÃ©gionalitÃ©.'),
(25, 'OLIVIER', 'Arthur', '78, avenue GrÃ©goire Boulanger\n32 586 Meyer', '0145789163', 'Tandis que la politique est encadrÃ©e par des scientifiques issus de Sciences Po et Administratives, la congolexicomatisation purement technique consiste Ã  rabibocher cette climatologie comme pour le lancement de TroposphÃ¨re V.'),
(26, 'TOUSSAINT', 'Auguste', '5, rue de Klein\n77297 Regnier', '+33 1 51 11 44 00', 'Une semaine passÃ©e sans parler du peuple câ€™est errer sans abri, autrement dit le systÃ¨me par rapport aux diplomaties nous incite Ã  Ã©tablir le conpemdium vers l\'humanisme.'),
(27, 'PASQUIER', 'Claudine', '88, impasse de Blanchet\n98905 Meyer-sur-Goncalves', '05 91 45 96 42', 'D\'une maniÃ¨re ou d\'une autre, la congolexicomatisation autour de phylogomÃ¨nes gÃ©nÃ©ralisÃ©s nous incite Ã  rÃ©glementer cet environnement de 2 345 410 kmÂ² off-shore.'),
(28, 'ROY', 'Chantal', '6, impasse Agathe Marty\n15 005 Cousin-les-Bains', '01 97 97 26 63', 'Mesdames et messieurs fidÃ¨les, la force Ã©ventualiste sous cet angle lÃ  pousse Ã  intentionner cette climatologie off-shore.'),
(29, 'DELATTRE', 'Ã‰lisabeth', '48, avenue de Maillot\n53 310 Picard-sur-Guichard', '0630734204', 'Mesdames et messieurs fidÃ¨les, la compÃ©tence Ã©ventualiste sous cet angle lÃ  se rÃ©soud Ã  faceter ce systÃ¨me phÃ©nomÃ©nal dans les camps militaires non-voyants.'),
(30, 'JOLY', 'Adrien', 'rue Constance Lesage\n56780 AllainBourg', '+33 5 02 24 73 49', 'D\'une maniÃ¨re ou d\'une autre, la politique autour de l\'ergonomÃ©trie continue Ã  se baser sur l\'upensmie provenant d\'une dynamique syncronique.'),
(31, 'COURTOIS', 'ThÃ©rÃ¨se', '8, rue Garnier\n54849 Bazin-la-ForÃªt', '+33 4 06 61 31 55', 'Lorsquâ€™on parle de tous ces points de vues, la congolexicomatisation Ã  forciori, peut partager le kilomÃ©trage provenant d\'une dynamique syncronique.'),
(32, 'SAMSON', 'AnaÃ¯s', '70, impasse Tristan Guillaume\n74587 Navarro', '+33 (0)9 09 34 84 63', 'Comme la coumbacÃ©rie ou le script de Aze, la pÃ©dagogie autour de la GÃ©o Physique Spatiale semble prÃ©valoir le systÃ¨me de Guipoti : 1/B+1/Bâ€™=1/D vers l\'humanisme.'),
(33, 'BERTRAND', 'Suzanne', '81, place Ribeiro\n44336 Pons', '0794971608', 'Imbiber, porter la politique Ã  l\'incognito peut rÃ©glementer la renaissance africaine vers Lovanium.'),
(34, 'PARIS', 'Ã‰ric', '52, avenue Becker\n35166 Turpin', '+33 (0)8 19 54 64 14', 'Mesdames et messieurs fidÃ¨les, la pÃ©dagogie Ã  forciori, tend Ã  catapulter l\'estime du savoir off-shore.'),
(35, 'MAURICE', 'Marianne', '9, rue de Girard\n11825 Mauricenec', '09 23 56 75 85', 'D\'une maniÃ¨re ou d\'une autre, le colloque inter-continentaliste consent Ã  mettre un accent sur la quatripartie dans le prÃ©mice.'),
(36, 'REYNAUD', 'Christophe', '128, place de Chevalier\n24 940 Dupuyboeuf', '0171828969', 'Mesdames et messieurs fidÃ¨les, la congolexicomatisation Ã  l\'Ã©gard de la complexitÃ© sert Ã  gÃ©rer les interchanges vers le monde entier.'),
(37, 'JOLY', 'Nicole', '99, boulevard de Blin\n21 047 Meuniernec', '0731671920', 'Quand on prend les triangles rectangles, la concertation politique vers ce quâ€™on appelle la dynamique des sports oblige Ã  porter d\'avis sur ce qu\'on appelle le panafricanisme dans ces prestances.'),
(38, 'BOUSQUET', 'Yves', '49, boulevard Ã‰douard Delattre\n05 166 Ramos', '+33 (0)1 52 84 23 95', 'La convergence nâ€™est pas la divergence, la contextualisation inter-continentaliste oblige Ã  mettre un accent sur le chicouangue dans Kinshasa.'),
(39, 'FABRE', 'Margot', '97, rue Leleu\n99 206 Costa-la-ForÃªt', '+33 (0)8 91 00 18 90', 'On ne peut pas parler de politique administrative scientifique, le systÃ¨me Ã  forciori, nous incite Ã  tourner la quatripartie dans le prÃ©mice.'),
(40, 'CHARTIER', 'Tristan', 'avenue de Michaud\n26439 Merle', '+33 (0)3 46 45 56 19', 'Se consolidant dans le systÃ¨me de insiding et outsiding, l\'activisme de la ThÃ©orie GÃ©nÃ©rale des Organisations parvient Ã  prÃ©valoir une position axisienne autour des dialogues intercommunautaires.'),
(41, 'CHARLES', 'Anne', '71, rue Schneider\n10 416 Marie', '+33 1 62 89 74 30', 'Comme la coumbacÃ©rie ou le script de Aze, la congolexicomatisation Ã  forciori, sert Ã  prÃ©valoir la quatripartie dans ces prestances.'),
(42, 'PIERRE', 'Laurence', '41, avenue de Weiss\n83911 Masse', '+33 8 29 81 39 73', 'Quand on prend les triangles rectangles, le systÃ¨me indispensable(s) en science et culture nous incite Ã  faceter les interchanges dans la sous-rÃ©gionalitÃ©.'),
(43, 'LAUNAY', 'Denise', '91, avenue de Thibault\n58506 Vincentdan', '03 71 33 57 86', 'Chapitre abstrait 3 du conpendium : l\'ensemble des 5 sens vers ce quâ€™on appelle la dynamique des sports sert Ã  vanter la bijectivitÃ© possÃ©dant la francophonie.'),
(44, 'DOS SANTOS', 'David', '73, impasse Lacroix\n90 457 Berthelot', '+33 (0)1 76 63 77 92', 'ParallÃ¨lement, la congolexicomatisation de la technicitÃ© informatisÃ©e peut intentionner une kermesse vers le monde entier.'),
(45, 'DIDIER', 'Sabine', '84, rue de Arnaud\n08 601 Humbert', '+33 (0)5 10 85 28 91', 'Se consolidant dans le systÃ¨me de insiding et outsiding, la congolexicomatisation de la technicitÃ© informatisÃ©e invite Ã  booster les quatre carrÃ©s fous du fromage vers Lovanium.'),
(46, 'HUET', 'Claudine', '981, chemin Emmanuelle Mathieu\n26158 Dijoux', '+33 6 30 48 77 33', 'Une semaine passÃ©e sans parler du peuple câ€™est errer sans abri, autrement dit l\'ittÃ©rativisme autour de l\'ergonomÃ©trie se rÃ©sume Ã  vanter la quatripartie comme pour le lancement de TroposphÃ¨re V.'),
(47, 'LESAGE', 'Sylvie', '809, avenue Delahaye\n74 205 Hubertnec', '02 95 61 54 15', 'Tandis que la politique est encadrÃ©e par des scientifiques issus de Sciences Po et Administratives, le systÃ¨me indispensable(s) en science et culture semble tourner une kermesse vers l\'humanisme.'),
(48, 'HAMEL', 'CÃ©cile', '20, place de Perrier\n01733 Hubert', '04 99 49 00 41', 'Mesdames et messieurs fidÃ¨les, la rÃ©flexologie des lois du marchÃ© pousse Ã  tourner le conpemdium dans le prÃ©mice.'),
(49, 'FABRE', 'AdÃ©laÃ¯de', '62, avenue de Francois\n59478 Louisnec', '09 64 44 35 86', 'Une semaine passÃ©e sans parler du peuple câ€™est errer sans abri, autrement dit la congolexicomatisation Ã  l\'Ã©gard de la complexitÃ© se rÃ©sume Ã  tourner les quatre carrÃ©s fous du fromage dans les camps militaires non-voyants.'),
(50, 'LOPEZ', 'Margaux', '89, place Susanne Dubois\n56884 Besson-sur-Mer', '04 36 72 66 39', 'La convergence nâ€™est pas la divergence, la dÃ©lÃ©gation autour de la GÃ©o Physique Spatiale pousse Ã  prÃ©valoir le point adjacent dans le prÃ©mice.'),
(51, 'BOUTIN', 'Augustin', 'rue Hortense Rocher\n89 559 Paul', '+33 (0)1 33 41 50 64', 'Tandis que la politique est encadrÃ©e par des scientifiques issus de Sciences Po et Administratives, l\'ensemble des 5 sens Ã  forciori, suffit Ã  partager la renaissance africaine vers Lovanium.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
