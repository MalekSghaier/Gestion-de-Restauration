-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 29 jan. 2024 à 23:12
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `res_rest`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin@gmail.com', '', '2018-04-09 06:36:18'),
(8, 'abc888', '6d0361d5777656072438f6e314a852bc', 'abc@gmail.com', 'QX5ZMN', '2018-04-13 17:12:30');

-- --------------------------------------------------------

--
-- Structure de la table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Structure de la table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(11, 47, 'Tabouna', 'Three ounces of lightly seasoned fresh tilapia ', '55.77', 'taboun.jpg'),
(12, 48, 'Ma9loub', 'A mix of chopped lettuces, shredded cheese, chicken cubes', '22.12', '5ad7590d9702b.jpg'),
(13, 49, 'Panini', 'Kids can choose their pasta shape, type of sauce, favorite veggies (like broccoli or mushrooms)', '12.35', '5ad7597aa0479.jpg'),
(14, 50, 'Cordon bleu', 'Plain grilled chicken breast? Blah.', '34.99', '5ad759e1546fc.jpg'),
(15, 51, 'Chapati', 'This chain, known for a wide selection of vegetarian and vegan choices', '11.99', '5ad75a1869e93.jpg'),
(16, 52, 'Leblebi', 'Creekstone Farms, where no antibiotics or growth hormones are used', '22.55', '5ad75a5dbb329.jpg'),
(17, 53, 'Sandwitch', 'great taste great whatever', '17.99', '5ad79fcf59e66.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `foods`
--

CREATE TABLE `foods` (
  `id` int(11) NOT NULL,
  `ctg_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `foods`
--

INSERT INTO `foods` (`id`, `ctg_id`, `title`, `description`, `price`, `image`) VALUES
(1, 5, 'Tabouna Chawarma', 'chawarma , mayonnaise , frite', '4.500', 'tabounachawarma.jpg'),
(2, 5, 'Tabouna Escalope', 'escalope , mayonnaise , frite , supp harisa', '4.800', 'tabounascalope.png'),
(3, 6, 'Pizza 4 saison', 'sauce tomate , champignions , poivron , ognions , tomate , jambon ,parmesan', '12.000', '5f2c1a73c0490.jpg'),
(4, 7, 'Ma9loub chawarma', 'chawarma , frit , supp salade', '3.800', 'makloubchawarma.jpg'),
(5, 8, 'Mlawi thon', 'thon ', '3.000', 'mlawithon.jpg'),
(6, 9, 'Sandwitch thon', 'thon', '2.500', 'sandwichauthon.jpg'),
(8, 6, 'Pizza margherita', 'sauce tomate , mozzarella , olive', '9.000', '5f2c19f26ef2e.jpg'),
(9, 18, 'Poulet grille', 'frit , riz , mayonnaise', '7.000', 'poulet-grille.jpg'),
(10, 18, 'Poulet cordon bleu', 'salade , frit , riz , mayonnaise , catchup', '8.500', 'poulet-cordon-bleu.jpg'),
(12, 11, '1L', 'eau naturel', '1.500', 'cristaline1L.jpg'),
(14, 23, 'Chicha Raisin', 'Raisin', '6.500', '5f14586d59cd0.png'),
(15, 6, 'Pizza thon', 'sauce tomate , mozzarella , thon , olive', '11.000', '5f2c19829b2b4.jpg'),
(16, 10, 'Coca cola 1 L', 'coca cola 1L', '2.500', '5f2c1d905248d.jpg'),
(17, 10, 'Coca cola 1.5 L', 'coca cola 1.5L', '3.000', '5f2c1dac6c274.jpg'),
(18, 10, 'Boga Lim 1.5L', 'boga lim 1.5L', '3.000', '5f2c1df212b5d.jpg'),
(19, 10, 'Boga cidre 1.5L', 'boga cidre 1.5L', '3.000', '5f2c1e0e1390d.jpg'),
(20, 10, 'Boga light', 'boga light 33cl', '2.000', '5f2c1e427f807.jpg'),
(21, 10, 'Boga cidre', 'boga cidre boite 33cl', '2.000', '5f2c1e652d0f7.jpg'),
(22, 10, 'Boga lim 33 cl', 'boga lim boite', '2.000', '5f2c1e868444f.png'),
(23, 10, 'Boga menthe boite 33 cl', 'boga menthe 33cl', '2.000', '5f2c1eac96dfa.jpg'),
(24, 10, 'Coca cola boite', 'boite coca 33 cl', '2.000', '5f2c1ecb75682.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(62, 32, 'in process', 'hi', '2018-04-18 16:35:52'),
(63, 32, 'closed', 'cc', '2018-04-18 16:36:46'),
(64, 32, 'in process', 'fff', '2018-04-18 17:01:37'),
(65, 32, 'closed', 'its delv', '2018-04-18 17:08:55'),
(66, 34, 'in process', 'on a way', '2018-04-18 17:56:32'),
(67, 35, 'closed', 'ok', '2018-04-18 17:59:08'),
(68, 37, 'in process', 'on the way!', '2018-04-18 18:50:06'),
(69, 37, 'rejected', 'if admin cancel for any reason this box is for remark only for buter perposes', '2018-04-18 18:51:19'),
(70, 37, 'closed', 'delivered success', '2018-04-18 18:51:50'),
(71, 39, 'closed', 'cv', '2020-07-14 12:26:33'),
(72, 40, 'rejected', 'vv', '2020-07-14 12:26:51'),
(73, 44, 'closed', 'done', '2024-01-29 22:03:12');

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `descrip` varchar(100) NOT NULL,
  `img` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `descrip`, `img`, `date`) VALUES
(5, 'Tabouna', 'tabouna tres delicieuse', 'tabouna.jpg', '2020-08-06 13:14:09'),
(6, 'Pizza', 'pizza hot', 'pizza.png', '2020-08-06 13:14:16'),
(7, 'Makloub', 'makloub bnin', 'makloub.jpg', '2020-08-06 13:52:30'),
(8, 'Mlawi', 'mlawi w dima yemchi', 'mlawi.jpg', '2020-08-06 13:52:33'),
(9, 'Sandwitch', 'sandwitch l 3ez', 'sandwich.png', '2020-08-06 13:52:51'),
(10, 'Soda', 'bered ya 3atchan', 'soda.jpg', '2020-08-06 13:52:56'),
(11, 'Eau', 'tferchika', 'eau.jpg', '2020-08-06 13:53:00'),
(12, 'Coffe', '3ammer rasek', 'coffee.jpg', '2020-08-06 13:53:04'),
(13, 'Glace', 'tbenen l broud', 'glace.jpg', '2020-08-06 13:53:09'),
(14, 'Jus', 'yerwi l 3atchan', 'jus.jpg', '2020-08-06 13:53:20'),
(15, 'The', '5fif be3d l mekla', 'the.jpg', '2020-08-06 13:53:25'),
(16, 'Cake', '7elli bech twali', 'cake.jpg', '2020-07-15 17:35:20'),
(17, 'Fish', '7out bnin w kolou vitamin', 'fish.jpg', '2020-07-15 17:34:38'),
(18, 'Poulet', 'djej y9awi l bden', 'poulets.jpg', '2020-07-15 17:33:37'),
(19, 'Lasagne', 'Lazania bkolhi 9ouwa', 'lasagne.jpg', '2020-08-06 13:53:32'),
(23, 'Chicha', 'reye7 w erte7 w estre7 ya baba', 'chicha.jpg', '2020-08-06 13:53:36');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'dhaker', 'Dhaker', 'Salah', 'dhaker@gmail.com', '9876543210', '670b14728ad9902aecba32e22fa4f6bd', 'tunisia', 1, '2020-07-12 11:34:48'),
(34, 'danielo', 'danielo', 'mystirio', 'danielo@gmail.com', '9876543210', 'e10adc3949ba59abbe56e057f20f883e', 'canada', 1, '2020-07-14 12:39:27');

-- --------------------------------------------------------

--
-- Structure de la table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `f_id` int(11) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `f_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(39, 33, 0, 'Ma9loub chawarma', 2, '3800.00', 'closed', '2020-07-14 12:26:33'),
(40, 33, 0, 'Sandwitch thon', 3, '2500.00', 'rejected', '2020-07-14 12:26:51'),
(41, 33, 0, 'Pizza 4 saison', 1, '5200.00', NULL, '2020-07-14 12:41:33'),
(42, 33, 1, 'Tabouna Chawarma', 1, '4.50', NULL, '2020-08-06 14:37:23'),
(43, 33, 8, 'Pizza margherita', 1, '5.60', NULL, '2020-08-06 14:38:10'),
(44, 33, 15, 'Pizza thon', 3, '11.00', 'closed', '2024-01-29 22:03:12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Index pour la table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Index pour la table `foods`
--
ALTER TABLE `foods`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Index pour la table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Index pour la table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `foods`
--
ALTER TABLE `foods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT pour la table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
