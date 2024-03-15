-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 26 oct. 2023 à 13:44
-- Version du serveur : 8.0.31
-- Version de PHP : 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `inscic`
--

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `more_informations` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_best` tinyint(1) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name_product`, `description`, `more_informations`, `price`, `is_best`, `is_new`, `image`, `created_at`, `slug`) VALUES
(1, 'Cancérologie', 'L\'officiel réalisé par le Collège National des Enseignants en Cancérologie (CNEC) pour les étudiants du DFASM', 'L\'ouvrage officiel réalisé par le Collège National des Enseignants en Cancérologie (CNEC) pour les étudiants du DFASM. Conçu et rédigé par près de 100 enseignants de Cancérologie. Tout le nouveau programme de connaissances de la spécialité pour la R2C et les modules du DFASM, avec la nouvelle numérotation. Pour chaque item, les objectifs de connaissances hiérarchisés en rang A et rang B (dans un tableau en début d\'item et tout au long de l\'item grâce à un repérage couleur). Toutes les situations de départ en lien avec les différents objectifs de connaissances (tout au long de l\'item grâce à un repérage couleur, et à la fin de l\'item dans un tableau récapitulatif). Une iconographie abondante pour faciliter l\'apprentissage.', 3900, 0, 1, '0bc21636cc838848b7f2839029bf1d09b1016c6e.jpg', '2023-10-11 10:27:24', 'cancerologie'),
(2, 'Biologie', 'Référence majeure pour les étudiants et enseignants en SVT', 'Ce livre est une référence majeure pour les étudiants et enseignants en SVT. Très didactique, il propose une approche progressive et complète de cette discipline en constante évolution.\r\nCette 5e édition française -adaptation de l\'édition américaine Biology, de Peter Raven- est reconnue comme une référence en la matière. Très didactique, ce livre propose une approche progressive et complète de la biologie, discipline en constante évolution.\r\nDans cette nouvelle édition, actualisée et encore améliorée, certains thèmes ont été davantage développés, comme par exemple le chapitre sur les plantes, la génomique et les biotechnologies.\r\nLes qualités didactiques et iconographiques qui ont fait le succès des éditions précédentes ont encore été améliorées.\r\nUne approche fondée sur l\'observation et l\'expérimentation :\r\nPlus de 2500 photos et illustrations en couleurs\r\nUn glossaire de plus de 1000 termes', 7500, 0, 0, '2b140590c66c048584ad1bfedb0c28373299b6ec.jpg', '2023-10-11 10:44:10', 'biologie'),
(3, 'Génétique', 'La richesse coutumière d\'Introduction à l\'analyse génétique', 'La richesse coutumière d\'Introduction à l\'analyse génétique, assortie de chapitres profondément remaniés sur l\'ARN interférence, la génomique, la génétique des populations, la transmission de caractères complexes et l\'évolution.\r\nCe manuel de référence couvre aussi bien l\'approche classique que contemporaine de la génétique, en insistant sur la démarche expérimentale et l\'analyse rigoureuse des résultrats comme outils d\'apprentissage de la génétique certes, mais aussi comme formation de l\'esprit scientifique.', 11200, 0, 0, '93915b2fc7e1523c4c130686f747be8f6e643f1f.jpg', '2023-10-11 10:48:12', 'genetique'),
(4, 'Mathématique', 'Permettre aux étudiants en MPSI ou MP2I de réviser leur cours de Mathématiques', 'Cet ouvrage a pour objectifs de permettre aux étudiants en MPSI ou MP2I de réviser leur cours de Mathématiques et de l\'assimiler par la mise en application des notions. Dans chaque chapitre, correspondant à peu près à une semaine de cours, le lecteur trouvera notamment :\r\n\r\nLe résumé de cours et les méthodes, pour assurer ses connaissances ;\r\nLe vrai/faux pour tester sa compréhension du cours et éviter de tomber dans les erreurs classiques ;\r\nLes exercices corrigés, souvent tirés de sujets d\'annales, pour s\'entraîner aux concours.\r\nAvec un seul livre par année et par matière, la collection PRÉPAS SCIENCES vous guidera, jour après jour, dans votre cheminement vers la réussite aux concours', 4900, 0, 0, 'c65e2e59520c36427d6ca7898e3a7d8e32c302e5.jpg', '2023-10-11 10:50:15', 'mathematique'),
(5, 'Astronomie Astrophysique', 'Les lois fondamentales qui régissent les états de la matière et leur rayonnement.', 'Cet ouvrage aborde les lois fondamentales qui régissent les états de la matière et leur rayonnement, ainsi que celles dédiées aux positions et aux mouvements des astres. Le développement des instruments d’observation au sol et dans l’espace enrichit notre analyse par de superbes images et spectres inédits, révélant de nouvelles faces d’objets connus, et nous amène aussi à découvrir d’étranges et puissants émetteurs cosmiques (rayons X et gamma, ondes gravitationnelles). Ainsi, nous pouvons mieux comprendre l’architecture de l’Univers, les propriétés et l’histoire des étoiles (en interaction avec la matière interstellaire) et des galaxies, ainsi que l’évolution cosmique et la complexification de la matière.\r\n\r\n\r\nCette nouvelle édition est complétée et largement mise à jour à partir des observations les plus récentes, notamment celles consacrées aux exoplanètes. Les termes et les calculs utilisés sont simples (niveau baccalauréat) ; les données numériques sont extraites de sources récentes et fiables.\r\n\r\nL’ouvrage s’adresse en particulier aux étudiants en Licence 3 ou Master de physique, ainsi qu’aux enseignants, et à tous les amateurs passionnés d’astronomie. Ils trouveront dans cette cinquième édition la documentation nécessaire pour mieux connaître le ciel, observer les phénomènes et en comprendre les mécanismes.', 4500, 0, 0, '7f0d32dacf90334170bdb71d4d16987792c59761.jpg', '2023-10-11 10:51:52', 'astronomie-astrophysique'),
(6, 'ChatGPT pour les Nuls', 'Tout savoir sur l\'outil d\'intelligence artificielle générative dont tout le monde parle', 'Pour tout savoir sur l\'outil d\'intelligence artificielle générative dont tout le monde parle et qui est en passe de révolutionner le monde des affaires et de la connaissance.\r\nINTRODUCTION À L\'INTELLIGENCE ARTIFICIELLE :\r\n\r\nPour tout savoir sur l\'outil d\'intelligence artificielle générative dont tout le monde parle et qui est en passe de révolutionner le monde des affaires et de la connaissance.\r\n\r\nVous entendez parler de ChatGPT tous les jours depuis des semaines. Cet outil développé par la société OpenAI génère des textes à partir de simples requêtes saisies par l\'utilisateur sur tous les sujets possibles, ce qui ouvre des perspectives inédites aussi bien pour transmettre le savoir que pour communiquer.\r\n\r\nCet ouvrage pour les Nuls, premier livre en français sur le sujet vous révèle tous les secrets de ChatGPT : comment il fonctionne, comment rédiger les bonnes questions et comment l\'intégrer dans votre activité professionnelle. Vous découvrirez également d\'autres outils concurrents d\'intelligence artificielle générative.\r\n\r\nPOUR TOUT SAVOIR SUR CHATGPT :\r\n\r\nCe livre d\'informatique pour les Nuls s\'adresse à tous ceux qui veulent découvrir l\'intelligence artificielle, et apprendre à utiliser ChatGPT.\r\n\r\nL\'intelligence artificielle s\'annonce comme la révolution du siècle, et est en passe de transformer la société en profondeur. Que vous soyez néophytes ou passionnés de ce sujet, ChatGPT pour les Nuls vous donnera toutes les clés pour comprendre et devenir un maître des prompts.\r\n\r\nUTILISEZ CHATGPT DANS LA VIE DE TOUS LES JOURS :\r\n\r\nGrâce à notre livre d\'informatique, vous serez capable de comprendre et d\'utiliser ChatGPT dans votre quotidien. Que ce soit lié à votre activité professionnelle, ou simplement dans votre vie personnelle, n\'hésitez plus et rejoignez la révolution de l\'intelligence artificielle.\r\n\r\nChatGPT pour les Nuls balayera toutes les caractéristiques de cette IA générative, de la rédaction du prompt à ses spécificités, et fera de vous un véritable pro de cet outil !', 2295, 0, 0, 'a636d9c651dce3ea16923618482a8802111a448d.jpg', '2023-10-11 10:54:46', 'chatgpt-pour-les-nuls'),
(7, 'Eléments de géologie', 'Grand classique articulé en 37 modules de cours, il offre un panorama complet des Sciences de la Terre et de l\'Univers.', 'Ce manuel est un grand classique. Articulé en 37 modules de cours, il offre un panorama complet des Sciences de la Terre et de l\'Univers, du Big Bang à l\'origine de l\'Homme en passant par toutes les disciplines des Sciences de la Terre (tectonique des plaques, géologie structurale, géophysique, minéralogie, pétrographie, géochimie, géomorphologie, sédimentologie...). Cette 17e édition, en couleur a été actualisée. De nombreux photo-reportages, téléchargeables sur dunod.com, accompagnent cet ouvrage de référence.', 5900, 0, 0, '332ddefa91b206c1fff20aa6d98766c6ca2332e7.jpg', '2023-10-11 10:57:30', 'elements-de-geologie'),
(8, 'Minéralogie', 'Cette encyclopédie des trésors de la Terre présente tous les types de roches, de minéraux, de fossiles et de coquillages.', 'Cette encyclopédie des trésors de la Terre présente tous les types de roches, de minéraux, de fossiles et de coquillages. De superbes photographies permettent d\'admirer les pierres les plus fines, les fossiles les plus étonnants et les coquillages les plus exotiques. La formation de tous ces trésors est expliquée. Les sites naturels où l\'on peut les trouver sont décrits. Leurs usages dans les sciences, les arts, l\'industrie ou la construction sont signalés.', 5900, 0, 0, 'd90d3ea512ffe831b740c81ca1dd075c20b6d2ec.jpg', '2023-10-11 10:59:45', 'mineralogie'),
(9, 'Tout sur les réseaux et Internet', 'Cet ouvrage présente les différentes notions à connaître pour être en mesure de mettre en place, de gérer, de sécuriser et de dépanner un réseau.', 'Autrefois réservés aux seules entreprises, les réseaux concernent aujourd’hui tous les utilisateurs d’ordinateurs, notamment les particuliers connectés à Internet.\r\nCet ouvrage présente les différentes notions à connaître pour être en mesure de mettre en place, de gérer, de sécuriser et de dépanner un réseau, indépendamment du système d’exploitation utilisé (Windows, macOS ou Linux). Il permettra au lecteur de parfaire sa connaissance du sujet et d’en comprendre les différents aspects, notamment dans un contexte professionnel.\r\nCette 5e édition actualisée fait le point sur les récentes évolutions du domaine, notamment en matière de protocoles WiFi et de réseaux mobiles avec l’arrivée de la 5G.', 1290, 0, 0, '6d03a0e2f00c9592c43a3d3d3dacbbafc7dc460b.jpg', '2023-10-11 11:01:48', 'tout-sur-les-reseaux-et-internet'),
(10, 'Alimentation, nutrition et régimes', 'La Bible du Nutritionniste, au cœur de la collection Diététique et Nutrition Humaine.', 'Les connaissances, les méthodes et leurs applications. La Bible du Nutritionniste, au cœur de la collection Diététique et Nutrition Humaine a un unique but : votre réussite.\r\nTout y est utile. Vous trouverez ici la totalité de ce que vos patients attendent et de ce qu\'un jury d\'examen peut vous demander. Rien n\'est laissé au hasard. Tout avoir sous la main et sous les yeux pour organiser et cadencer votre travail comme vous le souhaitez, à votre rythme. Cet ouvrage vous permet d\'être autonome tout au long de votre carrière de Diététicien Nutritionniste. Vous y trouverez : les cours détaillés, les exercices d\'applications indispensables et l\'ensemble du vocabulaire utilisé en Diététique et Nutrition si précieux pour l\'examen comme pour le monde du travail.', 4900, 0, 0, 'a8a292bb5036965175f9fae5c5474e999f0a4e96.jpg', '2023-10-11 12:04:59', 'alimentation-nutrition-et-regimes'),
(11, 'Diététique de la musculation', 'Bénéficier de la grande expertise et de l\'expérience de Olivia et Mompo sur le terrain pour la mise en place d\'une nutrition optimisée et raisonnée.', 'Cet ouvrage est le fruit de la rencontre entre Olivia Meeus, diététicienne nutritionniste, et Frédric Mompo, entraîneur national de culturisme et préparateur physique, spécialistes reconnus dans le monde du sport et de la musculation. Également athlètes de haut niveau, ils vous font bénéficier de leur très grande expertise et de leur expérience sur le terrain pour la mise en place d\'une nutrition optimisée et raisonnée. Masse, force, perte de graisse, santé, performance : ce guide pratique de référence vous fournit des conseils facilement applicables en fonction des objectifs que vous souhaitez atteindre. Accessible à tous, corrigeant les idées reçues et expliquant clairement les règles alimentaires fondamen-tales, il vous apporte les solutions concrètes et personnalisables pour réussir votre « diet » dans n\'importe quelle circonstance. Résultat d\'une démarche novatrice accordant une place essentielle à la santé et aux modes actuels d\'alimentation, voici le support indispensable à toute personne pratiquant la musculation qui souhaite suivre une diététique adaptée pour des résultats durables.', 2495, 0, 0, '4582b6880751847d3ddbbfc4e2c9b7fdb0630dd0.jpg', '2023-10-11 12:08:32', 'dietetique-de-la-musculation'),
(12, 'Divertissement - Villes et infrastructures', 'Shintaro Kago brille une fois de plus par sa déclinaison unique de l\'absurde et du grotesque au service de son humour décalé.', 'Dans ce nouveau recueil de nouvelles faisant partie du même triptyque que Ibutsu konnyû (Seirin Kogeisha) et Une collision accidentelle sur le chemin de l\'école peut-elle donner lieu à un baiser ? (disponible chez IMHO) , Shintaro Kago brille une fois de plus par sa déclinaison unique de l\'absurde et du grotesque au service de son humour décalé. Si l\'auteur s\'amuse de nos éclats de rire ou de nos sursauts de dégoût, il ne manque pas de pointer du doigt les travers de nos sociétés, sans jamais se départir de son esprit railleur.', 1800, 0, 0, 'f6ea65317a18fdcaad62f6809c9172c0ec9696e4.jpg', '2023-10-11 12:14:05', 'divertissement-villes-et-infrastructures'),
(13, 'Le Rat géant de l\'hôtel Saint-Pol', 'Une nouvelle enquête d\'Edward Holmes dans le Paris du XVe siècle sur les traces d\'une bête sanguinaire.', 'Novembre 1425, Paris est devenue une ville anglaise. Le royaume de France est scindé en deux, partagé entre les Bourguignons, alliés des Anglais, et les Armagnacs qui tentent de reprendre le pouvoir. En ces temps de troubles où règnent la violence et la misère, un crime des plus étranges a été commis. Au cœur de la nuit, un hôtel bourgeois parfaitement clos a été cambriolé et un homme a trouvé la mort. En constatant les mutilations qu\'a subi la victime, le commissaire chargé de l\'enquête en est sûr : le coupable ne peut pas être humain. Selon lui, le meurtre ne peut-être que l\'œuvre d\'un rat... un rat gigantesque ! Mais le célèbre clerc Edward Holmes, réputé pour ses capacités à résoudre les affaires les plus difficiles, ne se satisfait pas de cette théorie et entend bien trouver une explication plus plausible. Son pragmatisme va pourtant être mis à rude épreuve. Se pourrait-il qu\'un tel monstre se promène en plein cœur de Paris ?', 830, 0, 0, '6ea492d64a1382d7e14f7c62d35c1b63b4a8d775.jpg', '2023-10-11 12:16:16', 'le-rat-geant-de-lhotel-saint-pol'),
(14, 'Le Trône de fer l\'Intégrale (A game of Thrones) Tome 1', 'Le royaume des Sept Couronnes est sur le point de connaître son plus terrible hiver', 'Le royaume des Sept Couronnes est sur le point de connaître son plus terrible hiver : par-delà le Mur qui garde sa frontière nord, une armée de ténèbres se lève, menaçant de tout détruire sur son passage. Mais il en faut plus pour refroidir les ardeurs des rois, des reines, des chevaliers et des renégats qui se disputent le trône de fer. Tous les coups sont permis, et seuls les plus forts, ou les plus retors, s en sortiront indemnes…', 2200, 0, 0, '7da07ad0d131cacf83058031f8fc7dab349afcef.jpg', '2023-10-11 12:20:12', 'le-trone-de-fer-lintegrale-a-game-of-thrones-tome-1'),
(15, 'La Force qui est en Toi', 'Un formidable livre d\' histoires inspirantes pour enfants 6 - 10 ans : Apprendre la confiance en soi, le courage, l\'amitié et l\'altruisme.', '\"Un livre que chaque enfant devrait avoir dans sa bibliothèque\"\r\nElise, assistante maternelle et maman de Enzo 7 ans et Lucie 9 ans\r\n\r\nDonne le gout de la lecture\r\n\r\nCe livre, composé de 8 histoires captivantes et inspirantes, met en scène des enfants qui explorent des valeurs à travers leurs propres expériences. Les lecteurs et lectrices pourront s\'identifier facilement aux héros des histoires et se sentir encouragés à découvrir le monde qui les entoure. Ce livre est parfait pour initier vos enfants à la lecture en autonomie, à du CP au CE2.\r\n\r\nDéveloppe la force intérieure\r\nLe meilleur outil pour apprendre aux enfants à faire preuve de courage et de persévérance, à prendre des décisions éclairées et à cultiver une attitude positive. Ces récits sont conçu pour les distraire mais aussi les aider à comprendre les valeurs essentiels à leur adaptation sociale. C\'est un moyen merveilleux pour encourager les enfants à développer leur force intérieure en autonomie.\r\n\r\nInculque les valeurs importantes\r\nOffrez à votre enfant un livre riche en histoires inspirantes qui l’aideront à développer des valeurs comme le courage, l\'entraide, l\'amitié, l\'altruisme et la confiance. À la fin de chaque histoire, il trouvera un coloriage amusant et des questions qui l\'inciteront à réfléchir sur la valeur étudiée.', 1095, 0, 0, '1d005564e901ccd64e93f66202324b79ef100dc0.jpg', '2023-10-11 12:22:35', 'la-force-qui-est-en-toi');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;