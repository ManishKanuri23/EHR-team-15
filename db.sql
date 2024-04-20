/*
SQLyog Community Edition- MySQL GUI v7.15 
MySQL - 5.5.29 : Database - es
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`es` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `es`;

/*Table structure for table `cloud` */

DROP TABLE IF EXISTS `cloud`;

CREATE TABLE `cloud` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cloud` */

insert  into `cloud`(`username`,`password`) values ('cloud','cloud');

/*Table structure for table `owner` */

DROP TABLE IF EXISTS `owner`;

CREATE TABLE `owner` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `owner` */

insert  into `owner`(`username`,`password`,`email`,`mobile`,`address`) values ('raj','raj','raj@gmail.com','8639966858','hyderabad');

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `filename` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `cipher` varchar(100) DEFAULT NULL,
  `uemail` varchar(100) DEFAULT NULL,
  `dtype` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `request` */

insert  into `request`(`filename`,`email`,`keyword`,`cipher`,`uemail`,`dtype`,`status`,`status1`) values ('abc.txt','raj@gmail.com','java','7jEXEwjyub4oP169QPsNpC/ hNspnztzVrf55hVq8no=','moulalicce225@gmail.com','doc1','verified','keysent');

/*Table structure for table `upload` */

DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
  `filename` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `str` text,
  `skey` varchar(100) DEFAULT NULL,
  `cipher` text,
  `keyword` varchar(100) DEFAULT NULL,
  `hashcode` varchar(100) DEFAULT NULL,
  `utime` varchar(100) DEFAULT NULL,
  `dtype` varchar(100) DEFAULT NULL,
  `bckey1` varchar(100) DEFAULT NULL,
  `bckey2` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `upload` */

insert  into `upload`(`filename`,`email`,`str`,`skey`,`cipher`,`keyword`,`hashcode`,`utime`,`dtype`,`bckey1`,`bckey2`,`status`) values ('abc.txt','raj@gmail.com','hii helloo how are you\n','jrn+klLq/BpqjWKJICqDLA==','7jEXEwjyub4oP169QPsNpC/+hNspnztzVrf55hVq8no=','java','3254818','09:00','doc1','-1261255288','465448389','pending');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `dtype` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`username`,`password`,`email`,`mobile`,`address`,`dtype`) values ('chotu','chotu','moulalicce225@gmail.com','8639966858','hyderabad','doc1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
