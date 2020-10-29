-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8081
-- Généré le : jeu. 29 oct. 2020 à 22:47
-- Version du serveur :  5.7.24
-- Version de PHP : 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `binomotron`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etudiant` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom`, `prenom`, `photo`) VALUES
(1, 'BOKALLI', 'Luigi', ''),
(2, 'BONNEAU', 'Amaury', ''),
(3, 'CHAIGNEAU ', 'Thomas', ''),
(4, 'CLOATRE', 'Erwan', ''),
(5, 'FURIGA', 'Julien', ''),
(6, 'GUILLEN', 'Celine', ''),
(7, 'HERGOUALC\'H', 'Pereg', ''),
(8, 'IBANNI', 'Jamal', ''),
(9, 'KERFAOUI', 'Christelle', ''),
(10, 'LE BERRE', 'Baptiste', ''),
(11, 'LE JONCOUR', 'Jeremy', ''),
(12, 'LE MOAL', 'Patricia', ''),
(13, 'MAINTIER', 'Ludivine', ''),
(14, 'MBARGA MVOGO', 'Christian', ''),
(15, 'MOULARD', 'Eva', ''),
(16, 'PERTRON', 'Aude', ''),
(17, 'RIOUAL', 'Ronan', ''),
(18, 'SABIA', 'Paul', ''),
(19, 'VERPOEST', 'Guillaume', '');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant_groupe`
--

CREATE TABLE `etudiant_groupe` (
  `id_etudiant` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `id_projet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id_groupe` int(11) NOT NULL,
  `groupe` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `id_projet` int(11) NOT NULL,
  `libelle_du_projet` varchar(500) NOT NULL,
  `date_debut_projet` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`id_projet`, `libelle_du_projet`, `date_debut_projet`) VALUES
(1, 'BINOMOTRON', '2020-10-21 16:43:05');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etudiant`);

--
-- Index pour la table `etudiant_groupe`
--
ALTER TABLE `etudiant_groupe`
  ADD KEY `id_etudiant` (`id_etudiant`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `id_projet` (`id_projet`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`id_projet`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id_etudiant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id_groupe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `projet`
--
ALTER TABLE `projet`
  MODIFY `id_projet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiant_groupe`
--
ALTER TABLE `etudiant_groupe`
  ADD CONSTRAINT `etudiant_groupe_ibfk_1` FOREIGN KEY (`id_etudiant`) REFERENCES `etudiant` (`id_etudiant`),
  ADD CONSTRAINT `etudiant_groupe_ibfk_2` FOREIGN KEY (`id_groupe`) REFERENCES `groupe` (`id_groupe`),
  ADD CONSTRAINT `etudiant_groupe_ibfk_3` FOREIGN KEY (`id_projet`) REFERENCES `projet` (`id_projet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
