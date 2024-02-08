CREATE DATABASE  IF NOT EXISTS `libreria` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `libreria`;
-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: libreria
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `tbl_cat_editorial`
--

DROP TABLE IF EXISTS `tbl_cat_editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cat_editorial` (
  `Editorial_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Editorial_Editorial` varchar(60) DEFAULT NULL,
  `Editorial_Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Editorial_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cat_editorial`
--

LOCK TABLES `tbl_cat_editorial` WRITE;
/*!40000 ALTER TABLE `tbl_cat_editorial` DISABLE KEYS */;
INSERT INTO `tbl_cat_editorial` VALUES (1,'Alfaguara',1),(2,'Gredos',1),(3,'RM',1),(4,'Planeta',1),(5,'Lumen',1),(6,'Taurus',1),(7,'Trotta',1);
/*!40000 ALTER TABLE `tbl_cat_editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cat_genero`
--

DROP TABLE IF EXISTS `tbl_cat_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cat_genero` (
  `Genero_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Genero_Genero` varchar(45) DEFAULT NULL,
  `Genero_Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Genero_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cat_genero`
--

LOCK TABLES `tbl_cat_genero` WRITE;
/*!40000 ALTER TABLE `tbl_cat_genero` DISABLE KEYS */;
INSERT INTO `tbl_cat_genero` VALUES (1,'Romance',1),(2,'Historia',1),(3,'Novela Negra',1),(4,'Fantasia',1),(5,'Ciencia Ficcion',1),(6,'Terror',1),(7,'Viajes',1),(8,'Humor',1),(9,'Comedia',1);
/*!40000 ALTER TABLE `tbl_cat_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cat_idioma`
--

DROP TABLE IF EXISTS `tbl_cat_idioma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_cat_idioma` (
  `Idioma_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Idioma_Idioma` varchar(45) DEFAULT NULL,
  `Idioma_Activo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Idioma_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cat_idioma`
--

LOCK TABLES `tbl_cat_idioma` WRITE;
/*!40000 ALTER TABLE `tbl_cat_idioma` DISABLE KEYS */;
INSERT INTO `tbl_cat_idioma` VALUES (1,'Ingles','1'),(2,'Español','1'),(3,'Frances','1'),(4,'Italiano','1');
/*!40000 ALTER TABLE `tbl_cat_idioma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hist_ventas`
--

DROP TABLE IF EXISTS `tbl_hist_ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hist_ventas` (
  `Ventas_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Ventas_LibroId` int(11) DEFAULT NULL,
  `Ventas_Cantidad` int(11) DEFAULT NULL,
  `Ventas_Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Ventas_Id`),
  KEY `Ventas_LibroId_idx` (`Ventas_LibroId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hist_ventas`
--

LOCK TABLES `tbl_hist_ventas` WRITE;
/*!40000 ALTER TABLE `tbl_hist_ventas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_hist_ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ope_libro`
--

DROP TABLE IF EXISTS `tbl_ope_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_ope_libro` (
  `Libro_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Libro_Nombre` varchar(60) DEFAULT NULL,
  `Libro_Costo` int(11) DEFAULT NULL,
  `Libro_Cantidad` int(11) DEFAULT NULL,
  `Libro_EditorialId` int(11) DEFAULT NULL,
  `Libro_GeneroId` int(11) DEFAULT NULL,
  `Libro_Idioma_Id` int(11) DEFAULT NULL,
  `Libro_Activo` int(11) DEFAULT NULL,
  PRIMARY KEY (`Libro_Id`),
  KEY `Libro_EditorialId_idx` (`Libro_EditorialId`),
  KEY `Libro_GeneroId_idx` (`Libro_GeneroId`),
  KEY `Libro_IdiomaId_idx` (`Libro_Idioma_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ope_libro`
--

LOCK TABLES `tbl_ope_libro` WRITE;
/*!40000 ALTER TABLE `tbl_ope_libro` DISABLE KEYS */;
INSERT INTO `tbl_ope_libro` VALUES (1,'Bajo la misma estrella',289,12,1,1,2,1),(2,'Eleanor & Park',278,12,1,1,2,1);
/*!40000 ALTER TABLE `tbl_ope_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'libreria'
--

--
-- Dumping routines for database 'libreria'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Add_Libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Add_Libro`(
_Nombre varchar (50),
_Costo int,
_Cantidad int,
_EditorialId int,
_GeneroId int,
_IdiomasId int
)
BEGIN
 
 INSERT INTO tbl_ope_libro VALUES(
 NULL,
 _Nombre,
 _Costo,
 _Cantidad,
 _EditorialId,
 _GeneroId,
 _IdiomasId, 
 1);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Consultar_Libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Consultar_Libro`()
BEGIN
	SELECT 
		lb.Libro_Id,
		lb.Libro_Nombre,
		ed.Editorial_Editorial,
		gn.Genero_Genero,
        lb.Libro_Costo,
		lb.Libro_Cantidad
    FROM tbl_ope_libro lb
    INNER JOIN tbl_cat_editorial ed on lb.Libro_EditorialId = ed.Editorial_Id
    INNER JOIN tbl_cat_genero gn on lb.Libro_GeneroId = gn.Genero_Id
    WHERE lb.Libro_Activo=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Modificar_Libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Modificar_Libro`(
	_LibroId int,
    _newNombre varchar(50),
    _newGenero int,
    _newCosto int
    )
BEGIN
	UPDATE tbl_ope_libro
    SET Libro_Nombre = _newNombre,
        Libro_GeneroId = _newGenero,
        Libro_Costo = _newCosto
    WHERE Libro_Id = _LibroId;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Venta_Libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Venta_Libro`(
	_VentaId int,
    _VentaCantidad int
)
BEGIN
	Declare _CantidadMax int;
    Declare _Cantidad int;
    
    Declare _VentaActual int;
    Declare _Venta int;
    
    set _CantidadMax = (select Libro_Cantidad from tbl_ope_libro where Libro_Id = _VentaId);
    set _Cantidad = (_CantidadMax) - (_VentaCantidad);
    
    set _VentaActual = (select Libro_Cantidad from tbl_hist_ventas where Libro_Id = _VentaId);
    set _Venta = (_VentaActual) + (_VentaCantidad);
    
    IF _Cantidad >= 0 THEN
		UPDATE tbl_ope_libro
		SET Libro_Cantidad = _Cantidad WHERE Libro_Id = _VentaId;
        
        UPDATE tbl_hist_ventas
        SET Libro_Cantidad = _Venta WHERE Libro_Id = _VentaId 
        AND Libro_Activo = 1;
    END IF;
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

-- Dump completed on 2024-02-07 23:14:53
