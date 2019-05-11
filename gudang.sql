-- MySQL dump 10.16  Distrib 10.1.32-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: gudang
-- ------------------------------------------------------
-- Server version	10.1.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `idBarang` varchar(20) NOT NULL,
  `namaBarang` varchar(100) NOT NULL,
  `deskripsi` text,
  `hargaBeli` int(15) DEFAULT NULL,
  `hargaJual` int(15) DEFAULT NULL,
  `tglMasuk` date NOT NULL,
  `tglEks` date NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `satuan` varchar(100) DEFAULT NULL,
  `noPemasok` int(20) DEFAULT NULL,
  PRIMARY KEY (`idBarang`),
  UNIQUE KEY `namaBarang` (`namaBarang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES ('B001','keripik singkong','berat 5 kg',20000,30000,'2019-05-10','2020-12-19',30,'ball',2),('B002','Cabe','entah',20000,25000,'2019-05-11','2019-05-16',100,'pack',3);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailbeli`
--

DROP TABLE IF EXISTS `detailbeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailbeli` (
  `idBeli` varchar(20) DEFAULT NULL,
  `idBarang` varchar(20) DEFAULT NULL,
  `qtyBeli` int(11) DEFAULT NULL,
  `hargaBeli` int(15) DEFAULT NULL,
  `subHarga` bigint(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailbeli`
--

LOCK TABLES `detailbeli` WRITE;
/*!40000 ALTER TABLE `detailbeli` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailbeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detailjual`
--

DROP TABLE IF EXISTS `detailjual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detailjual` (
  `idJual` varchar(20) DEFAULT NULL,
  `idBarang` varchar(20) DEFAULT NULL,
  `qtyJual` int(11) DEFAULT NULL,
  `hargaJual` int(15) DEFAULT NULL,
  `subHarga` bigint(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detailjual`
--

LOCK TABLES `detailjual` WRITE;
/*!40000 ALTER TABLE `detailjual` DISABLE KEYS */;
/*!40000 ALTER TABLE `detailjual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hargajual`
--

DROP TABLE IF EXISTS `hargajual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hargajual` (
  `noHarga` int(11) NOT NULL AUTO_INCREMENT,
  `idBarang` varchar(20) DEFAULT NULL,
  `hargaAwal` int(11) DEFAULT NULL,
  `hargaAkhir` int(11) DEFAULT NULL,
  `tglUpdate` date DEFAULT NULL,
  `noPetugas` int(11) DEFAULT NULL,
  PRIMARY KEY (`noHarga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hargajual`
--

LOCK TABLES `hargajual` WRITE;
/*!40000 ALTER TABLE `hargajual` DISABLE KEYS */;
/*!40000 ALTER TABLE `hargajual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headbeli`
--

DROP TABLE IF EXISTS `headbeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headbeli` (
  `idBeli` varchar(20) NOT NULL,
  `totalHarga` bigint(15) DEFAULT NULL,
  `totalBayar` bigint(15) DEFAULT NULL,
  `tglBeli` date DEFAULT NULL,
  `noPemasok` int(11) DEFAULT NULL,
  `noPetugas` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idBeli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headbeli`
--

LOCK TABLES `headbeli` WRITE;
/*!40000 ALTER TABLE `headbeli` DISABLE KEYS */;
/*!40000 ALTER TABLE `headbeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headjual`
--

DROP TABLE IF EXISTS `headjual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `headjual` (
  `idJual` varchar(20) NOT NULL,
  `totalHarga` bigint(15) DEFAULT NULL,
  `totalBayar` bigint(15) DEFAULT NULL,
  `tglJual` date DEFAULT NULL,
  `noPetugas` int(11) DEFAULT NULL,
  `noPelanggan` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idJual`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `headjual`
--

LOCK TABLES `headjual` WRITE;
/*!40000 ALTER TABLE `headjual` DISABLE KEYS */;
/*!40000 ALTER TABLE `headjual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggan` (
  `noPelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `namaPelanggan` varchar(100) NOT NULL,
  `alamatPelanggan` text,
  `kontakPelanggan` varchar(100) DEFAULT NULL,
  `keterangan` varchar(100) NOT NULL,
  `noPetugas` int(11) NOT NULL,
  PRIMARY KEY (`noPelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggan`
--

LOCK TABLES `pelanggan` WRITE;
/*!40000 ALTER TABLE `pelanggan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelanggan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pemasok`
--

DROP TABLE IF EXISTS `pemasok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pemasok` (
  `noPemasok` int(20) NOT NULL AUTO_INCREMENT,
  `namaPemasok` varchar(100) NOT NULL,
  `alamatPemasok` text,
  `kontakPemasok` varchar(100) DEFAULT NULL,
  `noPetugas` int(11) NOT NULL,
  PRIMARY KEY (`noPemasok`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pemasok`
--

LOCK TABLES `pemasok` WRITE;
/*!40000 ALTER TABLE `pemasok` DISABLE KEYS */;
INSERT INTO `pemasok` VALUES (1,'','','',1),(2,'','','',1);
/*!40000 ALTER TABLE `pemasok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persediaan`
--

DROP TABLE IF EXISTS `persediaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persediaan` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `idBarang` varchar(20) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `tglMasuk` date NOT NULL,
  `tglEks` date DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persediaan`
--

LOCK TABLES `persediaan` WRITE;
/*!40000 ALTER TABLE `persediaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `persediaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petugas`
--

DROP TABLE IF EXISTS `petugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petugas` (
  `noPetugas` int(11) NOT NULL AUTO_INCREMENT,
  `namaPetugas` varchar(100) NOT NULL,
  `kontakPetugas` varchar(100) DEFAULT NULL,
  `username` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `hakAkses` varchar(100) NOT NULL,
  PRIMARY KEY (`noPetugas`),
  UNIQUE KEY `username` (`username`,`pass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petugas`
--

LOCK TABLES `petugas` WRITE;
/*!40000 ALTER TABLE `petugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `petugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisabeli`
--

DROP TABLE IF EXISTS `sisabeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisabeli` (
  `noSisa` int(11) NOT NULL,
  `idBeli` varchar(20) DEFAULT NULL,
  `sisa` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `tglBayar` date DEFAULT NULL,
  `noPetugas` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`noSisa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisabeli`
--

LOCK TABLES `sisabeli` WRITE;
/*!40000 ALTER TABLE `sisabeli` DISABLE KEYS */;
/*!40000 ALTER TABLE `sisabeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisajual`
--

DROP TABLE IF EXISTS `sisajual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisajual` (
  `noSisa` int(11) NOT NULL,
  `idJual` varchar(20) DEFAULT NULL,
  `sisa` int(11) DEFAULT NULL,
  `bayar` int(11) DEFAULT NULL,
  `tglBayar` date DEFAULT NULL,
  `noPetugas` int(11) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`noSisa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisajual`
--

LOCK TABLES `sisajual` WRITE;
/*!40000 ALTER TABLE `sisajual` DISABLE KEYS */;
/*!40000 ALTER TABLE `sisajual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tgleks`
--

DROP TABLE IF EXISTS `tgleks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tgleks` (
  `noTgl` int(11) NOT NULL AUTO_INCREMENT,
  `idBarang` varchar(20) DEFAULT NULL,
  `tglMasuk` date NOT NULL,
  `tglEks` date DEFAULT NULL,
  PRIMARY KEY (`noTgl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tgleks`
--

LOCK TABLES `tgleks` WRITE;
/*!40000 ALTER TABLE `tgleks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tgleks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-11 14:35:14
