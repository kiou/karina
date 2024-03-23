-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : sam. 23 mars 2024 à 15:24
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `crusandmar`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

DROP TABLE IF EXISTS `actualite`;
CREATE TABLE IF NOT EXISTS `actualite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `created`, `changed`, `titre`, `slug`, `image`, `resume`, `contenu`, `is_active`, `language`) VALUES
(2, '2024-01-29 16:42:29', '2024-03-23 12:28:57', 'Perdu dans les méandres du renouvellement de vos papiers d\'identité ? je t\'accompagne', 'qsdqsdqsdqsdqs', 'wallpaperflare-com-wallpaper-1706546549.jpg', 'Si tu dois mettre à jour ou renouveler l\'adresse de ta carte grise, de ton permis de conduire ou de ta carte d\'identité, aucun problème, je t\'accompagne.', '<p>qsdsqdsqdqs</p>', 1, 'en'),
(3, '2024-02-18 07:59:02', '2024-03-23 12:28:53', 'Tous les jours y\'a des surprises (gravure laser)', 'tous-les-jours-ya-des-surprises-gravure-laser', 'img-3591-1703347474-1708243142.jpg', 'Accompagnement de Laure Chalabreysse dans son atelier de chantournage à Chomérac pour l\'installation d\'une imprimante laser.', '<p>Accompagnement de Laure Chalabreysse dans son atelier de chantournage &agrave; Chom&eacute;rac pour l&#39;installation d&#39;une imprimante laser.</p>', 1, 'en');

-- --------------------------------------------------------

--
-- Structure de la table `block`
--

DROP TABLE IF EXISTS `block`;
CREATE TABLE IF NOT EXISTS `block` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `block`
--

INSERT INTO `block` (`id`, `created`, `changed`, `title`, `content`, `language`) VALUES
(2, '2024-03-23 12:55:44', NULL, 'Quality Home EN', '<p>All our shrimps&rsquo; products follow a strict quality control with the certainty of offering shrimp with a high lever of food safety.</p>\r\n\r\n<p>We are a reference of vannamei shrimp qualit</p>', 'en'),
(3, '2024-03-23 13:23:18', '2024-03-23 13:23:25', 'Philosophy Home EN', '<p style=\"text-align:justify\">Our philosophy is to continue promoting more sustainable practices in the shrimp market with a close collaboration between our producers and our customers through sustainable supply chain.</p>', 'en'),
(4, '2024-03-23 14:08:50', NULL, 'Vidéo Home EN', '<p>Lorem ipsum dolor sit amet consectetur. Libero viverra lorem posuere facilisis venenatis. Ut bibendum vulputate tortor magna est faucibus non. Mus faucibus dignissim sagittis non. Et vestibulum volutpat odio mauris porta. Sit ornare quis id volutpat hac phasellus lacinia volutpat.</p>', 'en'),
(5, '2024-03-23 14:20:57', NULL, 'Footer EN', '<p>Lorem ipsum dolor sit amet consectetur. Libero viverra lorem posuere facilisis venenatis. Ut bibendum vulputate tortor magna est faucibus non. Mus faucibus dignissim sagittis non.</p>', 'en'),
(6, '2024-03-23 15:08:54', '2024-03-23 15:09:35', 'Contact header EN', '<p>Lorem ipsum dolor sit amet consectetur. Libero viverra lorem posuere facilisis venenatis. Ut bibendum vulputate tortor magna est faucibus non. Mus faucibus dignissim sagittis non. Et vestibulum volutpat odio mauris porta. Sit ornare quis id volutpat hac phasellus lacinia volutpat. Dictum risus tellus imperdiet id posuere.</p>', 'en'),
(7, '2024-03-23 15:13:52', '2024-03-23 15:15:23', 'Contact EN top formulaire', '<p>Contact us for a quote, Help or to join the team.</p>', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240129100323', '2024-01-29 10:03:26', 61),
('DoctrineMigrations\\Version20240129163130', '2024-01-29 16:31:38', 72),
('DoctrineMigrations\\Version20240129164331', '2024-01-29 16:43:35', 16),
('DoctrineMigrations\\Version20240129164903', '2024-01-29 16:49:07', 44),
('DoctrineMigrations\\Version20240130155532', '2024-01-30 15:55:35', 15),
('DoctrineMigrations\\Version20240207141121', '2024-02-07 14:11:27', 75),
('DoctrineMigrations\\Version20240211144242', '2024-02-11 14:42:46', 46),
('DoctrineMigrations\\Version20240211213540', '2024-02-11 21:35:56', 60),
('DoctrineMigrations\\Version20240211214151', '2024-02-11 21:41:54', 15),
('DoctrineMigrations\\Version20240215104006', '2024-02-15 10:40:10', 74),
('DoctrineMigrations\\Version20240215104156', '2024-02-15 10:42:00', 28),
('DoctrineMigrations\\Version20240217133334', '2024-02-17 13:33:44', 48),
('DoctrineMigrations\\Version20240217134352', '2024-02-17 13:43:55', 41),
('DoctrineMigrations\\Version20240217155711', '2024-02-17 15:57:13', 13),
('DoctrineMigrations\\Version20240323125502', '2024-03-23 12:55:10', 40);

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE IF NOT EXISTS `entreprise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entreprise`
--

INSERT INTO `entreprise` (`id`, `name`, `adresse`, `email`, `telephone`, `facebook`, `instagram`, `created`, `changed`, `language`, `youtube`) VALUES
(1, 'Crus & Mar', '121 Rock Street, 21 Avenue, New York, NY 92103 - 9000', 'hello@company.com - support@company.com', '1 (234) 567 891 - 1 (234) 987 654', 'https://www.facebook.com/pinelli.luc/', 'https://www.instagram.com/informatique.avec.vous/', '2024-02-17 15:55:37', NULL, 'en', 'https://www.youtube.com/@CrusAndMar');

-- --------------------------------------------------------

--
-- Structure de la table `galeries`
--

DROP TABLE IF EXISTS `galeries`;
CREATE TABLE IF NOT EXISTS `galeries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `galeries`
--

