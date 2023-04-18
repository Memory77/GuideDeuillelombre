-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 19 juin 2022 à 17:09
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `monblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `des` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `content`, `date`, `des`) VALUES
(1, 'La première quête : Le sacré et le corrompu', 'img/150778-generalissime-darion-mograine.jpg', 'La Deuillelombre est une récompense d\'une suite de quêtes se trouvant dans la <a href=\"https://fr.wowhead.com/icecrown-citadel\" target=\"_blank\">Citadelle de la couronne de glace(ICC)</a>. La première d\'entre elles (<a href=\"https://fr.wowhead.com/quest=24545/le-sacr%C3%A9-et-le-corrompu\" target=\"_blank\">Le sacré et le corrompu</a>) peut être obtenue auprès du <a href=\"https://fr.wowhead.com/npc=37120/g%C3%A9n%C3%A9ralissime-darion-mograine\" target=\"_blank\">Généralissime Darion Mograine</a> se trouvant dans l\'instance.<br> Celui-ci vous demandera de lui rapporter : <br> \r\n<div id=\"items\">\r\n<div class=\"item\">\r\n<img src=\"img/163988-vengeance-de-la-lumiere.jpg\">\r\n<p><a href=\"https://fr.wowhead.com/item=49869/vengeance-de-la-lumi%C3%A8re\" target=\"_blank\">Vengeance de la Lumière</a></p>\r\n</div>\r\n\r\n<br>\r\n\r\n<div class=\"item\">\r\n<img src=\"img/Saro.jpg\">\r\n<p>25x<a href=\"https://fr.wowhead.com/item=49908/saronite-primordiale\" target=\"_blank\">Saronites Primordiales</a></p>\r\n\r\n\r\n</div>\r\n\r\n\r\n      <br>     \r\n\r\n<div class=\"item\">\r\n<img src=\"img/sangpulentraille.png\">\r\n<p><a \r\nhref=\"https://fr.wowhead.com/item=50226/sang-acide-de-pulentraille\" target=\"_blank\">Sang acide de Pulentraille\r\n </a></p>\r\n</div>\r\n         <br>    \r\n\r\n<div class=\"item\">      \r\n<img src=\"img/sangtrocnepus.png\">                    \r\n<p><a href=\"https://fr.wowhead.com/item=50231/sang-acide-de-trognepus\" target=\"_blank\">Sang acide de Trognepus</a></p>\r\n</div>\r\n</div>          \r\n            <br>                        \r\n                                    <p>En récompense, il vous octroiera une petite quantité de PO ainsi que quelques points de réputation auprès de la faction <a href=\"https://fr.wowhead.com/faction=1156/verdict-des-cendres\" target=\"_blank\">Verdict des Cendres</a>.\r\nLe Sang acide de Trognepus et le Sang acide de Pulentraille peuvent uniquement être obtenus en mode 25 joueurs à la Citadelle de la Couronne de glace.\r\n ', '2022-03-21 14:44:06', 'Quête :<br>\r\n\"Au moment de vous confier cette mission, de graves doutes m’étreignent, <race>. Il y a de fortes chances pour que vous ne vous en tiriez pas <vivant/vivante>.<br><br>\r\n\r\nMais si vous ignorez mes avertissements et que vous vous lancez dans cette tâche, je vous fournirai les ressources et les connaissances dont vous aurez besoin.<br><br>\r\n\r\nVous devez retourner dans la caverne de Deuillegivre et y récupérer Vengeance de la Lumière, le marteau qu’Arthas a abandonné. Reforgé en saronite et gravé à l’aide du sang acide des abominations du roi-liche, il servira de base à nos travaux.\"'),
(2, 'La seconde quête : Tranchant de l\'ombre', 'img/tranchant.png', '<a href=\"https://fr.wowhead.com/quest=24743/tranchant-de-lombre\" target=\"_blank\">Tranchant de l\'ombre</a> ne vous demandera que de reparler au Généralissime. Une fois accomplie, elle vous permettra d\'obtenir la première version de l\'arme nommée <a href=\"https://fr.wowhead.com/item=49888/tranchant-de-lombre\" target=\"_blank\">Tranchant de l\'ombre</a> qui est déjà une très bonne hache à deux mains.</p>', '2022-03-21 14:44:06', '<img src=\"img/334177-tranchant-de-lombre.jpg\">'),
(3, 'Troisième quête : Un festin d\'âmes', 'img/890208-un-festin-dames.jpg', ' <p>La troisième quête se nomme <a href=\"https://fr.wowhead.com/quest=24547/un-festin-d%C3%A2mes\" target=\"_blank\">Un festin d\'âmes</a> et vous donnera en récompense quelques PO ainsi que de la réputation auprès du verdict des cendres. Celle-ci vous demande simplement de Bash des mobs en brandissant Tranchant de l\'ombre.</p>', '2022-03-21 14:44:06', 'Quête :\r\n\"Tranchant de l\'ombre est l\'une des armes les plus puissantes qu\'<un/une:c> <classe> puisse espérer obtenir. Votre soif de pouvoir est-elle satisfaite ?<br><br>\r\n\r\n<Vous sentez Mograine vous jauger de son regard pénétrant.><br><br>\r\n\r\nJe pensais bien que non. Alors voici un ultime avertissement...<br><br>\r\n\r\nVous vous engagez maintenant dans l\'étape la plus traître de votre quête. Contrôlez votre ambition, <race>, car si vos intentions ne sont pas pures, alors votre vie, votre âme même, sont perdues.<br><br>\r\n\r\nL\'arme n\'est qu\'une coquille vide, une simple image de ce qu\'elle pourrait devenir.\"'),
(4, 'Quatrième quête : Infusion d\'impie', 'img/155803-professeur-putricide-image-courtesy-of-wow-gamona-de.jpg', '  <p>Pour la quête suivante, la difficulté va commencer à augmenter. En effet, pour l\'accomplir, le <a href=\"https://fr.wowhead.com/npc=37120/g%C3%A9n%C3%A9ralissime-darion-mograine\" target=\"_blank\">Généralissime Darion Mograine</a> vous demandera d\'infuser la hache avec la puissance Impie.Pour se faire, vous devrez vous rendre dans la salle du boss <a href=\"https://fr.wowhead.com/npc=36678/professeur-putricide\" target=\"_blank\">Professeur Putricide</a> et boire la potion de transformation en cliquant sur la table se trouvant devant lui. Une fois métamorphosé, vous devrez boire chaque flaque de limon afin de l\'absorber, ce qui empêchera vos alliés de patoger dedans et ainsi éviter qu\'ils ne prennent des dégats. Une fois la jauge remplie, une nouvelle icône apparaitra alors dans votre barre et vous permettra d\'infuser Tranchant de l\'ombre avec la puissance impie. Petite note, si votre raid wipe sur le boss, vous devrez alors refaire l\'intégralité de ces étapes. Vous l\'aurez compris, cette quête requiert 25 joueurs vous aidant à accomplir votre quête et seulement une seulle personne peut l\'accomplir à la fois, donc une personne par semaine et par raid.</p>', '2022-03-21 14:44:06', 'Avant que votre arme n’atteigne son véritable potentiel, elle doit être imprégnée de ses pouvoirs caractéristiques. Le premier d’entre eux est d’être impie.<br><br>\r\n\r\nVous devez traquer et tuer le professeur Putricide, mais sa mort ne sera pas votre seul objectif. Vous devez vous servir de ses ressources contre lui.<br><br>\r\n\r\nTrouvez un moyen d’absorber sa gelée mutée. Utilisez cette substance immonde pour imprégner votre arme du pouvoir de l’impie. Lorsque ce sera fait, et pas avant, je vous révèlerai votre prochaine tâche.'),
(5, 'Cinquième quête : Infusion de sang', 'img/480909-reine-de-sang-lanathel.jpg', ' <p>La prochaine quête : <a href=\"https://fr.wowhead.com/quest=24756/infusion-de-sang\" target=\"_blank\">Infusion de sang</a>, vous demandera d\'infuser l\'arme avec la puissance du sang. Pour se faire, vous devrez vous rendre avec votre raid dans la salle du boss <a href=\"https://fr.wowhead.com/npc=37955/reine-de-sang-lanathel\" target=\"_blank\">Reine de sang Lana\'thel</a>. Vous devrez alors vous faire mordre en premier. Dès que votre capacité à mordre sera disponible, vous devrez alors mordre un de vos alliés. Au total, vous devrez mordre au moins 3 alliés afin de débloquer la compétence <a href=\"https://fr.wowhead.com/spell=62850/infusion-de-sang\" target=\"_blank\">Infusion de sang</a>. Petite note, si votre raid wipe sur le boss, vous devrez alors refaire l\'intégralité de ces étapes. Vous l\'aurez compris, cette quête requiert 25 joueurs vous aidant à accomplir votre quête et seulement une seulle personne peut l\'accomplir à la fois, donc une personne par semaine et par raid.</p>', '2022-03-01 20:01:56', '\"Votre arme est désormais prête à être imprégnée par la puissance du sang.<br><br>\r\n\r\nVous devez affronter la reine Lana’thel et vous soumettre à son Miroir de sang. Cela poussera Tranchant de l’ombre à boire le sang de la créature vivante la plus proche. Cette créature doit être vous, <race>.<br><br>\r\n\r\nLorsque la lame s\'éveillera, laissez-vous porter par la soif de sang frénétique de la reine, nourrissez la lame par trois fois afin de rassasier ses appétits et donnez à la reine une mort ignominieuse.<br><br>\r\n\r\nPuissent ses cris résonner longtemps aux oreilles du roi-liche, en attendant que son destin le rattrape.\"'),
(6, 'Sixième quête : Infusion de givre', 'img/163518-sindragosa.jpg', '<p>Pour la prochaine quête, le <a href=\"https://fr.wowhead.com/npc=37120/g%C3%A9n%C3%A9ralissime-darion-mograine\" target=\"_blank\">Généralissime</a> vous demandera d\'infuser maintenant l\'arme avec la dernière puissance, la puissance du givre. Pour se faire, vous devrez vous rendre dans la salle de <a href=\"https://fr.wowhead.com/npc=36853/sindragosa\" target=\"_blank\">Sindragosa</a>, la légendaire wyrm du Roi Liche. Vous devrez vous placer devant elle pendant le combat afin d\'être frappé par le <a href=\"https://fr.wowhead.com/spell=69649/souffle-de-givre\" target=\"_blank\">Souffle de givre</a>. Une fois que vous en aurez \"tanker\" quatre, vous debloquerez la compétence <a href=\"https://fr.wowhead.com/spell=72292/infusion-de-givre\" target=\"_blank\">Infusion de givre</a>. Une fois l\'arme infusée, il ne vous reste plus qu\'à Down le boss et vous pourrez maintenant entamer la dernière ligne droite de cette suite de quête.</p>', '2022-01-10 23:21:04', 'Tranchant de l’ombre est prêt pour l’ultime imprégnation de pouvoir.<br><br>\r\n\r\nSindragosa, la monture de notre ennemi, doit mourir. Mais avant de l’abattre, vous devrez supporter quatre de ses souffles gelés sans succomber.<br><br>\r\n\r\nLorsqu’il aura été privé de son dragon, rien ne se dressera plus entre nous et le roi-liche.'),
(7, 'Une dernière ligne droite : Le trône brisé', 'img/eclat-givre-ombre.png', '<p>Pour la prochaine quête <a href=\"https://fr.wowhead.com/quest=24548/le-tr%C3%B4ne-bris%C3%A9\" target=\"_blank\">Le trône brisé</a>, celle si vous demandera de la patience et du travail. En    effet cette dernière vous demandera 50 <a href=\"https://fr.wowhead.com/item=50274/%C3%A9clat-givre-ombre\" target=\"_blank\">Eclats givre-ombre</a> qui peuvent être parfois obtenu sur les différents boss en difficulté 25nm minimum. Le travail en vaut la peine. Courage, bientôt vous brandirez <a href=\"https://fr.wowhead.com/item=49623/deuillelombre\" target=\"_blank\">Deuillelombre</a> et vous aurez la meilleure arme de l\'extension WOTLK.</p>', '2022-01-10 23:16:37', 'Quête :\r\n\"Le trône du roi-liche a été sa prison. Kil’jaeden en personne a fabriqué cette enveloppe de cristaux de glace à partir du Néant distordu. Son unique raison d’être est de retenir captif l’esprit assoiffé de vengeance de Ner’zhul.<br><br>\r\n\r\nLorsque Arthas a frappé le cristal avec Deuillegivre, il a libéré l’âme de Ner’zhul, qui a fusionné avec la sienne. Des éclats datant de cet évènement ont été dispersés dans toute la citadelle.<br><br>\r\n\r\nJe vais en avoir besoin pour sceller la puissance de votre lame. Ils sont aux mains des serviteurs les plus puissants du roi-liche.\"'),
(8, 'La récompense tant attendue', 'img/dlombree.png', '<p>Mes félicitations, vous avez effectuer toutes les quêtes nécessaires afin d\'obtenir votre arme. Il ne vous reste plus qu\'à rapporter Tranchant de l\'ombre au Généralissime et celui-ci vous récompensera de la précieuse et tant désirée <a href=\"https://fr.wowhead.com/item=49623/deuillelombre\" target=\"_blank\">Deuillelombre</a>.</p>\r\n <p>En tant que dernière <a href=\"https://fr.wowhead.com/quest=24748/le-dernier-rempart-du-roi-liche\" target=\"_blank\">quête</a>, Darion vous demandera d\'aller occire le Roi-Liche. Attention, cela n\'étant pas précisé, mais pour valider la quête, vous devrez le tuer en mode de difficulté 25 joueurs NM ou HM. Vous n\'êtes pas forcé d\'être equipé de la Deuille pour valider cette quête.</p>', '2022-01-10 23:16:37', 'Quête optionnelle : Le dernier rempart du roi-liche<br><br>\r\nCette quête vous demande de tuer le roi liche.<br><br>\r\nRécupérez sur le corps encore chaud du Roi-Liche le Coffre scellé. Rapportez-le à Margraine, vous obtiendrez en échange un Coffre non scellé.<br>\r\nCe coffre contient 5 objets et chacun permet de lancer une quête. Toutes les récompenses proposées peuvent être vendues à l’hôtel des ventes !<br><br>\r\n<ul>\r\n<li><a href=\"https://fr.wowhead.com/item=51317/%C3%A9clat-d%C3%A2me-dalexandros\" target=_blank >Eclat d’âme d’Alexandros</a> pour obtenir les <a href=\"https://fr.wowhead.com/item=52200/r%C3%AAnes-de-destrier-de-la-mort-cramoisi\" target=_blank >Rênes de destrier de la mort cramoisi</a></li>\r\n<li><a href=\"https://fr.wowhead.com/item=51321/sang-de-sylvanas\" target=_blank >Sang de Sylvanas</a> pour récupérer la <a href=\"https://fr.wowhead.com/item=52253/bo%C3%AEte-%C3%A0-musique-de-sylvanas\" target=_blank >Boîte à musique de Sylvanas</a> </li>\r\n<li><a href=\"https://fr.wowhead.com/item=51319/ep%C3%A9e-dentra%C3%AEnement-darthas\" target=_blank >Epée d’entraînement d’Arthas</a> pour obtenir la <a href=\"https://fr.wowhead.com/item=52201/faveur-de-muradin\" target=_blank >Faveur de Muradin</a></li>\r\n<li><a href=\"https://fr.wowhead.com/item=51318/m%C3%A9daillon-de-jaina\" target=_blank >Médaillon de Jaina</a> pour obtenir le <a href=\"https://fr.wowhead.com/item=52251/m%C3%A9daillon-de-jaina\" target=_blank >Médaillon de Jaina</a></li>\r\n<li><a href=\"https://fr.wowhead.com/item=51320/ecusson-de-la-main-dargent\" target=_blank >Ecusson de la Main d’argent</a> pour le <a href=\"https://fr.wowhead.com/item=52252/tabard-du-porteur-de-lumi%C3%A8re\" target=_blank >Tabard du porteur de Lumière</a> </li><br><br>\r\nPour obtenir le jouet, cliquez sur le <a href=\"https://fr.wowhead.com/item=51321/sang-de-sylvanas\" target=_blank >Sang de Sylvanas</a> pour lancer la quête <a href=\"https://fr.wowhead.com/item=52200/r%C3%AAnes-de-destrier-de-la-mort-cramoisi\" target=_blank >La vengeance de Sylvanas</a>. Vous obtiendrez en récompense la <a href=\"https://fr.wowhead.com/item=52253/bo%C3%AEte-%C3%A0-musique-de-sylvanas\" target=_blank >Boîte à musique de Sylvanas</a>.\r\n</ul><br><br>\r\n\r\n\r\n\"Deuillelombre, une arme nouvellement forge, mais déjà liée à l’histoire du monde, née une seconde fois pour un destin sans égal.<br<br>\r\n\r\nCette arme vous confère une très lourde responsabilité, et le moment est venu de l’endosser.<br><br>\r\n\r\nPrenez cette arme mythique et légendaire, et marchez sus à l’ennemi. Vengez les innombrables héros qui ont été victimes de cette sanglante campagne. Apportez le repos à leurs âmes torturées.<br><br>\r\n\r\nEndurcissez-vous, <classe>, et guidez Deuillelombre jusqu’à ce qu’elle ait rempli le rôle pour lequel elle a été créée.\"');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `articleId` int(11) UNSIGNED DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `date` datetime DEFAULT NULL,
  `author` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `articleId` (`articleId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `articleId`, `comment`, `date`, `author`) VALUES
(1, 7, 'pas mal', '2022-01-12 21:41:18', 'deb'),
(2, 6, 'hey', '2022-02-28 17:52:32', 'joee'),
(3, 6, 'yoooo\r\n', '2022-02-28 20:06:14', 'deb'),
(4, 5, 'fgdfg', '2022-03-07 15:30:03', 'deb'),
(5, 7, 'hj', '2022-06-15 11:20:32', 'hj'),
(6, 7, 'kj', '2022-06-15 11:20:37', 'kj'),
(7, 7, 'kj', '2022-06-15 11:20:44', 'j');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`articleId`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
