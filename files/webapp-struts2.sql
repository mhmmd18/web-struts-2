-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.11-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for webapp-struts2
CREATE DATABASE IF NOT EXISTS `webapp-struts2` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `webapp-struts2`;

-- Dumping structure for table webapp-struts2.master_mapping_role
CREATE TABLE IF NOT EXISTS `master_mapping_role` (
  `kode_role` varchar(45) DEFAULT NULL,
  `id_submenu` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table webapp-struts2.master_mapping_role: ~5 rows (approximately)
/*!40000 ALTER TABLE `master_mapping_role` DISABLE KEYS */;
INSERT INTO `master_mapping_role` (`kode_role`, `id_submenu`) VALUES
	('ADM', '101'),
	('ADM', '201'),
	('ADM', '202'),
	('USR', '201'),
	('USR', '202');
/*!40000 ALTER TABLE `master_mapping_role` ENABLE KEYS */;

-- Dumping structure for table webapp-struts2.master_menu
CREATE TABLE IF NOT EXISTS `master_menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(100) DEFAULT NULL,
  `icon_menu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table webapp-struts2.master_menu: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_menu` DISABLE KEYS */;
INSERT INTO `master_menu` (`id_menu`, `nama_menu`, `icon_menu`) VALUES
	(100, 'Setting', 'fa fa-cogs'),
	(200, 'Aktivitas', 'fa fa-tasks');
/*!40000 ALTER TABLE `master_menu` ENABLE KEYS */;

-- Dumping structure for table webapp-struts2.master_role
CREATE TABLE IF NOT EXISTS `master_role` (
  `kode_role` varchar(3) NOT NULL,
  `nama_role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table webapp-struts2.master_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `master_role` DISABLE KEYS */;
INSERT INTO `master_role` (`kode_role`, `nama_role`) VALUES
	('ADM', 'Administrator'),
	('USR', 'User');
/*!40000 ALTER TABLE `master_role` ENABLE KEYS */;

-- Dumping structure for table webapp-struts2.master_submenu
CREATE TABLE IF NOT EXISTS `master_submenu` (
  `id_submenu` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `nama_submenu` varchar(45) DEFAULT NULL,
  `link_menu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_submenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table webapp-struts2.master_submenu: ~3 rows (approximately)
/*!40000 ALTER TABLE `master_submenu` DISABLE KEYS */;
INSERT INTO `master_submenu` (`id_submenu`, `id_menu`, `nama_submenu`, `link_menu`) VALUES
	(101, 100, 'Data User', '/setting/data-user'),
	(201, 200, 'Log Aktivitas', '/log/log-aktivitas'),
	(202, 200, 'Log Server', '/log/log-server');
/*!40000 ALTER TABLE `master_submenu` ENABLE KEYS */;

-- Dumping structure for table webapp-struts2.user_id
CREATE TABLE IF NOT EXISTS `user_id` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `role_user` varchar(45) DEFAULT NULL,
  `name_user` varchar(45) DEFAULT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `pass_user` varchar(100) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `tgl_active` varchar(45) DEFAULT NULL,
  `tgl_deactive` varchar(45) DEFAULT NULL,
  `tgl_expire` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `name_user_UNIQUE` (`name_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table webapp-struts2.user_id: ~2 rows (approximately)
/*!40000 ALTER TABLE `user_id` DISABLE KEYS */;
INSERT INTO `user_id` (`id_user`, `role_user`, `name_user`, `full_name`, `pass_user`, `is_active`, `tgl_active`, `tgl_deactive`, `tgl_expire`) VALUES
	(1, 'ADM', 'admin', 'Administrator', 'ISMvKXpXpadDiUoOSoAfww', 1, '20190526', NULL, NULL),
	(2, 'USR', 'user', 'User', '7hHLsZBS5AsHqsDKBgwj7g', 1, '20190529', NULL, NULL);
/*!40000 ALTER TABLE `user_id` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