INSERT INTO `galeries` (`id`, `created`, `changed`, `title`, `image`, `is_active`, `language`) VALUES
(1, '2024-02-11 15:01:24', NULL, 'Photo 1', 'dsc03437-1711203635.jpg', 1, 'en'),
(2, '2024-02-11 15:17:37', NULL, 'Photo2', 'dsc03437-1711203542.jpg', 1, 'en'),
(3, '2024-02-11 15:18:47', NULL, 'Photo 3', 'dsc03437-1711203491.jpg', 1, 'en'),
(4, '2024-02-11 15:19:36', NULL, 'Photo 4', 'dsc03376-1711203427.jpg', 1, 'en'),
(5, '2024-02-11 15:20:57', NULL, 'Photo 5', 'dsc03449-1711203346.jpg', 1, 'en');

-- --------------------------------------------------------

--
-- Structure de la table `header`
--

DROP TABLE IF EXISTS `header`;
CREATE TABLE IF NOT EXISTS `header` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accroche` longtext COLLATE utf8mb4_unicode_ci,
  `lien` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `header`
--

INSERT INTO `header` (`id`, `created`, `changed`, `title`, `image`, `accroche`, `lien`, `is_active`, `language`) VALUES
(1, '2024-01-29 16:54:58', '2024-03-23 14:43:03', 'Welcome', 'dsc03376-1711199054.jpg', 'The best shrimp in the world is Ecuadorian for only one reason, its flavor.\r\nWe are producers of Litopenaeus Vannamei (white shrimp), exporters and importers for North America and the world.\r\nFor more than 30 years we have provided a sustainable and quality product.', '/en/page/our-story/7', 1, 'en');

-- --------------------------------------------------------

--
-- Structure de la table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accroche` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `page`
--

