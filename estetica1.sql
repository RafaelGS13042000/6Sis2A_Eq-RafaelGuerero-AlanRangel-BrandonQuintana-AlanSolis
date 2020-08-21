-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: estetica
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ccolonia`
--

DROP TABLE IF EXISTS `ccolonia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ccolonia` (
  `id_col` int NOT NULL,
  `nom_col` varchar(45) NOT NULL,
  PRIMARY KEY (`id_col`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccolonia`
--

LOCK TABLES `ccolonia` WRITE;
/*!40000 ALTER TABLE `ccolonia` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccolonia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdelegacion`
--

DROP TABLE IF EXISTS `cdelegacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdelegacion` (
  `id_del` int NOT NULL,
  `nom_del` varchar(45) NOT NULL,
  PRIMARY KEY (`id_del`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdelegacion`
--

LOCK TABLES `cdelegacion` WRITE;
/*!40000 ALTER TABLE `cdelegacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdelegacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cdireccion`
--

DROP TABLE IF EXISTS `cdireccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cdireccion` (
  `id_direc` int NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `num_ext` varchar(45) NOT NULL,
  `cod_pos` varchar(45) NOT NULL,
  `id_col` int NOT NULL,
  `id_del` int NOT NULL,
  PRIMARY KEY (`id_direc`),
  KEY `fk_Cdireccion_Ccolonia1_idx` (`id_col`),
  KEY `fk_Cdireccion_Cdelegacion1_idx` (`id_del`),
  CONSTRAINT `fk_Cdireccion_Ccolonia1` FOREIGN KEY (`id_col`) REFERENCES `ccolonia` (`id_col`) ON DELETE CASCADE,
  CONSTRAINT `fk_Cdireccion_Cdelegacion1` FOREIGN KEY (`id_del`) REFERENCES `cdelegacion` (`id_del`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cdireccion`
--

LOCK TABLES `cdireccion` WRITE;
/*!40000 ALTER TABLE `cdireccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cdireccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cservicio`
--

DROP TABLE IF EXISTS `cservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cservicio` (
  `id_c_ser` int NOT NULL,
  `serv` varchar(45) NOT NULL,
  PRIMARY KEY (`id_c_ser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cservicio`
--

LOCK TABLES `cservicio` WRITE;
/*!40000 ALTER TABLE `cservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `cservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csucursal`
--

DROP TABLE IF EXISTS `csucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `csucursal` (
  `id_socursal` int NOT NULL,
  `nom_sor` varchar(45) NOT NULL,
  `id_direc` int NOT NULL,
  PRIMARY KEY (`id_socursal`),
  KEY `fk_Csucursal_Cdireccion_idx` (`id_direc`),
  CONSTRAINT `fk_Csucursal_Cdireccion` FOREIGN KEY (`id_direc`) REFERENCES `cdireccion` (`id_direc`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csucursal`
--

LOCK TABLES `csucursal` WRITE;
/*!40000 ALTER TABLE `csucursal` DISABLE KEYS */;
/*!40000 ALTER TABLE `csucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctrabajador`
--

DROP TABLE IF EXISTS `ctrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ctrabajador` (
  `id_c_tra` int NOT NULL,
  `tipo_traba` varchar(45) NOT NULL,
  PRIMARY KEY (`id_c_tra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctrabajador`
--

LOCK TABLES `ctrabajador` WRITE;
/*!40000 ALTER TABLE `ctrabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dcita`
--

DROP TABLE IF EXISTS `dcita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dcita` (
  `id_cita` int NOT NULL,
  `fech_cit` varchar(45) NOT NULL,
  `hor_ini` varchar(45) NOT NULL,
  `id_clie` int NOT NULL,
  `id_servi` int NOT NULL,
  `id_m_cit` int NOT NULL,
  `id_socursal` int NOT NULL,
  `id_e_tra` int NOT NULL,
  PRIMARY KEY (`id_cita`),
  KEY `fk_Dcita_Mcliente1_idx` (`id_clie`),
  KEY `fk_Dcita_Mservicio1_idx` (`id_servi`),
  KEY `fk_Dcita_Mcita1_idx` (`id_m_cit`),
  KEY `fk_Dcita_Csucursal1_idx` (`id_socursal`),
  KEY `fk_Dcita_Ecitatrabajador1_idx` (`id_e_tra`),
  CONSTRAINT `fk_Dcita_Csucursal1` FOREIGN KEY (`id_socursal`) REFERENCES `csucursal` (`id_socursal`),
  CONSTRAINT `fk_Dcita_Ecitatrabajador1` FOREIGN KEY (`id_e_tra`) REFERENCES `ecitatrabajador` (`id_e_tra`),
  CONSTRAINT `fk_Dcita_Mcita1` FOREIGN KEY (`id_m_cit`) REFERENCES `mcita` (`id_m_cit`),
  CONSTRAINT `fk_Dcita_Mcliente1` FOREIGN KEY (`id_clie`) REFERENCES `mcliente` (`id_clie`),
  CONSTRAINT `fk_Dcita_Mservicio1` FOREIGN KEY (`id_servi`) REFERENCES `mservicio` (`id_servi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dcita`
--

LOCK TABLES `dcita` WRITE;
/*!40000 ALTER TABLE `dcita` DISABLE KEYS */;
/*!40000 ALTER TABLE `dcita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecitatrabajador`
--

DROP TABLE IF EXISTS `ecitatrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ecitatrabajador` (
  `id_e_tra` int NOT NULL,
  `hor_ini` varchar(45) NOT NULL,
  `hor_fin` varchar(45) NOT NULL,
  `fec_ci` varchar(45) NOT NULL,
  `id_traba` int NOT NULL,
  PRIMARY KEY (`id_e_tra`),
  KEY `fk_Ecitatrabajador_Mtrabajador1_idx` (`id_traba`),
  CONSTRAINT `fk_Ecitatrabajador_Mtrabajador1` FOREIGN KEY (`id_traba`) REFERENCES `mtrabajador` (`id_traba`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecitatrabajador`
--

LOCK TABLES `ecitatrabajador` WRITE;
/*!40000 ALTER TABLE `ecitatrabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecitatrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcita`
--

DROP TABLE IF EXISTS `mcita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcita` (
  `id_m_cit` int NOT NULL,
  `apar_mont` varchar(45) NOT NULL,
  PRIMARY KEY (`id_m_cit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcita`
--

LOCK TABLES `mcita` WRITE;
/*!40000 ALTER TABLE `mcita` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcliente`
--

DROP TABLE IF EXISTS `mcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcliente` (
  `id_clie` int NOT NULL,
  `nom_clie` varchar(45) NOT NULL,
  `direc` varchar(45) NOT NULL,
  `tele_clien` varchar(45) NOT NULL,
  `corre_clien` varchar(45) NOT NULL,
  `clave` varchar(45) NOT NULL,
  PRIMARY KEY (`id_clie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcliente`
--

LOCK TABLES `mcliente` WRITE;
/*!40000 ALTER TABLE `mcliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `mcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mservicio`
--

DROP TABLE IF EXISTS `mservicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mservicio` (
  `id_servi` int NOT NULL,
  `nom_ser` varchar(45) NOT NULL,
  `pag_ser` varchar(45) NOT NULL,
  `dur_ser` varchar(45) NOT NULL,
  `cos_ser` varchar(45) NOT NULL,
  `id_c_ser` int NOT NULL,
  PRIMARY KEY (`id_servi`),
  KEY `fk_Mservicio_Cservicio1_idx` (`id_c_ser`),
  CONSTRAINT `fk_Mservicio_Cservicio1` FOREIGN KEY (`id_c_ser`) REFERENCES `cservicio` (`id_c_ser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mservicio`
--

LOCK TABLES `mservicio` WRITE;
/*!40000 ALTER TABLE `mservicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `mservicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mtrabajador`
--

DROP TABLE IF EXISTS `mtrabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mtrabajador` (
  `id_traba` int NOT NULL,
  `nom_tra` varchar(45) NOT NULL,
  `apell_tra` varchar(45) NOT NULL,
  `id_c_tra` int NOT NULL,
  PRIMARY KEY (`id_traba`),
  KEY `fk_Mtrabajador_Ctrabajador1_idx` (`id_c_tra`),
  CONSTRAINT `fk_Mtrabajador_Ctrabajador1` FOREIGN KEY (`id_c_tra`) REFERENCES `ctrabajador` (`id_c_tra`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mtrabajador`
--

LOCK TABLES `mtrabajador` WRITE;
/*!40000 ALTER TABLE `mtrabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `mtrabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'estetica'
--

--
-- Dumping routines for database 'estetica'
--
/*!50003 DROP PROCEDURE IF EXISTS `consultarlacitaxsocursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consultarlacitaxsocursal`(
in socursal varchar(45)
)
BEGIN
select d.fech_cit,d.hor_ini
from dcita as d 
inner join csucursal as c 
on(d.id_socursal=c.id_socursal)
where 
c.nom_sor=socursal;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Disponibilidaddelempleado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Disponibilidaddelempleado`(
in nombre varchar(45),
in apellido varchar(45)
)
BEGIN
select e.hor_fin,e.hor_ini
from mtrabajador as m 
inner join ecitatrabajador as e
on(m.id_traba=e.id_traba)

where
m.nom_tra=nombre
and
m.apell_tra=apellido;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listadodeserviciosxtiempo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listadodeserviciosxtiempo`(
in tiempo varchar(45)
)
BEGIN
select m.nom_ser,m.cos_ser,c.serv
from mservicio as m 
inner join cservicio as c 
on(m.id_c_ser=c.id_c_ser)
where
m.dur_ser=tiempo
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pagoscorrespondientesdelosserviciossolicitadosporlosclientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `pagoscorrespondientesdelosserviciossolicitadosporlosclientes`(
in pagos int 
)
BEGIN
select c.serv,mc.nom_clie
from cservicio as c
inner join mservicio as m
on(c.id_c_ser=m.id_c_ser)
inner join dcita as d 
on(m.id_servi=d.id_servi)
inner join mcliente as mc
on(d.id_clie=mc.id_clie)

where 
m.pag_ser=pagos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `podrávisualizarcualeselempleadoquemascitashaatendido` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `podrávisualizarcualeselempleadoquemascitashaatendido`(
in empleado varchar(45)

)
BEGIN
select count(id_cita)
from dcita as d 
inner join ecitatrabajador as e 
on(d.id_e_tra=e.id_e_tra)
inner join mtrabajador as m 
on(e.id_traba=m.id_traba)
where
nom_tra=empleado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Serviciosmasvendidos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Serviciosmasvendidos`(
in fecha varchar(45)
)
BEGIN
select c.ser,count(*)
from cservicio as c
inner join mservicio as m
on(c.id_c_ser=m.id_c_ser)
inner join dcita as d 
on(m.id_servi=d.id_servi)
where
d.fech_cit=fecha
;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-21  6:38:30
