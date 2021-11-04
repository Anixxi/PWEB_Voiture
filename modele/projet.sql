-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mer 03 Novembre 2021 à 19:14
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `nom` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`nom`, `mdp`) VALUES
('root', 'root');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `adresseE` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`id`, `nom`, `email`, `mdp`, `adresseE`) VALUES
(1, 'LeBlanc', 'fafge@gmail.com', '2002', '18 rue victor hugo'),
(3, 'dave', 'zhrhrz', '2002', 'res'),
(4, 'hug', 'zvbdzbv', '2002', 'fzbebe');

-- --------------------------------------------------------

--
-- Structure de la table `facture`
--

CREATE TABLE `facture` (
  `id` int(11) NOT NULL,
  `ide` int(11) NOT NULL,
  `idv` int(11) NOT NULL,
  `dateD` date NOT NULL,
  `dateF` date NOT NULL,
  `valeur` double NOT NULL,
  `etatR` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `facture`
--

INSERT INTO `facture` (`id`, `ide`, `idv`, `dateD`, `dateF`, `valeur`, `etatR`) VALUES
(1, 3, 2, '2021-11-01', '2021-11-03', 12, 'r'),
(2, 3, 3, '2021-11-01', '2021-11-12', 15, 'r'),
(3, 3, 1, '2021-11-03', '2021-11-10', 15, 'r'),
(4, 4, 3, '2021-11-03', '2021-11-11', 12, 'r');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE `vehicule` (
  `id` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `nb` int(11) NOT NULL,
  `caract` varchar(50) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `etatL` varchar(20) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `vehicule`
--

INSERT INTO `vehicule` (`id`, `type`, `nb`, `caract`, `photo`, `etatL`, `tarif`) VALUES
(1, '306', 1, 'automatique', 'peugot306', 'disponible', 0),
(2, 'fiat panda', 1, 'EMA', 'fiatpanda', 'disponible', 0),
(3, 'ford fiesta', 1, 'manuelle', 'fordfiesta', 'louer', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `facture`
--
ALTER TABLE `facture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `facture`
--
ALTER TABLE `facture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `vehicule`
--
ALTER TABLE `vehicule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