INSERT INTO `page` (`id`, `created`, `changed`, `titre`, `slug`, `contenu`, `image`, `language`, `accroche`) VALUES
(1, '2024-02-11 21:39:42', '2024-03-23 14:58:56', 'Quality', 'quality', '<p><strong>We have a team of experts in quality control from captive breeding, plant processing to subsequent export and import.</strong></p>\r\n\r\n<p><strong>Our modern infrastructure and advanced equipment allows us to comply with rigid international food safety standards, guaranteeing traceability and safety.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Our daily objective is to offer quality, both in terms of our services and our products.</p>\r\n\r\n<p>Throughout our commercial process, we have defined our quality policies as the foundation of our shrimp farms, processing plant and wholesaler.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>We have different distinctions for our products.</p>\r\n\r\n<p><img alt=\"\" src=\"/img/ckeditor/Nouveau%20projet.png\" style=\"height:100px; width:458px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/img/ckeditor/WhatsApp%20Image%202023-09-16%20at%2017.18.47.jpg\" style=\"height:1973px; width:1920px\" /></p>', 'dsc03464-1711200476.jpg', 'en', 'All our shrimps’ products follow a strict quality control with the certainty of offering shrimp with a high lever of food safety.\r\n\r\nWe are a reference of vannamei shrimp qualit'),
(2, '2024-02-15 11:15:12', '2024-03-23 13:38:41', 'Philosophy', 'philosophy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean libero diam, mattis ut leo venenatis, ornare feugiat tellus. Praesent ut ipsum purus. Duis bibendum ultricies turpis vitae mattis. Curabitur eget libero scelerisque, aliquet eros eu, tempor erat. Nunc purus lorem, tempor quis egestas a, lacinia non diam. Cras sapien est, mattis eu tristique a, hendrerit eget diam. Integer volutpat mauris ante, eu gravida risus volutpat ut. Maecenas commodo sem eu mi tristique consectetur. Mauris et libero in nibh malesuada fringilla.</p>\r\n\r\n<p>Pellentesque condimentum, ante nec laoreet dignissim, massa orci viverra justo, non aliquet nulla est ac urna. Vivamus condimentum massa diam, nec porttitor mauris mollis at. Ut suscipit laoreet dolor, vel suscipit enim tincidunt in. Vestibulum sed ex vitae augue volutpat placerat. Ut egestas, sapien id vehicula tempor, tortor odio euismod quam, sed malesuada nisi justo sit amet nunc. In id mattis justo. Morbi volutpat ante ac nisl posuere eleifend. Integer vehicula, sapien in interdum commodo, urna massa tincidunt nibh, et mollis mi tortor eget nisl. Sed faucibus elit aliquam massa viverra, eget lacinia dolor eleifend. Vivamus facilisis cursus tempor. Sed pharetra sollicitudin lectus nec feugiat. Nunc elit quam, vehicula et eros sit amet, tincidunt sagittis turpis. Vestibulum ligula augue, imperdiet et luctus vitae, tincidunt sed elit. Vestibulum laoreet mattis pellentesque.</p>\r\n\r\n<p>Sed in elit nunc. In cursus faucibus nulla vel lacinia. Donec dignissim, erat ut semper egestas, erat ipsum lobortis elit, vitae euismod ex nunc eu ante. Nunc blandit aliquet elit, ut tempor nulla tempor nec. Suspendisse eget aliquet odio, id facilisis turpis. Vivamus vel nisi gravida, consectetur enim non, vehicula erat. Suspendisse laoreet ac nunc ac ullamcorper.</p>\r\n\r\n<p>Sed vestibulum id ante id congue.&nbsp;</p>', 'dsc03601-1711201120.jpg', 'en', 'Our philosophy is to continue promoting more sustainable practices in the shrimp market with a close collaboration between our producers and our customers through sustainable supply chain.'),
(3, '2024-02-15 11:17:03', '2024-03-23 15:06:38', 'Social Responsability', 'social-responsability', '<p>We are committed to UPAA Foundation and our producer Agroexportador KMA SA to encourage the training of shrimp producers and help communities related to the aquaculture and agricultural sector.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/img/ckeditor/Image4.png\" style=\"height:89px; width:122px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/img/ckeditor/DSC03422.jpg\" style=\"height:1280px; width:1920px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/img/ckeditor/ret4.jpg\" style=\"height:1280px; width:1920px\" /></p>', 'social-1711202191.png', 'en', 'We are committed to UPAA Foundation and our producer Agroexportador KMA SA to encourage the training of shrimp producers and help communities related to the aquaculture and agricultural sector.'),
(4, '2024-02-15 11:18:13', '2024-03-23 12:28:34', 'Copyright', 'copyright', '<p>Lorem ipsum dolor sit amet consectetur. Libero viverra lorem posuere facilisis venenatis. Ut bibendum vulputate tortor magna est faucibus non. Mus faucibus dignissim sagittis non.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean libero diam, mattis ut leo venenatis, ornare feugiat tellus. Praesent ut ipsum purus. Duis bibendum ultricies turpis vitae mattis. Curabitur eget libero scelerisque, aliquet eros eu, tempor erat. Nunc purus lorem, tempor quis egestas a, lacinia non diam. Cras sapien est, mattis eu tristique a, hendrerit eget diam. Integer volutpat mauris ante, eu gravida risus volutpat ut. Maecenas commodo sem eu mi tristique consectetur. Mauris et libero in nibh malesuada fringilla.</p>\r\n\r\n<p>Pellentesque condimentum, ante nec laoreet dignissim, massa orci viverra justo, non aliquet nulla est ac urna. Vivamus condimentum massa diam, nec porttitor mauris mollis at. Ut suscipit laoreet dolor, vel suscipit enim tincidunt in. Vestibulum sed ex vitae augue volutpat placerat. Ut egestas, sapien id vehicula tempor, tortor odio euismod quam, sed malesuada nisi justo sit amet nunc. In id mattis justo. Morbi volutpat ante ac nisl posuere eleifend. Integer vehicula, sapien in interdum commodo, urna massa tincidunt nibh, et mollis mi tortor eget nisl. Sed faucibus elit aliquam massa viverra, eget lacinia dolor eleifend. Vivamus facilisis cursus tempor. Sed pharetra sollicitudin lectus nec feugiat. Nunc elit quam, vehicula et eros sit amet, tincidunt sagittis turpis. Vestibulum ligula augue, imperdiet et luctus vitae, tincidunt sed elit. Vestibulum laoreet mattis pellentesque.</p>\r\n\r\n<p>Sed in elit nunc. In cursus faucibus nulla vel lacinia. Donec dignissim, erat ut semper egestas, erat ipsum lobortis elit, vitae euismod ex nunc eu ante. Nunc blandit aliquet elit, ut tempor nulla tempor nec. Suspendisse eget aliquet odio, id facilisis turpis. Vivamus vel nisi gravida, consectetur enim non, vehicula erat. Suspendisse laoreet ac nunc ac ullamcorper.</p>\r\n\r\n<p>Sed vestibulum id ante id congue.&nbsp;</p>', 'headerbase-1708169866.png', 'en', 'Lorem ipsum dolor sit amet consectetur. Libero viverra lorem posuere facilisis venenatis. Ut bibendum vulputate tortor magna est faucibus non. Mus faucibus dignissim sagittis non.'),
(5, '2024-02-15 11:20:31', '2024-03-23 14:52:05', 'About-us', 'about-us', '<p>We are an Ecuadorian seafood wholesaler with more than 3 decades of experience.<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>MISSION</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Bring our quality products in every corner of the world<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>VISION</strong></h3>\r\n\r\n<p style=\"text-align:justify\">Stand in international markets with our exquisite products and be recognized as ambassadors of quality Ecuadorian shrimp around the world.<br />\r\n&nbsp;</p>\r\n\r\n<h3><strong>Experience and Quality</strong></h3>\r\n\r\n<p style=\"text-align:justify\">We are a company that manages the entire logistics infrastructure, being importers from our base in the United States, and exporters with our processing plant in Ecuador.</p>\r\n\r\n<p style=\"text-align:justify\">Our product capacity allows us to reach different types of markets in the United States. We can supply both retailers and wholesalers.</p>\r\n\r\n<p style=\"text-align:justify\">Our greatest asset is a quality product with which we constantly work to innovate and satisfy our consumers.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/img/ckeditor/DSC03479.jpg\" style=\"height:1280px; width:1920px\" /></p>', 'ret5-1711203956.jpg', 'en', 'Lorem ipsum dolor sit amet consectetur. Libero viverra lorem posuere facilisis venenatis. Ut bibendum vulputate tortor magna est faucibus non. Mus faucibus dignissim sagittis non.'),
(7, '2024-03-23 14:39:19', '2024-03-23 14:44:45', 'Our Story', 'our-story', '<p>.We are an Ecuadorian family company with more than 39 years of experience in the shrimp industry</p>\r\n\r\n<p><strong><em>In 1984, we opened our first shrimp farm on more than 500 acres.</em></strong></p>\r\n\r\n<p>Step by step, we grew and in 2017 we opened our processing plant.</p>\r\n\r\n<p>Thanks to our experience with shrimp and with seafood in general, we managed to expand as producers, packers and distributors.</p>\r\n\r\n<p>Our success is not only based on quality and freshness of our product, but also on the solid and trusting relationships we create with our customers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/img/ckeditor/ret5.jpg\" style=\"height:1280px; width:1920px\" /></p>', 'ret5-1711204759.jpg', 'en', 'The best shrimp in the world is Ecuadorian for only one reason, its flavor. We are producers of Litopenaeus Vannamei (white shrimp), exporters and importers for North America and the world. For more than 30 years we have provided a sustainable and quality product.'),
(8, '2024-03-23 14:47:14', '2024-03-23 14:47:54', 'Services and Products', 'services-and-products', '<h2>Services</h2>\r\n\r\n<p>We have our import and export licenses for shrimp.</p>\r\n\r\n<p>Thanks to this, we can offer the full range of services that we currently handle.</p>\r\n\r\n<p>Within this range our 24/7 retail company can supply the final consumer market.</p>\r\n\r\n<p>You can order by Master or containers.</p>\r\n\r\n<p>The breakdown is built based on customer&rsquo;s requirement and product availability.</p>\r\n\r\n<p>We can work on different incoterms: FOB, CIF, CFR, DAP and DDP.</p>', 'dsc03464-1711200476-1711205274.jpg', 'en', 'We have our import and export licenses for shrimp.\r\nThanks to this, we can offer the full range of services that we currently handle.\r\nWithin this range our 24/7 retail company can supply the final consumer market.\r\nYou can order by Master or containers.');

-- --------------------------------------------------------

--
-- Structure de la table `statistique`
--

DROP TABLE IF EXISTS `statistique`;
CREATE TABLE IF NOT EXISTS `statistique` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `changed` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chiffre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `language` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `statistique`
--

INSERT INTO `statistique` (`id`, `created`, `changed`, `title`, `chiffre`, `is_active`, `language`) VALUES
(1, '2024-01-30 15:55:46', '2024-03-23 13:46:37', 'USA Shrimps from Ecuador', '17, 539', 1, 'en'),
(2, '2024-02-07 14:12:09', '2024-03-23 13:40:31', 'USA shrimp market', '921, 000', 1, 'en'),
(3, '2024-02-07 14:12:17', '2024-03-23 13:39:42', 'Ecuador shrimps export in 2023', '1’ 108.325', 1, 'en');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `nom`, `prenom`, `roles`, `password`, `is_active`) VALUES
(1, 'pinelli.luc@outlook.fr', 'Pinelli', 'Luc', '[]', '$2y$13$xfFCkDY1yY9msHbLW4VrEukMR.RXORkoKY5r2ivqw8sx9ZmFZRqbe', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
