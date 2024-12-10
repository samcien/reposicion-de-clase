-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: taller
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `movimientopartes`
--

DROP TABLE IF EXISTS `movimientopartes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientopartes` (
  `proveedor_id` varchar(10) DEFAULT NULL,
  `parte_numero` varchar(10) DEFAULT NULL,
  `proyecto_id` varchar(10) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  KEY `proveedor_id` (`proveedor_id`),
  KEY `parte_numero` (`parte_numero`),
  KEY `proyecto_id` (`proyecto_id`),
  CONSTRAINT `movimientopartes_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`),
  CONSTRAINT `movimientopartes_ibfk_2` FOREIGN KEY (`parte_numero`) REFERENCES `partes` (`numero_parte`),
  CONSTRAINT `movimientopartes_ibfk_3` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientopartes`
--

LOCK TABLES `movimientopartes` WRITE;
/*!40000 ALTER TABLE `movimientopartes` DISABLE KEYS */;
INSERT INTO `movimientopartes` VALUES ('V1','P1','Y1',200),('V1','P1','Y4',700),('V2','P3','Y1',400),('V2','P3','Y2',200),('V2','P3','Y3',200),('V2','P3','Y4',500),('V2','P3','Y5',600),('V2','P3','Y6',400),('V2','P3','Y7',800),('V2','P5','Y2',100),('V3','P3','Y1',200),('V3','P4','Y2',500),('V4','P6','Y3',300),('V4','P6','Y7',300),('V5','P2','Y2',200),('V5','P2','Y4',100),('V5','P5','Y5',500),('V5','P5','Y7',100),('V5','P6','Y2',200),('V5','P1','Y4',100),('V5','P3','Y4',200),('V5','P4','Y4',800),('V5','P5','Y4',400),('V5','P6','Y4',500);
/*!40000 ALTER TABLE `movimientopartes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partes`
--

DROP TABLE IF EXISTS `partes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partes` (
  `numero_parte` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `peso` decimal(5,2) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`numero_parte`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partes`
--

LOCK TABLES `partes` WRITE;
/*!40000 ALTER TABLE `partes` DISABLE KEYS */;
INSERT INTO `partes` VALUES ('P1','Tuerca','Rojo',12.00,'Londres'),('P2','Perno','Verde',17.00,'Paris'),('P3','Tornillo','Azul',14.00,'Londres'),('P4','Tornillo','Rojo',12.00,'Londres'),('P5','Leva','Azul',12.00,'Paris'),('P6','Engrane','Rojo',19.00,'Londres');
/*!40000 ALTER TABLE `partes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES ('V1','Smith',20,'Londres'),('V2','Jones',10,'Paris'),('V3','Blake',30,'Londres'),('V4','Clark',20,'Londres'),('V5','Adams',30,'Atenas');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proyectos` (
  `id_proyecto` varchar(10) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES ('Y1','Clasificador','Paris'),('Y2','Monitor','Roma'),('Y3','OCR','Atenas'),('Y4','Consola','Atenas'),('Y5','RAID','Londres'),('Y6','EDS','Oslo'),('Y7','Cinta','Londres');
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistapartesproyectos`
--

DROP TABLE IF EXISTS `vistapartesproyectos`;
/*!50001 DROP VIEW IF EXISTS `vistapartesproyectos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistapartesproyectos` AS SELECT 
 1 AS `parte`,
 1 AS `proyecto`,
 1 AS `cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaproveedorespartes`
--

DROP TABLE IF EXISTS `vistaproveedorespartes`;
/*!50001 DROP VIEW IF EXISTS `vistaproveedorespartes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaproveedorespartes` AS SELECT 
 1 AS `proveedor`,
 1 AS `parte`,
 1 AS `cantidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaproveedoresproyecto`
--

DROP TABLE IF EXISTS `vistaproveedoresproyecto`;
/*!50001 DROP VIEW IF EXISTS `vistaproveedoresproyecto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaproveedoresproyecto` AS SELECT 
 1 AS `proveedor`,
 1 AS `proyecto`,
 1 AS `total_partes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistaproyectospartes`
--

DROP TABLE IF EXISTS `vistaproyectospartes`;
/*!50001 DROP VIEW IF EXISTS `vistaproyectospartes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistaproyectospartes` AS SELECT 
 1 AS `proyecto`,
 1 AS `parte`,
 1 AS `cantidad_total`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vistatotalpartesproveedor`
--

DROP TABLE IF EXISTS `vistatotalpartesproveedor`;
/*!50001 DROP VIEW IF EXISTS `vistatotalpartesproveedor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistatotalpartesproveedor` AS SELECT 
 1 AS `proveedor`,
 1 AS `total_suministrado`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vistapartesproyectos`
--

/*!50001 DROP VIEW IF EXISTS `vistapartesproyectos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistapartesproyectos` AS select `p`.`nombre` AS `parte`,`pr`.`nombre` AS `proyecto`,`m`.`cantidad` AS `cantidad` from ((`movimientopartes` `m` join `partes` `p` on((`m`.`parte_numero` = `p`.`numero_parte`))) join `proyectos` `pr` on((`m`.`proyecto_id` = `pr`.`id_proyecto`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaproveedorespartes`
--

/*!50001 DROP VIEW IF EXISTS `vistaproveedorespartes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaproveedorespartes` AS select `v`.`nombre` AS `proveedor`,`p`.`nombre` AS `parte`,`m`.`cantidad` AS `cantidad` from ((`movimientopartes` `m` join `proveedores` `v` on((`m`.`proveedor_id` = `v`.`id`))) join `partes` `p` on((`m`.`parte_numero` = `p`.`numero_parte`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaproveedoresproyecto`
--

/*!50001 DROP VIEW IF EXISTS `vistaproveedoresproyecto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaproveedoresproyecto` AS select `v`.`nombre` AS `proveedor`,`pr`.`nombre` AS `proyecto`,sum(`m`.`cantidad`) AS `total_partes` from ((`movimientopartes` `m` join `proveedores` `v` on((`m`.`proveedor_id` = `v`.`id`))) join `proyectos` `pr` on((`m`.`proyecto_id` = `pr`.`id_proyecto`))) group by `v`.`nombre`,`pr`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistaproyectospartes`
--

/*!50001 DROP VIEW IF EXISTS `vistaproyectospartes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistaproyectospartes` AS select `pr`.`nombre` AS `proyecto`,`p`.`nombre` AS `parte`,sum(`m`.`cantidad`) AS `cantidad_total` from ((`movimientopartes` `m` join `proyectos` `pr` on((`m`.`proyecto_id` = `pr`.`id_proyecto`))) join `partes` `p` on((`m`.`parte_numero` = `p`.`numero_parte`))) group by `pr`.`nombre`,`p`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vistatotalpartesproveedor`
--

/*!50001 DROP VIEW IF EXISTS `vistatotalpartesproveedor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistatotalpartesproveedor` AS select `v`.`nombre` AS `proveedor`,sum(`m`.`cantidad`) AS `total_suministrado` from (`movimientopartes` `m` join `proveedores` `v` on((`m`.`proveedor_id` = `v`.`id`))) group by `v`.`nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09 21:11:08
