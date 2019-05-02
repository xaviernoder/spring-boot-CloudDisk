/*
SQLyog 企业版 - MySQL GUI v8.14
MySQL - 5.7.22-log : Database - spring-boot-clouddisk
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spring-boot-clouddisk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `spring-boot-clouddisk`;

/*Table structure for table `elfinder_file` */

DROP TABLE IF EXISTS `elfinder_file`;

CREATE TABLE `elfinder_file` (
  `id` INT(7) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` INT(7) UNSIGNED NOT NULL,
  `name` VARCHAR(256) NOT NULL,
  `content` LONGBLOB NOT NULL,
  `size` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime` VARCHAR(256) NOT NULL DEFAULT 'unknown',
  `read` ENUM('1','0') NOT NULL DEFAULT '1',
  `write` ENUM('1','0') NOT NULL DEFAULT '1',
  `locked` ENUM('1','0') NOT NULL DEFAULT '0',
  `hidden` ENUM('1','0') NOT NULL DEFAULT '0',
  `width` INT(5) NOT NULL DEFAULT '0',
  `height` INT(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_name` (`parent_id`,`name`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MYISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `elfinder_file` */

INSERT  INTO `elfinder_file`(`id`,`parent_id`,`name`,`content`,`size`,`mtime`,`mime`,`read`,`write`,`locked`,`hidden`,`width`,`height`) VALUES (1,0,'DATABASE','',0,0,'directory','1','1','0','0',0,0);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `role_code` VARCHAR(255) NOT NULL,
  `role_name` VARCHAR(255) NOT NULL,
  `gmt_create` DATETIME NOT NULL,
  `gmt_update` DATETIME NOT NULL,
  `nickname` VARCHAR(255) DEFAULT NULL,
  `user_create` INT(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

INSERT  INTO `sys_user`(`id`,`username`,`password`,`email`,`role_code`,`role_name`,`gmt_create`,`gmt_update`,`nickname`,`user_create`) VALUES (1,'admin','23f90100463d27633c61a711a8bf8ea5072710952454d509','345849402@qq.com','admin','管理员','2019-03-21 14:30:57','2019-03-21 14:30:57','admin',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
