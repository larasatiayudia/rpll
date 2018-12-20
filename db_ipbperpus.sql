-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2018 at 11:41 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ipbperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nis` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` text NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa_1`
--

CREATE TABLE `siswa_1` (
  `id_1` int(11) NOT NULL,
  `nis_1` varchar(11) NOT NULL,
  `nama_1` varchar(50) NOT NULL,
  `jenis_kelamin_1` varchar(10) NOT NULL,
  `alamat_1` varchar(10) NOT NULL,
  `nilai_1` int(11) NOT NULL,
  `nilai_11` int(11) NOT NULL,
  `nilai_12` int(11) NOT NULL,
  `nilai_13` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', '2018-09-16 12:29:54'),
(2, 9, '{"role":"3","roleText":"Employee","name":"Bagus"}', '::1', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', '2018-09-16 12:31:53'),
(3, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', '2018-09-16 12:57:25'),
(4, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', '2018-09-16 17:53:31'),
(5, 9, '{"role":"3","roleText":"Employee","name":"Bagus"}', '::1', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', '2018-09-16 20:30:02'),
(6, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', '2018-09-16 20:30:39'),
(7, 9, '{"role":"3","roleText":"Employee","name":"Bagus"}', '::1', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', '2018-09-17 13:23:36'),
(8, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 68.0.3440.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 'Mac OS X', '2018-09-19 13:53:40'),
(9, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 62.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'Windows 10', '2018-09-19 20:06:10'),
(10, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 62.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:62.0) Gecko/20100101 Firefox/62.0', 'Windows 10', '2018-09-22 00:30:34'),
(11, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', '2018-09-22 05:16:19'),
(12, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', '2018-09-24 21:08:52'),
(13, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', '2018-10-04 09:15:09'),
(14, 10, '{"role":"2","roleText":"Manager","name":"Nunung H"}', '::1', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', '2018-10-04 09:16:27'),
(15, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 69.0.3497.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36', 'Windows 10', '2018-10-08 15:27:40'),
(16, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-10-29 15:37:21'),
(17, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-10-29 15:38:27'),
(18, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-10-29 16:04:37'),
(19, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-10-31 13:50:06'),
(20, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-10-31 14:05:58'),
(21, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-10-31 15:00:21'),
(22, 10, '{"role":"2","roleText":"Manager","name":"Nunung H"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-11-05 16:13:53'),
(23, 10, '{"role":"2","roleText":"Manager","name":"Nunung H"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-11-05 16:20:15'),
(24, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-11-06 11:16:39'),
(25, 10, '{"role":"2","roleText":"Manager","name":"Nunung H"}', '::1', 'Chrome 70.0.3538.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'Windows 10', '2018-11-13 10:51:31'),
(26, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2018-12-20 04:52:05'),
(27, 1, '{"role":"1","roleText":"System Administrator","name":"System Administrator"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2018-12-20 04:54:38'),
(28, 2, '{"role":"2","roleText":"Manager","name":"Larasati"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2018-12-20 04:58:47'),
(29, 9, '{"role":"3","roleText":"Employee","name":"Radhiyatul Fajri"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2018-12-20 04:59:08'),
(30, 10, '{"role":"2","roleText":"Manager","name":"Arif Supriyanto"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2018-12-20 04:59:35'),
(31, 10, '{"role":"1","roleText":"System Administrator","name":"Arif Supriyanto"}', '::1', 'Firefox 64.0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Windows 10', '2018-12-20 05:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@example.com', '$2y$10$78x7YQyvWJ2qgBYgjM/7su8ujsElKDL3xdAk4g1oH1HkDPMqY3u2.', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2018-01-05 05:56:34'),
(2, 'laras@gmail.com', '$2y$10$78x7YQyvWJ2qgBYgjM/7su8ujsElKDL3xdAk4g1oH1HkDPMqY3u2.', 'Larasati', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2018-01-12 07:22:11'),
(3, 'employee@example.com', '$2y$10$78x7YQyvWJ2qgBYgjM/7su8ujsElKDL3xdAk4g1oH1HkDPMqY3u2.', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28'),
(9, 'ifa@gmail.com', '$2y$10$78x7YQyvWJ2qgBYgjM/7su8ujsElKDL3xdAk4g1oH1HkDPMqY3u2.', 'Radhiyatul Fajri', '0856787698', 2, 0, 1, '2018-09-16 07:31:24', NULL, NULL),
(10, 'arifs@uai.ac.id', '$2y$10$78x7YQyvWJ2qgBYgjM/7su8ujsElKDL3xdAk4g1oH1HkDPMqY3u2.', 'Arif Supriyanto', '0812994516', 1, 0, 1, '2018-10-04 04:16:06', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
