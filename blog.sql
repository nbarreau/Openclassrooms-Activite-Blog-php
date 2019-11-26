-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le :  mar. 26 nov. 2019 à 13:14
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `author`, `comment`, `comment_date`) VALUES
(1, 1, 'Mathieu', 'Merci! Super blog!', '2019-11-24 06:13:07'),
(2, 1, 'Jean', 'Super', '2019-11-24 08:07:09'),
(3, 2, 'joel', 'commentaire modifié', '2019-11-26 14:02:20'),
(4, 2, 'johanna', 'Bon travail', '2019-11-25 09:13:17'),
(5, 2, 'Nathalie', 'mon premier commentaire!', '2019-11-22 14:29:12'),
(6, 2, 'Nathalie', 'mon deuxième commentaire', '2019-11-22 14:47:14'),
(7, 1, 'Nathalie', 'commentaire modifié...', '2019-11-26 14:04:38');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `creation_date`) VALUES
(1, 'Bienvenue sur mon blog !', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec pretium cursus dui at gravida. Suspendisse ut quam vel velit finibus pharetra non eget neque. Mauris euismod, dolor ac ornare varius, urna sapien suscipit ipsum, non imperdiet est mauris vel tortor. Duis tristique magna ligula, in interdum elit ultrices sed. Aliquam posuere ultricies nulla et elementum. Quisque a efficitur libero. Mauris nunc felis, imperdiet eget leo sed, aliquet blandit urna. Quisque malesuada sollicitudin tellus, non sodales nulla ullamcorper a. Pellentesque congue venenatis dolor, luctus rhoncus quam euismod eget. Vestibulum auctor iaculis euismod. Nullam congue malesuada porta. Morbi at libero tellus. Etiam vehicula rhoncus sollicitudin.', '2019-11-22 11:10:11'),
(2, 'Le php à la conquête du monde !', 'C\'est officiel, l\'éléPHPant a annoncé à la radio hier soir \"J\'ai l\'intention de conquérir le monde !\".\r\nIl a en outre précisé que le monde serait à sa botte en moins de temps qu\'il n\'en fallait pour dire \"éléPHPant\". Pas dur, ceci dit entre nous...', '2019-11-23 09:05:15');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
