-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.7.38-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema cs425_p1_db
--

CREATE DATABASE IF NOT EXISTS cs425_p1_db;
USE cs425_p1_db;

--
-- Definition of table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE `currency` (
  `id` char(3) NOT NULL,
  `description` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

/*!40000 ALTER TABLE `currency` DISABLE KEYS */;
INSERT INTO `currency` (`id`,`description`) VALUES 
 ('AED','United Arab Emirates dirham'),
 ('AFN','Afghan afghani'),
 ('ALL','Albanian lek'),
 ('AMD','Armenian dram'),
 ('ANG','Netherlands Antillean guilder'),
 ('AOA','Angolan kwanza'),
 ('ARS','Argentine peso'),
 ('AUD','Australian dollar'),
 ('AWG','Aruban florin'),
 ('AZN','Azerbaijani manat'),
 ('BAM','Bosnia and Herzegovina convertible mark'),
 ('BBD','Barbados dollar'),
 ('BDT','Bangladeshi taka'),
 ('BGN','Bulgarian lev'),
 ('BHD','Bahraini dinar'),
 ('BIF','Burundian franc'),
 ('BMD','Bermudian dollar'),
 ('BND','Brunei dollar'),
 ('BOB','Boliviano'),
 ('BRL','Brazilian real'),
 ('BSD','Bahamian dollar'),
 ('BTC','Bitcoin'),
 ('BTN','Bhutanese ngultrum'),
 ('BWP','Botswana pula'),
 ('BYN','Belarusian ruble'),
 ('BYR','Belarusian ruble'),
 ('BZD','Belize dollar'),
 ('CAD','Canadian dollar'),
 ('CDF','Congolese franc'),
 ('CHF','Swiss franc'),
 ('CLF','Unidad de Fomento'),
 ('CLP','Chilean peso'),
 ('CNY','Chinese yuan'),
 ('COP','Colombian peso'),
 ('CRC','Costa Rican colon'),
 ('CUC','Cuban convertible peso'),
 ('CUP','Cuban peso'),
 ('CVE','Cape Verdean escudo'),
 ('CZK','Czech koruna'),
 ('DJF','Djiboutian franc'),
 ('DKK','Danish krone'),
 ('DOP','Dominican peso'),
 ('DZD','Algerian dinar'),
 ('EGP','Egyptian pound'),
 ('ERN','Eritrean nakfa'),
 ('ETB','Ethiopian birr'),
 ('EUR','Euro'),
 ('FJD','Fiji dollar'),
 ('FKP','Falkland Islands pound'),
 ('GBP','Pound sterling'),
 ('GEL','Georgian lari'),
 ('GGP','Guernsey pound'),
 ('GHS','Ghanaian cedi'),
 ('GIP','Gibraltar pound'),
 ('GMD','Gambian dalasi'),
 ('GNF','Guinean franc'),
 ('GTQ','Guatemalan quetzal'),
 ('GYD','Guyanese dollar'),
 ('HKD','Hong Kong dollar'),
 ('HNL','Honduran lempira'),
 ('HRK','Croatian kuna'),
 ('HTG','Haitian gourde'),
 ('HUF','Hungarian forint'),
 ('IDR','Indonesian rupiah'),
 ('ILS','Israeli new shekel'),
 ('IMP','Manx pound'),
 ('INR','Indian rupee'),
 ('IQD','Iraqi dinar'),
 ('IRR','Iranian rial'),
 ('ISK','Icelandic króna'),
 ('JEP','Jersey pound'),
 ('JMD','Jamaican dollar'),
 ('JOD','Jordanian dinar'),
 ('JPY','Japanese yen'),
 ('KES','Kenyan shilling'),
 ('KGS','Kyrgyzstani som'),
 ('KHR','Cambodian riel'),
 ('KMF','Comoro franc'),
 ('KPW','North Korean won'),
 ('KRW','South Korean won'),
 ('KWD','Kuwaiti dinar'),
 ('KYD','Cayman Islands dollar'),
 ('KZT','Kazakhstani tenge'),
 ('LAK','Lao kip'),
 ('LBP','Lebanese pound'),
 ('LKR','Sri Lankan rupee'),
 ('LRD','Liberian dollar'),
 ('LSL','Lesotho loti'),
 ('LTL','Lithuanian litas'),
 ('LVL','Latvian lats'),
 ('LYD','Libyan dinar'),
 ('MAD','Moroccan dirham'),
 ('MDL','Moldovan leu'),
 ('MGA','Malagasy ariary'),
 ('MKD','Macedonian denar'),
 ('MMK','Myanmar kyat'),
 ('MNT','Mongolian tögrög'),
 ('MOP','Macanese pataca'),
 ('MRO','Mauritanian ouguiya'),
 ('MUR','Mauritian rupee'),
 ('MVR','Maldivian rufiyaa'),
 ('MWK','Malawian kwacha'),
 ('MXN','Mexican peso'),
 ('MYR','Malaysian ringgit'),
 ('MZN','Mozambican metical'),
 ('NAD','Namibian dollar'),
 ('NGN','Nigerian naira'),
 ('NIO','Nicaraguan córdoba'),
 ('NOK','Norwegian krone'),
 ('NPR','Nepalese rupee'),
 ('NZD','New Zealand dollar'),
 ('OMR','Omani rial'),
 ('PAB','Panamanian balboa'),
 ('PEN','Peruvian sol'),
 ('PGK','Papua New Guinean kina'),
 ('PHP','Philippine peso'),
 ('PKR','Pakistani rupee'),
 ('PLN','Polish zloty'),
 ('PYG','Paraguayan guaraní'),
 ('QAR','Qatari riyal'),
 ('RON','Romanian leu'),
 ('RSD','Serbian dinar'),
 ('RUB','Russian ruble'),
 ('RWF','Rwandan franc'),
 ('SAR','Saudi riyal'),
 ('SBD','Solomon Islands dollar'),
 ('SCR','Seychelles rupee'),
 ('SDG','Sudanese pound'),
 ('SEK','Swedish krona'),
 ('SGD','Singapore dollar'),
 ('SHP','Saint Helena pound'),
 ('SLL','Sierra Leonean leone'),
 ('SOS','Somali shilling'),
 ('SRD','Surinamese dollar'),
 ('STD','São Tomé and Príncipe dobra'),
 ('SVC','Salvadoran colón'),
 ('SYP','Syrian pound'),
 ('SZL','Swazi lilangeni'),
 ('THB','Thai baht'),
 ('TJS','Tajikistani somoni'),
 ('TMT','Turkmenistan manat'),
 ('TND','Tunisian dinar'),
 ('TOP','Tongan pa\'anga'),
 ('TRY','Turkish lira'),
 ('TTD','Trinidad and Tobago dollar'),
 ('TWD','New Taiwan dollar'),
 ('TZS','Tanzanian shilling'),
 ('UAH','Ukrainian hryvnia'),
 ('UGX','Ugandan shilling'),
 ('USD','United States dollar'),
 ('UYU','Uruguayan peso'),
 ('UZS','Uzbekistan som'),
 ('VEF','Venezuelan bolívar'),
 ('VND','Vietnamese dong'),
 ('VUV','Vanuatu vatu'),
 ('WST','Samoan tala'),
 ('XAF','CFA franc BEAC'),
 ('XAG','Silver (one troy ounce)'),
 ('XAU','Gold (one troy ounce)'),
 ('XCD','East Caribbean dollar'),
 ('XDR','Special drawing rights (IMF)'),
 ('XOF','CFA franc BCEAO'),
 ('XPF','CFP franc (franc Pacifique)'),
 ('YER','Yemeni rial'),
 ('ZAR','South African rand'),
 ('ZMK','Zambian kwacha'),
 ('ZMW','Zambian kwacha'),
 ('ZWL','Zimbabwean dollar');
/*!40000 ALTER TABLE `currency` ENABLE KEYS */;


--
-- Definition of table `rate`
--

DROP TABLE IF EXISTS `rate`;
CREATE TABLE `rate` (
  `currencyid` char(3) NOT NULL,
  `rate_date` date NOT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`currencyid`,`rate_date`) USING BTREE,
  CONSTRAINT `FK_rate_1` FOREIGN KEY (`currencyid`) REFERENCES `currency` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rate`
--

/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` (`currencyid`,`rate_date`,`rate`) VALUES 
 ('AED','2022-10-23',3.615616),
 ('AFN','2022-10-23',85.037549),
 ('ALL','2022-10-23',117.155227),
 ('AMD','2022-10-23',393.268521),
 ('ANG','2022-10-23',1.756943),
 ('AOA','2022-10-23',445.604848),
 ('ARS','2022-10-23',150.819191),
 ('AUD','2022-10-23',1.551625),
 ('AWG','2022-10-23',1.771832),
 ('AZN','2022-10-23',1.672122),
 ('BAM','2022-10-23',1.955345),
 ('BBD','2022-10-23',1.968392),
 ('BDT','2022-10-23',98.795813),
 ('BGN','2022-10-23',1.952509),
 ('BHD','2022-10-23',0.367557),
 ('BIF','2022-10-23',2015.404445),
 ('BMD','2022-10-23',0.984351),
 ('BND','2022-10-23',1.392682),
 ('BOB','2022-10-23',6.735698),
 ('BRL','2022-10-23',5.084225),
 ('BSD','2022-10-23',0.974927),
 ('BTC','2022-10-23',0.000050606667),
 ('BTN','2022-10-23',80.620597),
 ('BWP','2022-10-23',13.173838),
 ('BYN','2022-10-23',2.472938),
 ('BYR','2022-10-23',19293.277222),
 ('BZD','2022-10-23',1.965092),
 ('CAD','2022-10-23',1.346168),
 ('CDF','2022-10-23',2020.872003),
 ('CHF','2022-10-23',0.982869),
 ('CLF','2022-10-23',0.034702),
 ('CLP','2022-10-23',957.527393),
 ('CNY','2022-10-23',7.139102),
 ('COP','2022-10-23',4841.136056),
 ('CRC','2022-10-23',604.921432),
 ('CUC','2022-10-23',0.984351),
 ('CUP','2022-10-23',26.085298),
 ('CVE','2022-10-23',110.226466),
 ('CZK','2022-10-23',24.490157),
 ('DJF','2022-10-23',173.551642),
 ('DKK','2022-10-23',7.439537),
 ('DOP','2022-10-23',52.569303),
 ('DZD','2022-10-23',138.346602),
 ('EGP','2022-10-23',19.125686),
 ('ERN','2022-10-23',14.765263),
 ('ETB','2022-10-23',51.615416),
 ('EUR','2022-10-23',1),
 ('FJD','2022-10-23',2.287137),
 ('FKP','2022-10-23',0.868714),
 ('GBP','2022-10-23',0.869433),
 ('GEL','2022-10-23',2.716621),
 ('GGP','2022-10-23',0.868714),
 ('GHS','2022-10-23',13.280702),
 ('GIP','2022-10-23',0.868714),
 ('GMD','2022-10-23',56.452574),
 ('GNF','2022-10-23',8409.897813),
 ('GTQ','2022-10-23',7.641251),
 ('GYD','2022-10-23',203.899432),
 ('HKD','2022-10-23',7.726515),
 ('HNL','2022-10-23',24.096962),
 ('HRK','2022-10-23',7.522706),
 ('HTG','2022-10-23',124.294802),
 ('HUF','2022-10-23',409.962538),
 ('IDR','2022-10-23',15342.092795),
 ('ILS','2022-10-23',3.504028),
 ('IMP','2022-10-23',0.868714),
 ('INR','2022-10-23',81.250143),
 ('IQD','2022-10-23',1422.827226),
 ('IRR','2022-10-23',41687.260009),
 ('ISK','2022-10-23',142.110706),
 ('JEP','2022-10-23',0.868714),
 ('JMD','2022-10-23',149.163161),
 ('JOD','2022-10-23',0.697891),
 ('JPY','2022-10-23',146.557016),
 ('KES','2022-10-23',119.305028),
 ('KGS','2022-10-23',81.320576),
 ('KHR','2022-10-23',4033.968395),
 ('KMF','2022-10-23',492.618213),
 ('KPW','2022-10-23',885.915655),
 ('KRW','2022-10-23',1415.881265),
 ('KWD','2022-10-23',0.305237),
 ('KYD','2022-10-23',0.812398),
 ('KZT','2022-10-23',461.361825),
 ('LAK','2022-10-23',16872.586754),
 ('LBP','2022-10-23',1474.044081),
 ('LKR','2022-10-23',353.869474),
 ('LRD','2022-10-23',151.245723),
 ('LSL','2022-10-23',17.944434),
 ('LTL','2022-10-23',2.906532),
 ('LVL','2022-10-23',0.595424),
 ('LYD','2022-10-23',4.905631),
 ('MAD','2022-10-23',10.748716),
 ('MDL','2022-10-23',18.912231),
 ('MGA','2022-10-23',4161.307556),
 ('MKD','2022-10-23',61.602226),
 ('MMK','2022-10-23',2047.346135),
 ('MNT','2022-10-23',3307.197632),
 ('MOP','2022-10-23',7.881566),
 ('MRO','2022-10-23',351.413094),
 ('MUR','2022-10-23',43.626863),
 ('MVR','2022-10-23',15.134422),
 ('MWK','2022-10-23',1001.286399),
 ('MXN','2022-10-23',19.64691),
 ('MYR','2022-10-23',4.663868),
 ('MZN','2022-10-23',62.83087),
 ('NAD','2022-10-23',17.94423),
 ('NGN','2022-10-23',429.770543),
 ('NIO','2022-10-23',35.06551),
 ('NOK','2022-10-23',10.375132),
 ('NPR','2022-10-23',129.02011),
 ('NZD','2022-10-23',1.713327),
 ('OMR','2022-10-23',0.37965),
 ('PAB','2022-10-23',0.974768),
 ('PEN','2022-10-23',3.885974),
 ('PGK','2022-10-23',3.434997),
 ('PHP','2022-10-23',57.889132),
 ('PKR','2022-10-23',215.3104),
 ('PLN','2022-10-23',4.775677),
 ('PYG','2022-10-23',7044.254882),
 ('QAR','2022-10-23',3.583775),
 ('RON','2022-10-23',4.908986),
 ('RSD','2022-10-23',117.093413),
 ('RUB','2022-10-23',60.685386),
 ('RWF','2022-10-23',1039.569477),
 ('SAR','2022-10-23',3.700077),
 ('SBD','2022-10-23',8.045478),
 ('SCR','2022-10-23',14.483879),
 ('SDG','2022-10-23',561.079853),
 ('SEK','2022-10-23',11.067253),
 ('SGD','2022-10-23',1.396692),
 ('SHP','2022-10-23',1.355847),
 ('SLL','2022-10-23',16665.060126),
 ('SOS','2022-10-23',559.602864),
 ('SRD','2022-10-23',28.077134),
 ('STD','2022-10-23',20374.075792),
 ('SVC','2022-10-23',8.529664),
 ('SYP','2022-10-23',2473.211147),
 ('SZL','2022-10-23',17.938967),
 ('THB','2022-10-23',37.464592),
 ('TJS','2022-10-23',9.916932),
 ('TMT','2022-10-23',3.455072),
 ('TND','2022-10-23',3.192212),
 ('TOP','2022-10-23',2.406048),
 ('TRY','2022-10-23',18.315453),
 ('TTD','2022-10-23',6.609032),
 ('TWD','2022-10-23',31.701316),
 ('TZS','2022-10-23',2295.506079),
 ('UAH','2022-10-23',36.003529),
 ('UGX','2022-10-23',3718.677759),
 ('USD','2022-10-23',0.984351),
 ('UYU','2022-10-23',40.209126),
 ('UZS','2022-10-23',10855.748882),
 ('VND','2022-10-23',24466.041089),
 ('VUV','2022-10-23',123.191405),
 ('WST','2022-10-23',2.800416),
 ('XAF','2022-10-23',655.88096),
 ('XAG','2022-10-23',0.051026),
 ('XAU','2022-10-23',0.000594),
 ('XCD','2022-10-23',2.660258),
 ('XDR','2022-10-23',0.763511),
 ('XOF','2022-10-23',655.894285),
 ('XPF','2022-10-23',117.72448),
 ('YER','2022-10-23',246.333634),
 ('ZAR','2022-10-23',17.881421),
 ('ZMK','2022-10-23',8860.354225),
 ('ZMW','2022-10-23',15.583752),
 ('ZWL','2022-10-23',316.960581);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `key` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `user_access`
--

DROP TABLE IF EXISTS `user_access`;
CREATE TABLE `user_access` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access_date` date NOT NULL,
  `access_count` int(10) unsigned NOT NULL,
  PRIMARY KEY (`userid`,`access_date`),
  CONSTRAINT `FK_user_activity_1` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_access`
--

/*!40000 ALTER TABLE `user_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_access` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
