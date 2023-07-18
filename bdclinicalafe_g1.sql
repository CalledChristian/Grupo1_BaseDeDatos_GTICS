-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 34.75.40.250    Database: bdclinicag1_v2
-- ------------------------------------------------------
-- Server version	8.0.26-google

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `SPRING_SESSION`
--

DROP TABLE IF EXISTS `SPRING_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION`
--

LOCK TABLES `SPRING_SESSION` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION` DISABLE KEYS */;
INSERT INTO `SPRING_SESSION` VALUES ('1814369e-559f-42f8-86b2-26ca75d6910e','f3a0a9f4-8834-4847-9f93-a0b03473f3ec',1689721511975,1689723408864,1800,1689725208864,'alejandro.as@pucp.edu.pe'),('300498e0-7c85-4896-b5f1-d28791f8e09f','e1b04a7b-9237-4d11-a4e3-d50bc7f88a4b',1689721941147,1689722160905,1800,1689723960905,'a20192270@pucp.edu.pe'),('34377fc2-e200-408d-b036-911993115318','47f0e291-55d8-4ea2-b0c3-a38baf9024db',1689722300754,1689723163676,1800,1689724963676,'abigail.ramirez@pucp.edu.pe'),('69345ed9-a337-439f-b856-e2c466d1290f','1cda5c24-c40e-45cb-b9d2-b0167a5740c9',1689715669704,1689723445100,1800,1689725245100,'a20192270@pucp.edu.pe'),('7eb31f8b-a68f-402b-95fc-7d0312f756bd','e9892c7d-62ff-4a47-890f-f2fec151d58f',1689721807173,1689722875563,1800,1689724675563,'alejandro.as@pucp.edu.pe'),('a62763e7-7b63-4ac4-8bb5-b720248942a6','ff01f47a-d4d6-47c5-8c4d-2d1c77c1d024',1689722076266,1689722302920,1800,1689724102920,'abigail.ramirez@pucp.edu.pe');
/*!40000 ALTER TABLE `SPRING_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPRING_SESSION_ATTRIBUTES`
--

DROP TABLE IF EXISTS `SPRING_SESSION_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `SPRING_SESSION` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION_ATTRIBUTES`
--

LOCK TABLES `SPRING_SESSION_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `SPRING_SESSION_ATTRIBUTES` VALUES ('1814369e-559f-42f8-86b2-26ca75d6910e','configuiux',_binary '¨\Ì\0t\0#f2da40'),('1814369e-559f-42f8-86b2-26ca75d6910e','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '¨\Ì\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\Ô∑\»/¢˚\’\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$9161d4b8-d0bb-4d5b-a807-1490761f4874'),('1814369e-559f-42f8-86b2-26ca75d6910e','SPRING_SECURITY_CONTEXT',_binary '¨\Ì\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0pacientexq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0190.119.190.102t\0$80f351eb-92da-43bc-bed1-4c081ede4973psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0\nsr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0alejandro.as@pucp.edu.pe'),('1814369e-559f-42f8-86b2-26ca75d6910e','usuario',_binary '¨\Ì\0sr\0.com.example.proyectogticsgrupo1.Entity.Usuario$}\‹~J\0L\0	apellidost\0Ljava/lang/String;L\0celularq\0~\0L\0\ncontrasenaq\0~\0L\0correoq\0~\0L\0dniq\0~\0L\0edadt\0Ljava/lang/Integer;L\0especialidadt\05Lcom/example/proyectogticsgrupo1/Entity/Especialidad;L\0estadohabilitadoq\0~\0L\0fechanacimientot\0Ljava/util/Date;L\0\rformaregistroq\0~\0L\0fotoq\0~\0L\0generoq\0~\0L\0	idusuarioq\0~\0L\0nombresq\0~\0L\0sedet\0-Lcom/example/proyectogticsgrupo1/Entity/Sede;L\0sueldot\0Ljava/lang/Double;L\0\rtipodeusuariot\06Lcom/example/proyectogticsgrupo1/Entity/Tipodeusuario;xpt\0	Alejandrot\0	942533243t\0<$2a$04$H217j20nvJtUgPdKlziIZO5TfmRIS0F7w49wJ8TDEWNCJ6tqZ7/mqt\0alejandro.as@pucp.edu.pet\024523432sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0psq\0~\0\0\0\0sr\0java.sql.Timestamp&\’\»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0\0ˆ¶4L\0x\0\0\0\0t\0Invitado por Correot\0Hhttps://lafe.blob.core.windows.net/clinicalafe/paciente1807231311125.pngt\0Femeninosq\0~\0\0\0\0t\0Anasr\0+com.example.proyectogticsgrupo1.Entity.SedeCp\÷}ﬂ∏≤æ\0L\0coordenadasq\0~\0L\0	direccionq\0~\0L\0idsedeq\0~\0L\0nombreq\0~\0xpt\012.0744,-77.0288t\0Jir√≥n Zorritos 456sq\0~\0\0\0\0t\0Lincepsr\04com.example.proyectogticsgrupo1.Entity.Tipodeusuarioß∫?§\“˙\0L\0idtipodeusuarioq\0~\0L\0nombreq\0~\0xpsq\0~\0\0\0\0t\0paciente'),('300498e0-7c85-4896-b5f1-d28791f8e09f','configuiux',_binary '¨\Ì\0t\0#f2da40'),('300498e0-7c85-4896-b5f1-d28791f8e09f','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '¨\Ì\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\Ô∑\»/¢˚\’\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$78749756-d299-4711-a7f8-793d7400397d'),('300498e0-7c85-4896-b5f1-d28791f8e09f','SPRING_SECURITY_CONTEXT',_binary '¨\Ì\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0\nsuperadminxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0190.119.190.105t\0$e684fb24-d5e5-431b-8a34-64a02bc201a9psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0\nsr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0a20192270@pucp.edu.pe'),('300498e0-7c85-4896-b5f1-d28791f8e09f','superadmin',_binary '¨\Ì\0sr\0.com.example.proyectogticsgrupo1.Entity.Usuario$}\‹~J\0L\0	apellidost\0Ljava/lang/String;L\0celularq\0~\0L\0\ncontrasenaq\0~\0L\0correoq\0~\0L\0dniq\0~\0L\0edadt\0Ljava/lang/Integer;L\0especialidadt\05Lcom/example/proyectogticsgrupo1/Entity/Especialidad;L\0estadohabilitadoq\0~\0L\0fechanacimientot\0Ljava/util/Date;L\0\rformaregistroq\0~\0L\0fotoq\0~\0L\0generoq\0~\0L\0	idusuarioq\0~\0L\0nombresq\0~\0L\0sedet\0-Lcom/example/proyectogticsgrupo1/Entity/Sede;L\0sueldot\0Ljava/lang/Double;L\0\rtipodeusuariot\06Lcom/example/proyectogticsgrupo1/Entity/Tipodeusuario;xpt\0Jaureguit\0	940128189t\0<$2a$12$svRS95K9NvBSTd06S0wxOuD92A6iPI9gagjVZzelIo7ugqGzugrgSt\0a20192270@pucp.edu.pet\072299800sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0psq\0~\0\0\0\0sr\0java.sql.Timestamp&\’\»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0\0\Í\Î\ÿ\»\0x\0\0\0\0pt\0Jhttps://lafe.blob.core.windows.net/clinicalafe/perfilSuper180723170518.jpgt\0Femeninoq\0~\0t\0Alexiappsr\04com.example.proyectogticsgrupo1.Entity.Tipodeusuarioß∫?§\“˙\0L\0idtipodeusuarioq\0~\0L\0nombreq\0~\0xpq\0~\0t\0\nsuperadmin'),('300498e0-7c85-4896-b5f1-d28791f8e09f','usuario',_binary '¨\Ì\0sr\0.com.example.proyectogticsgrupo1.Entity.Usuario$}\‹~J\0L\0	apellidost\0Ljava/lang/String;L\0celularq\0~\0L\0\ncontrasenaq\0~\0L\0correoq\0~\0L\0dniq\0~\0L\0edadt\0Ljava/lang/Integer;L\0especialidadt\05Lcom/example/proyectogticsgrupo1/Entity/Especialidad;L\0estadohabilitadoq\0~\0L\0fechanacimientot\0Ljava/util/Date;L\0\rformaregistroq\0~\0L\0fotoq\0~\0L\0generoq\0~\0L\0	idusuarioq\0~\0L\0nombresq\0~\0L\0sedet\0-Lcom/example/proyectogticsgrupo1/Entity/Sede;L\0sueldot\0Ljava/lang/Double;L\0\rtipodeusuariot\06Lcom/example/proyectogticsgrupo1/Entity/Tipodeusuario;xpt\0	Alejandrot\0	942533243t\0<$2a$04$H217j20nvJtUgPdKlziIZO5TfmRIS0F7w49wJ8TDEWNCJ6tqZ7/mqt\0alejandro.as@pucp.edu.pet\024523432sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0psq\0~\0\0\0\0sr\0java.sql.Timestamp&\’\»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0\0ˆ¶4L\0x\0\0\0\0t\0Invitado por Correot\0Hhttps://lafe.blob.core.windows.net/clinicalafe/paciente1807231311125.pngt\0Femeninosq\0~\0\0\0\0t\0Anasr\0+com.example.proyectogticsgrupo1.Entity.SedeCp\÷}ﬂ∏≤æ\0L\0coordenadasq\0~\0L\0	direccionq\0~\0L\0idsedeq\0~\0L\0nombreq\0~\0xpt\012.0744,-77.0288t\0Jir√≥n Zorritos 456sq\0~\0\0\0\0t\0Lincepsr\04com.example.proyectogticsgrupo1.Entity.Tipodeusuarioß∫?§\“˙\0L\0idtipodeusuarioq\0~\0L\0nombreq\0~\0xpsq\0~\0\0\0\0t\0paciente'),('34377fc2-e200-408d-b036-911993115318','configuiux',_binary '¨\Ì\0t\0#2b7be3'),('34377fc2-e200-408d-b036-911993115318','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '¨\Ì\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\Ô∑\»/¢˚\’\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$a50fb879-4678-45a0-8de5-1424b8e2e416'),('34377fc2-e200-408d-b036-911993115318','SPRING_SECURITY_CONTEXT',_binary '¨\Ì\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0doctorxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0$c8c93168-918e-4396-9745-5b80717f391bpsr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0\nsr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0abigail.ramirez@pucp.edu.pe'),('34377fc2-e200-408d-b036-911993115318','usuario',_binary '¨\Ì\0sr\0.com.example.proyectogticsgrupo1.Entity.Usuario$}\‹~J\0L\0	apellidost\0Ljava/lang/String;L\0celularq\0~\0L\0\ncontrasenaq\0~\0L\0correoq\0~\0L\0dniq\0~\0L\0edadt\0Ljava/lang/Integer;L\0especialidadt\05Lcom/example/proyectogticsgrupo1/Entity/Especialidad;L\0estadohabilitadoq\0~\0L\0fechanacimientot\0Ljava/util/Date;L\0\rformaregistroq\0~\0L\0fotoq\0~\0L\0generoq\0~\0L\0	idusuarioq\0~\0L\0nombresq\0~\0L\0sedet\0-Lcom/example/proyectogticsgrupo1/Entity/Sede;L\0sueldot\0Ljava/lang/Double;L\0\rtipodeusuariot\06Lcom/example/proyectogticsgrupo1/Entity/Tipodeusuario;xpt\0Ramirezt\0	942523241t\0<$2a$10$l.gpm5USNtRsajQ3NnWf5uL9ysHRItDG1FiH00K5udBEeFGBAcYRKt\0abigail.ramirez@pucp.edu.pet\034542412sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0sr\03com.example.proyectogticsgrupo1.Entity.Especialidad	{”£ÿú≤\0L\0costoq\0~\0L\0idespecialidadq\0~\0L\0nombreq\0~\0xpsr\0java.lang.DoubleÄ≥\¬J)k˚\0D\0valuexq\0~\0@^\0\0\0\0\0\0sq\0~\0\0\0\0t\0Traumatolog√≠asq\0~\0\0\0\0sr\0java.sql.Timestamp&\’\»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0\0\Ë~Äx\0\0\0\0t\0\0t\0:https://lafe.blob.core.windows.net/clinicalafe/doctor7.jpgt\0Femeninosq\0~\0\0\0\0t\0Abigailsr\0+com.example.proyectogticsgrupo1.Entity.SedeCp\÷}ﬂ∏≤æ\0L\0coordenadasq\0~\0L\0	direccionq\0~\0L\0idsedeq\0~\0L\0nombreq\0~\0xpt\012.0744,-77.0288t\0Jir√≥n Zorritos 456q\0~\0t\0Lincesq\0~\0@∂®\0\0\0\0\0sr\04com.example.proyectogticsgrupo1.Entity.Tipodeusuarioß∫?§\“˙\0L\0idtipodeusuarioq\0~\0L\0nombreq\0~\0xpsq\0~\0\0\0\0t\0doctor'),('69345ed9-a337-439f-b856-e2c466d1290f','configuiux',_binary '¨\Ì\0t\0#ed832c'),('69345ed9-a337-439f-b856-e2c466d1290f','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '¨\Ì\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\Ô∑\»/¢˚\’\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$028939ff-9508-4b31-994d-e85270a798de'),('69345ed9-a337-439f-b856-e2c466d1290f','SPRING_SECURITY_CONTEXT',_binary '¨\Ì\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0\nsuperadminxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\00:0:0:0:0:0:0:1t\0$3bcb3160-55a9-4b76-943a-e0b0731c7e11psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0\nsr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0a20192270@pucp.edu.pe'),('69345ed9-a337-439f-b856-e2c466d1290f','usuario',_binary '¨\Ì\0sr\0.com.example.proyectogticsgrupo1.Entity.Usuario$}\‹~J\0L\0	apellidost\0Ljava/lang/String;L\0celularq\0~\0L\0\ncontrasenaq\0~\0L\0correoq\0~\0L\0dniq\0~\0L\0edadt\0Ljava/lang/Integer;L\0especialidadt\05Lcom/example/proyectogticsgrupo1/Entity/Especialidad;L\0estadohabilitadoq\0~\0L\0fechanacimientot\0Ljava/util/Date;L\0\rformaregistroq\0~\0L\0fotoq\0~\0L\0generoq\0~\0L\0	idusuarioq\0~\0L\0nombresq\0~\0L\0sedet\0-Lcom/example/proyectogticsgrupo1/Entity/Sede;L\0sueldot\0Ljava/lang/Double;L\0\rtipodeusuariot\06Lcom/example/proyectogticsgrupo1/Entity/Tipodeusuario;xpt\0Jaureguit\0	940128189t\0<$2a$12$svRS95K9NvBSTd06S0wxOuD92A6iPI9gagjVZzelIo7ugqGzugrgSt\0a20192270@pucp.edu.pet\072299800sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0psq\0~\0\0\0\0sr\0java.sql.Timestamp&\’\»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0\0\Í\Ï\ÎpÄx\0\0\0\0pt\0Jhttps://lafe.blob.core.windows.net/clinicalafe/perfilSuper180723170518.jpgt\0Femeninoq\0~\0t\0Alexiappsr\04com.example.proyectogticsgrupo1.Entity.Tipodeusuarioß∫?§\“˙\0L\0idtipodeusuarioq\0~\0L\0nombreq\0~\0xpq\0~\0t\0\nsuperadmin'),('7eb31f8b-a68f-402b-95fc-7d0312f756bd','configuiux',_binary '¨\Ì\0t\0#f2da40'),('7eb31f8b-a68f-402b-95fc-7d0312f756bd','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '¨\Ì\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\Ô∑\»/¢˚\’\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$4b6286b3-b066-40ce-82d7-5f7cd5325db0'),('7eb31f8b-a68f-402b-95fc-7d0312f756bd','SPRING_SECURITY_CONTEXT',_binary '¨\Ì\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0pacientexq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0190.119.190.102t\0$6f82edfc-74bf-4479-9872-dc791ddb4686psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0\nsr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0alejandro.as@pucp.edu.pe'),('7eb31f8b-a68f-402b-95fc-7d0312f756bd','usuario',_binary '¨\Ì\0sr\0.com.example.proyectogticsgrupo1.Entity.Usuario$}\‹~J\0L\0	apellidost\0Ljava/lang/String;L\0celularq\0~\0L\0\ncontrasenaq\0~\0L\0correoq\0~\0L\0dniq\0~\0L\0edadt\0Ljava/lang/Integer;L\0especialidadt\05Lcom/example/proyectogticsgrupo1/Entity/Especialidad;L\0estadohabilitadoq\0~\0L\0fechanacimientot\0Ljava/util/Date;L\0\rformaregistroq\0~\0L\0fotoq\0~\0L\0generoq\0~\0L\0	idusuarioq\0~\0L\0nombresq\0~\0L\0sedet\0-Lcom/example/proyectogticsgrupo1/Entity/Sede;L\0sueldot\0Ljava/lang/Double;L\0\rtipodeusuariot\06Lcom/example/proyectogticsgrupo1/Entity/Tipodeusuario;xpt\0	Alejandrot\0	942533243t\0<$2a$04$H217j20nvJtUgPdKlziIZO5TfmRIS0F7w49wJ8TDEWNCJ6tqZ7/mqt\0alejandro.as@pucp.edu.pet\024523432sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0psq\0~\0\0\0\0sr\0java.sql.Timestamp&\’\»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0\0ˆ¶4L\0x\0\0\0\0t\0Invitado por Correot\0Hhttps://lafe.blob.core.windows.net/clinicalafe/paciente1807231311125.pngt\0Femeninosq\0~\0\0\0\0t\0Anasr\0+com.example.proyectogticsgrupo1.Entity.SedeCp\÷}ﬂ∏≤æ\0L\0coordenadasq\0~\0L\0	direccionq\0~\0L\0idsedeq\0~\0L\0nombreq\0~\0xpt\012.0744,-77.0288t\0Jir√≥n Zorritos 456sq\0~\0\0\0\0t\0Lincepsr\04com.example.proyectogticsgrupo1.Entity.Tipodeusuarioß∫?§\“˙\0L\0idtipodeusuarioq\0~\0L\0nombreq\0~\0xpsq\0~\0\0\0\0t\0paciente'),('a62763e7-7b63-4ac4-8bb5-b720248942a6','configuiux',_binary '¨\Ì\0t\0#2b7be3'),('a62763e7-7b63-4ac4-8bb5-b720248942a6','org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository.CSRF_TOKEN',_binary '¨\Ì\0sr\06org.springframework.security.web.csrf.DefaultCsrfTokenZ\Ô∑\»/¢˚\’\0L\0\nheaderNamet\0Ljava/lang/String;L\0\rparameterNameq\0~\0L\0tokenq\0~\0xpt\0X-CSRF-TOKENt\0_csrft\0$61f7fa83-d88a-46bd-a0ad-169cb01ac40a'),('a62763e7-7b63-4ac4-8bb5-b720248942a6','SPRING_SECURITY_CONTEXT',_binary '¨\Ì\0sr\0=org.springframework.security.core.context.SecurityContextImpl\0\0\0\0\0\0X\0L\0authenticationt\02Lorg/springframework/security/core/Authentication;xpsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0X\0L\0credentialst\0Ljava/lang/Object;L\0	principalq\0~\0xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailsq\0~\0xpsr\0&java.util.Collections$UnmodifiableList¸%1µ\Ïé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0Ä\À^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ\“ô\«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0X\0L\0rolet\0Ljava/lang/String;xpt\0doctorxq\0~\0\rsr\0Horg.springframework.security.web.authentication.WebAuthenticationDetails\0\0\0\0\0\0X\0L\0\rremoteAddressq\0~\0L\0	sessionIdq\0~\0xpt\0190.119.190.102t\0$d3ff4e0d-8047-48e9-945f-e0abad27fa26psr\02org.springframework.security.core.userdetails.User\0\0\0\0\0\0X\0Z\0accountNonExpiredZ\0accountNonLockedZ\0credentialsNonExpiredZ\0enabledL\0authoritiest\0Ljava/util/Set;L\0passwordq\0~\0L\0usernameq\0~\0xpsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0\nsr\0java.util.TreeSet›òPìï\Ìá[\0\0xpsr\0Forg.springframework.security.core.userdetails.User$AuthorityComparator\0\0\0\0\0\0X\0\0xpw\0\0\0q\0~\0xpt\0abigail.ramirez@pucp.edu.pe'),('a62763e7-7b63-4ac4-8bb5-b720248942a6','SPRING_SECURITY_LAST_EXCEPTION',_binary '¨\Ì\0sr\0Corg.springframework.security.authentication.BadCredentialsException&N¸dÆ]\0\0xr\09org.springframework.security.core.AuthenticationExceptionQ0\‚gT\0\0xr\0\Zjava.lang.RuntimeExceptionû_G\n4É\Â\0\0xr\0java.lang.Exception\–˝>\Z;\ƒ\0\0xr\0java.lang.Throwable\’\∆5\'9w∏\À\0L\0causet\0Ljava/lang/Throwable;L\0\rdetailMessaget\0Ljava/lang/String;[\0\nstackTracet\0[Ljava/lang/StackTraceElement;L\0suppressedExceptionst\0Ljava/util/List;xpq\0~\0	t\0Bad credentialsur\0[Ljava.lang.StackTraceElement;F*<<˝\"9\0\0xp\0\0\0Asr\0java.lang.StackTraceElementa	≈ö&6›Ö\0B\0formatI\0\nlineNumberL\0classLoaderNameq\0~\0L\0declaringClassq\0~\0L\0fileNameq\0~\0L\0\nmethodNameq\0~\0L\0\nmoduleNameq\0~\0L\0\rmoduleVersionq\0~\0xp\0\0\0\0Ppt\0Iorg.springframework.security.authentication.dao.DaoAuthenticationProvidert\0DaoAuthenticationProvider.javat\0additionalAuthenticationChecksppsq\0~\0\r\0\0\0\0ìpt\0Yorg.springframework.security.authentication.dao.AbstractUserDetailsAuthenticationProvidert\0.AbstractUserDetailsAuthenticationProvider.javat\0authenticateppsq\0~\0\r\0\0\0\0∂pt\0;org.springframework.security.authentication.ProviderManagert\0ProviderManager.javaq\0~\0ppsq\0~\0\r\0\0\0\0\…pq\0~\0q\0~\0q\0~\0ppsq\0~\0\r\0\0\0\0Upt\0Torg.springframework.security.web.authentication.UsernamePasswordAuthenticationFiltert\0)UsernamePasswordAuthenticationFilter.javat\0attemptAuthenticationppsq\0~\0\r\0\0\0\0\Ápt\0Vorg.springframework.security.web.authentication.AbstractAuthenticationProcessingFiltert\0+AbstractAuthenticationProcessingFilter.javat\0doFilterppsq\0~\0\r\0\0\0\0\›pq\0~\0q\0~\0 q\0~\0!ppsq\0~\0\r\0\0\0vpt\0Dorg.springframework.security.web.FilterChainProxy$VirtualFilterChaint\0FilterChainProxy.javaq\0~\0!ppsq\0~\0\r\0\0\0\0kpt\0Corg.springframework.security.web.authentication.logout.LogoutFiltert\0LogoutFilter.javaq\0~\0!ppsq\0~\0\r\0\0\0\0]pq\0~\0\'q\0~\0(q\0~\0!ppsq\0~\0\r\0\0\0vpq\0~\0$q\0~\0%q\0~\0!ppsq\0~\0\r\0\0\0\0Épt\00org.springframework.security.web.csrf.CsrfFiltert\0CsrfFilter.javat\0doFilterInternalppsq\0~\0\r\0\0\0\0tpt\03org.springframework.web.filter.OncePerRequestFiltert\0OncePerRequestFilter.javaq\0~\0!ppsq\0~\0\r\0\0\0vpq\0~\0$q\0~\0%q\0~\0!ppsq\0~\0\r\0\0\0\0Zpt\0:org.springframework.security.web.header.HeaderWriterFiltert\0HeaderWriterFilter.javat\0doHeadersAfterppsq\0~\0\r\0\0\0\0Kpq\0~\04q\0~\05q\0~\0.ppsq\0~\0\r\0\0\0\0tpq\0~\00q\0~\01q\0~\0!ppsq\0~\0\r\0\0\0vpq\0~\0$q\0~\0%q\0~\0!ppsq\0~\0\r\0\0\0\0Rpt\0Dorg.springframework.security.web.context.SecurityContextHolderFiltert\0 SecurityContextHolderFilter.javaq\0~\0!ppsq\0~\0\r\0\0\0\0Epq\0~\0;q\0~\0<q\0~\0!ppsq\0~\0\r\0\0\0vpq\0~\0$q\0~\0%q\0~\0!ppsq\0~\0\r\0\0\0\0>pt\0Worg.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFiltert\0%WebAsyncManagerIntegrationFilter.javaq\0~\0.ppsq\0~\0\r\0\0\0\0tpq\0~\00q\0~\01q\0~\0!ppsq\0~\0\r\0\0\0vpq\0~\0$q\0~\0%q\0~\0!ppsq\0~\0\r\0\0\0\0*pt\0?org.springframework.security.web.session.DisableEncodeUrlFiltert\0DisableEncodeUrlFilter.javaq\0~\0.ppsq\0~\0\r\0\0\0\0tpq\0~\00q\0~\01q\0~\0!ppsq\0~\0\r\0\0\0vpq\0~\0$q\0~\0%q\0~\0!ppsq\0~\0\r\0\0\0\0\Èpt\01org.springframework.security.web.FilterChainProxyq\0~\0%q\0~\0.ppsq\0~\0\r\0\0\0\0øpq\0~\0Jq\0~\0%q\0~\0!ppsq\0~\0\r\0\0\0`pt\04org.springframework.web.filter.DelegatingFilterProxyt\0\ZDelegatingFilterProxy.javat\0invokeDelegateppsq\0~\0\r\0\0\0pq\0~\0Mq\0~\0Nq\0~\0!ppsq\0~\0\r\0\0\0\0Æpt\0/org.apache.catalina.core.ApplicationFilterChaint\0ApplicationFilterChain.javat\0internalDoFilterppsq\0~\0\r\0\0\0\0ïpq\0~\0Rq\0~\0Sq\0~\0!ppsq\0~\0\r\0\0\0\0dpt\03org.springframework.web.filter.RequestContextFiltert\0RequestContextFilter.javaq\0~\0.ppsq\0~\0\r\0\0\0\0tpq\0~\00q\0~\01q\0~\0!ppsq\0~\0\r\0\0\0\0Æpq\0~\0Rq\0~\0Sq\0~\0Tppsq\0~\0\r\0\0\0\0ïpq\0~\0Rq\0~\0Sq\0~\0!ppsq\0~\0\r\0\0\0\0]pt\00org.springframework.web.filter.FormContentFiltert\0FormContentFilter.javaq\0~\0.ppsq\0~\0\r\0\0\0\0tpq\0~\00q\0~\01q\0~\0!ppsq\0~\0\r\0\0\0\0Æpq\0~\0Rq\0~\0Sq\0~\0Tppsq\0~\0\r\0\0\0\0ïpq\0~\0Rq\0~\0Sq\0~\0!ppsq\0~\0\r\0\0\0\0èpt\0<org.springframework.session.web.http.SessionRepositoryFiltert\0SessionRepositoryFilter.javaq\0~\0.ppsq\0~\0\r\0\0\0\0Rpt\09org.springframework.session.web.http.OncePerRequestFilterq\0~\01q\0~\0!ppsq\0~\0\r\0\0\0\0Æpq\0~\0Rq\0~\0Sq\0~\0Tppsq\0~\0\r\0\0\0\0ïpq\0~\0Rq\0~\0Sq\0~\0!ppsq\0~\0\r\0\0\0\0\…pt\06org.springframework.web.filter.CharacterEncodingFiltert\0CharacterEncodingFilter.javaq\0~\0.ppsq\0~\0\r\0\0\0\0tpq\0~\00q\0~\01q\0~\0!ppsq\0~\0\r\0\0\0\0Æpq\0~\0Rq\0~\0Sq\0~\0Tppsq\0~\0\r\0\0\0\0ïpq\0~\0Rq\0~\0Sq\0~\0!ppsq\0~\0\r\0\0\0\0¶pt\0-org.apache.catalina.core.StandardWrapperValvet\0StandardWrapperValve.javat\0invokeppsq\0~\0\r\0\0\0\0Zpt\0-org.apache.catalina.core.StandardContextValvet\0StandardContextValve.javaq\0~\0rppsq\0~\0\r\0\0\0\Ìpt\03org.apache.catalina.authenticator.AuthenticatorBaset\0AuthenticatorBase.javaq\0~\0rppsq\0~\0\r\0\0\0\0spt\0*org.apache.catalina.core.StandardHostValvet\0StandardHostValve.javaq\0~\0rppsq\0~\0\r\0\0\0\0]pt\0+org.apache.catalina.valves.ErrorReportValvet\0ErrorReportValve.javaq\0~\0rppsq\0~\0\r\0\0\0\0Jpt\0,org.apache.catalina.core.StandardEngineValvet\0StandardEngineValve.javaq\0~\0rppsq\0~\0\r\0\0\0Upt\0+org.apache.catalina.connector.CoyoteAdaptert\0CoyoteAdapter.javat\0serviceppsq\0~\0\r\0\0\0Üpt\0(org.apache.coyote.http11.Http11Processort\0Http11Processor.javaq\0~\0Öppsq\0~\0\r\0\0\0\0?pt\0(org.apache.coyote.AbstractProcessorLightt\0AbstractProcessorLight.javat\0processppsq\0~\0\r\0\0\0~pt\04org.apache.coyote.AbstractProtocol$ConnectionHandlert\0AbstractProtocol.javaq\0~\0åppsq\0~\0\r\0\0\0\Õpt\06org.apache.tomcat.util.net.NioEndpoint$SocketProcessort\0NioEndpoint.javat\0doRunppsq\0~\0\r\0\0\0\04pt\0.org.apache.tomcat.util.net.SocketProcessorBaset\0SocketProcessorBase.javat\0runppsq\0~\0\r\0\0\0ßpt\01org.apache.tomcat.util.threads.ThreadPoolExecutort\0ThreadPoolExecutor.javat\0	runWorkerppsq\0~\0\r\0\0\0ìpt\08org.apache.tomcat.util.threads.ThreadPoolExecutor$Workerq\0~\0öq\0~\0óppsq\0~\0\r\0\0\0\0=pt\0:org.apache.tomcat.util.threads.TaskThread$WrappingRunnablet\0TaskThread.javaq\0~\0óppsq\0~\0\r\0\0Apt\0java.lang.Threadt\0Thread.javaq\0~\0ót\0	java.baset\017.0.2sr\0java.util.Collections$EmptyListz∏¥<ßû\ﬁ\0\0xpx'),('a62763e7-7b63-4ac4-8bb5-b720248942a6','usuario',_binary '¨\Ì\0sr\0.com.example.proyectogticsgrupo1.Entity.Usuario$}\‹~J\0L\0	apellidost\0Ljava/lang/String;L\0celularq\0~\0L\0\ncontrasenaq\0~\0L\0correoq\0~\0L\0dniq\0~\0L\0edadt\0Ljava/lang/Integer;L\0especialidadt\05Lcom/example/proyectogticsgrupo1/Entity/Especialidad;L\0estadohabilitadoq\0~\0L\0fechanacimientot\0Ljava/util/Date;L\0\rformaregistroq\0~\0L\0fotoq\0~\0L\0generoq\0~\0L\0	idusuarioq\0~\0L\0nombresq\0~\0L\0sedet\0-Lcom/example/proyectogticsgrupo1/Entity/Sede;L\0sueldot\0Ljava/lang/Double;L\0\rtipodeusuariot\06Lcom/example/proyectogticsgrupo1/Entity/Tipodeusuario;xpt\0Ramirezt\0	942523241t\0<$2a$10$l.gpm5USNtRsajQ3NnWf5uL9ysHRItDG1FiH00K5udBEeFGBAcYRKt\0abigail.ramirez@pucp.edu.pet\034542412sr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî\‡ã\0\0xp\0\0\0sr\03com.example.proyectogticsgrupo1.Entity.Especialidad	{”£ÿú≤\0L\0costoq\0~\0L\0idespecialidadq\0~\0L\0nombreq\0~\0xpsr\0java.lang.DoubleÄ≥\¬J)k˚\0D\0valuexq\0~\0@^\0\0\0\0\0\0sq\0~\0\0\0\0t\0Traumatolog√≠asq\0~\0\0\0\0sr\0java.sql.Timestamp&\’\»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0\0\Ëkd\0x\0\0\0\0t\0\0t\0:https://lafe.blob.core.windows.net/clinicalafe/doctor7.jpgt\0Femeninosq\0~\0\0\0\0t\0Abigailsr\0+com.example.proyectogticsgrupo1.Entity.SedeCp\÷}ﬂ∏≤æ\0L\0coordenadasq\0~\0L\0	direccionq\0~\0L\0idsedeq\0~\0L\0nombreq\0~\0xpt\012.0744,-77.0288t\0Jir√≥n Zorritos 456q\0~\0t\0Lincesq\0~\0@∂®\0\0\0\0\0sr\04com.example.proyectogticsgrupo1.Entity.Tipodeusuarioß∫?§\“˙\0L\0idtipodeusuarioq\0~\0L\0nombreq\0~\0xpsq\0~\0\0\0\0t\0doctor');
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bitacoradediagnostico`
--

DROP TABLE IF EXISTS `bitacoradediagnostico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bitacoradediagnostico` (
  `idbitacoradediagnostico` int NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  `fechayhora` datetime NOT NULL,
  `idpaciente` int NOT NULL,
  `iddoctor` int NOT NULL,
  PRIMARY KEY (`idbitacoradediagnostico`),
  KEY `fk_bitacoradediagnostico_paciente1_idx` (`idpaciente`),
  CONSTRAINT `fk_bitacoradediagnostico_paciente1` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`idpaciente`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bitacoradediagnostico`
--

LOCK TABLES `bitacoradediagnostico` WRITE;
/*!40000 ALTER TABLE `bitacoradediagnostico` DISABLE KEYS */;
INSERT INTO `bitacoradediagnostico` VALUES (2,'El paciente presenta una ligera mejora , pero a√∫n persisten los dolores traum√°ticos','2023-04-23 13:30:00',2,2),(7,'Requiere un tratamiento especial','2023-07-06 01:40:22',1,1),(10,'El paciente no mejora','2023-07-16 18:35:42',1,2);
/*!40000 ALTER TABLE `bitacoradediagnostico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletadoctor`
--

DROP TABLE IF EXISTS `boletadoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boletadoctor` (
  `idboletadoctor` int NOT NULL AUTO_INCREMENT,
  `idcita` int NOT NULL,
  `idpaciente` int NOT NULL,
  `idseguro` int NOT NULL,
  `iddoctor` int NOT NULL,
  `monto` float NOT NULL,
  PRIMARY KEY (`idboletadoctor`),
  KEY `fk_boletadoctor_cita1_idx` (`idcita`),
  KEY `fk_boletadoctor_paciente1_idx` (`idpaciente`),
  KEY `fk_boletadoctor_seguro1_idx` (`idseguro`),
  KEY `fk_boletadoctor_doctor1_idx` (`iddoctor`),
  CONSTRAINT `fk_boletadoctor_cita1` FOREIGN KEY (`idcita`) REFERENCES `cita` (`idcita`),
  CONSTRAINT `fk_boletadoctor_doctor1` FOREIGN KEY (`iddoctor`) REFERENCES `doctor` (`iddoctor`),
  CONSTRAINT `fk_boletadoctor_paciente1` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`idpaciente`),
  CONSTRAINT `fk_boletadoctor_seguro1` FOREIGN KEY (`idseguro`) REFERENCES `seguro` (`idseguro`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletadoctor`
--

LOCK TABLES `boletadoctor` WRITE;
/*!40000 ALTER TABLE `boletadoctor` DISABLE KEYS */;
INSERT INTO `boletadoctor` VALUES (20,28,1,1,1,80),(21,29,1,1,1,80),(22,31,1,1,1,80),(23,34,1,1,1,80),(26,37,1,1,3,90),(27,38,1,1,1,90),(28,39,1,1,3,90),(30,33,1,1,1,90),(31,51,2,2,3,90),(32,50,2,2,3,90),(33,32,1,1,1,90),(34,64,1,1,2,72),(35,24,1,1,1,90),(36,66,1,1,2,72),(37,68,1,1,1,90),(38,67,1,1,1,90),(40,76,2,2,2,84),(41,77,2,2,2,84),(42,81,1,1,3,90),(43,88,1,1,1,90),(55,107,1,1,2,72),(56,108,1,1,2,72),(57,109,1,1,2,72),(58,110,1,1,2,72),(59,111,1,1,3,120),(60,112,1,1,3,120),(62,134,1,1,2,72),(63,144,1,1,3,120),(64,145,1,1,3,120),(65,151,2,2,3,140),(67,205,1,1,2,0),(69,188,1,1,3,120),(71,209,1,1,2,72),(72,210,1,1,2,72);
/*!40000 ALTER TABLE `boletadoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletapaciente`
--

DROP TABLE IF EXISTS `boletapaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boletapaciente` (
  `idboletapaciente` int NOT NULL AUTO_INCREMENT,
  `idpaciente` int NOT NULL,
  `idcita` int NOT NULL,
  `idseguro` int NOT NULL,
  `monto` float NOT NULL,
  PRIMARY KEY (`idboletapaciente`),
  KEY `fk_boletapaciente_paciente1_idx` (`idpaciente`),
  KEY `fk_boletapaciente_cita1_idx` (`idcita`),
  KEY `fk_boletapaciente_seguro1_idx` (`idseguro`),
  CONSTRAINT `fk_boletapaciente_cita1` FOREIGN KEY (`idcita`) REFERENCES `cita` (`idcita`),
  CONSTRAINT `fk_boletapaciente_paciente1` FOREIGN KEY (`idpaciente`) REFERENCES `paciente` (`idpaciente`),
  CONSTRAINT `fk_boletapaciente_seguro1` FOREIGN KEY (`idseguro`) REFERENCES `seguro` (`idseguro`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletapaciente`
--

LOCK TABLES `boletapaciente` WRITE;
/*!40000 ALTER TABLE `boletapaciente` DISABLE KEYS */;
INSERT INTO `boletapaciente` VALUES (4,1,28,1,200),(5,1,29,1,100),(6,1,31,1,100),(7,1,34,1,200),(8,1,37,1,100),(9,1,38,1,200),(10,1,39,1,300),(12,1,33,1,100),(13,2,51,2,100),(14,2,50,2,200),(15,1,32,1,200),(16,1,64,1,18),(17,1,24,1,120.5),(18,1,66,1,18),(19,1,68,1,220.5),(20,1,67,1,220.5),(22,2,76,2,300),(23,2,77,2,300),(24,1,81,1,300),(25,1,88,1,220.5),(38,1,108,1,180),(39,1,109,1,180),(40,1,110,1,180),(41,1,111,1,300),(42,1,112,1,300),(44,1,134,1,19.2),(45,1,144,1,32),(46,1,145,1,32),(47,2,151,2,50),(49,1,205,1,0),(51,1,188,1,32),(53,1,209,1,19.2),(54,1,210,1,19.2);
/*!40000 ALTER TABLE `boletapaciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cita` (
  `idcita` int NOT NULL AUTO_INCREMENT,
  `idsede` int NOT NULL,
  `idespecialidad` int NOT NULL,
  `fecha` date NOT NULL,
  `horainicio` time NOT NULL,
  `horafinal` time NOT NULL,
  `duracion` int NOT NULL,
  `idtipocita` int NOT NULL,
  `idseguro` int NOT NULL,
  `idestadocita` int NOT NULL,
  `paciente_idpaciente` int NOT NULL,
  `doctor_iddoctor` int NOT NULL,
  `flagreceta` int DEFAULT NULL,
  PRIMARY KEY (`idcita`),
  KEY `fk_cita_sede1_idx` (`idsede`),
  KEY `fk_cita_especialidad1_idx` (`idespecialidad`),
  KEY `fk_cita_tipocita1_idx` (`idtipocita`),
  KEY `fk_cita_seguro1_idx` (`idseguro`),
  KEY `fk_cita_estadocita1_idx` (`idestadocita`),
  KEY `fk_cita_paciente1_idx` (`paciente_idpaciente`),
  KEY `fk_cita_doctor1_idx` (`doctor_iddoctor`),
  CONSTRAINT `fk_cita_doctor1` FOREIGN KEY (`doctor_iddoctor`) REFERENCES `doctor` (`iddoctor`),
  CONSTRAINT `fk_cita_especialidad1` FOREIGN KEY (`idespecialidad`) REFERENCES `especialidad` (`idespecialidad`),
  CONSTRAINT `fk_cita_estadocita1` FOREIGN KEY (`idestadocita`) REFERENCES `estadocita` (`idestadocita`),
  CONSTRAINT `fk_cita_paciente1` FOREIGN KEY (`paciente_idpaciente`) REFERENCES `paciente` (`idpaciente`),
  CONSTRAINT `fk_cita_sede1` FOREIGN KEY (`idsede`) REFERENCES `sede` (`idsede`),
  CONSTRAINT `fk_cita_seguro1` FOREIGN KEY (`idseguro`) REFERENCES `seguro` (`idseguro`),
  CONSTRAINT `fk_cita_tipocita1` FOREIGN KEY (`idtipocita`) REFERENCES `tipocita` (`idtipocita`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (24,1,1,'2023-05-09','15:00:00','16:00:00',1,2,1,6,1,1,0),(28,1,1,'2023-06-26','09:00:00','10:00:00',1,1,1,6,1,1,0),(29,1,1,'2023-06-26','10:00:00','11:00:00',1,2,1,6,1,1,0),(31,1,1,'2023-06-27','20:00:00','21:00:00',1,2,1,6,1,1,0),(32,1,1,'2023-06-27','17:00:00','18:00:00',1,2,1,6,1,1,0),(33,1,1,'2023-06-26','19:00:00','20:00:00',1,2,1,6,1,1,0),(34,1,1,'2023-06-28','09:00:00','10:00:00',1,1,1,6,1,1,0),(37,1,12,'2023-06-30','10:00:00','11:00:00',1,1,1,6,1,3,0),(38,1,1,'2023-06-27','19:00:00','20:00:00',1,1,1,6,1,1,0),(39,1,12,'2023-06-28','11:00:00','12:00:00',1,1,1,6,1,3,0),(46,1,12,'2023-06-29','16:00:00','17:00:00',1,2,1,6,1,3,0),(50,1,12,'2023-06-28','20:00:00','21:00:00',1,2,2,6,2,3,0),(51,1,12,'2023-06-28','10:00:00','11:00:00',1,1,2,6,2,3,0),(52,1,10,'2023-06-28','13:00:00','14:00:00',1,1,2,6,2,3,0),(58,1,1,'2023-06-29','11:00:00','12:00:00',1,2,2,6,2,1,0),(61,1,4,'2023-06-28','09:00:00','10:00:00',1,2,2,6,2,4,0),(62,1,1,'2023-06-27','16:00:00','17:00:00',1,2,2,6,2,1,0),(64,2,2,'2023-07-03','21:49:00','22:00:00',1,2,1,6,1,2,0),(66,2,2,'2023-06-28','17:00:00','18:00:00',1,2,1,6,1,2,0),(67,1,1,'2023-07-04','09:00:00','10:00:00',1,2,1,2,1,1,0),(68,1,1,'2023-07-04','22:00:00','23:00:00',1,2,1,2,1,1,0),(76,2,2,'2023-07-05','09:00:00','10:00:00',1,1,2,6,2,2,0),(77,2,2,'2023-07-05','10:00:00','11:00:00',1,2,2,6,2,2,0),(81,1,12,'2023-07-10','09:00:00','10:00:00',1,1,1,1,1,3,0),(82,1,12,'2023-07-04','09:00:00','10:00:00',1,2,2,1,2,3,0),(88,1,1,'2023-07-07','00:40:00','01:40:00',1,2,1,6,1,1,0),(107,2,2,'2023-07-17','18:00:00','19:00:00',1,1,1,4,1,2,1),(108,2,2,'2023-07-18','18:00:00','19:00:00',1,2,1,4,1,2,1),(109,2,2,'2023-07-19','10:00:00','11:00:00',1,1,1,6,1,2,1),(110,2,2,'2023-07-19','09:00:00','10:00:00',1,1,1,4,1,2,1),(111,1,12,'2023-07-17','09:00:00','10:00:00',1,2,1,3,1,3,NULL),(112,1,12,'2023-07-17','11:00:00','12:00:00',1,2,1,3,1,3,NULL),(134,2,2,'2023-07-17','19:00:00','20:00:00',1,2,1,6,1,2,2),(137,2,2,'2023-07-18','09:00:00','10:00:00',1,2,2,4,2,2,1),(144,1,12,'2023-08-19','09:00:00','10:00:00',1,2,1,2,2,3,0),(145,1,12,'2023-07-31','19:00:00','20:00:00',1,1,1,4,2,3,0),(148,1,12,'2023-08-18','09:00:00','10:00:00',1,2,2,4,2,3,0),(151,1,12,'2023-08-19','19:00:00','20:00:00',1,1,2,2,2,3,0),(160,1,12,'2023-08-18','04:51:00','05:51:00',1,2,1,4,1,3,0),(188,1,12,'2023-07-21','09:00:00','10:00:00',1,2,1,2,1,3,0),(195,1,4,'2023-07-20','11:00:00','12:00:00',1,2,1,6,1,4,0),(202,1,1,'2023-07-21','18:00:00','19:00:00',1,2,1,1,1,1,0),(205,2,2,'2023-07-21','10:00:00','11:00:00',1,1,1,1,1,2,0),(209,2,2,'2023-07-21','11:00:00','12:00:00',1,1,1,4,1,2,0),(210,2,2,'2023-07-20','10:00:00','11:00:00',1,1,1,4,1,2,0);
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuestionario`
--

DROP TABLE IF EXISTS `cuestionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuestionario` (
  `idcuestionario` int NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `idpaciente` int NOT NULL,
  `iddoctor` int NOT NULL,
  `mostrarautomatico` int NOT NULL,
  PRIMARY KEY (`idcuestionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuestionario`
--

LOCK TABLES `cuestionario` WRITE;
/*!40000 ALTER TABLE `cuestionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuestionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos`
--

DROP TABLE IF EXISTS `datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos` (
  `iddatos` int NOT NULL AUTO_INCREMENT,
  `respuestas` longtext NOT NULL,
  `idmodelo` int NOT NULL,
  `idusuario` int NOT NULL,
  `llenado` tinyint DEFAULT NULL,
  PRIMARY KEY (`iddatos`),
  KEY `fk_datos_modelo1_idx` (`idmodelo`),
  KEY `fk_datos_usuario1_idx` (`idusuario`),
  CONSTRAINT `fk_datos_modelo1` FOREIGN KEY (`idmodelo`) REFERENCES `modelo` (`idmodelo`),
  CONSTRAINT `fk_datos_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos`
--

LOCK TABLES `datos` WRITE;
/*!40000 ALTER TABLE `datos` DISABLE KEYS */;
/*!40000 ALTER TABLE `datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_json`
--

DROP TABLE IF EXISTS `datos_json`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datos_json` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_plantilla` varchar(255) NOT NULL,
  `datos_llenos` json DEFAULT NULL,
  `idusuario` int NOT NULL,
  `modelo_json_id` int NOT NULL,
  `cita_idcita` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_datos_json_usuario1_idx` (`idusuario`),
  KEY `fk_datos_json_cita1_idx` (`cita_idcita`),
  CONSTRAINT `fk_datos_json_cita1` FOREIGN KEY (`cita_idcita`) REFERENCES `cita` (`idcita`),
  CONSTRAINT `fk_datos_json_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_json`
--

LOCK TABLES `datos_json` WRITE;
/*!40000 ALTER TABLE `datos_json` DISABLE KEYS */;
INSERT INTO `datos_json` VALUES (30,'CUESTIONARIO_CARDIO','{\"COMO ESTAS 1\": \"BIEN1\", \"COMO ESTAS 2\": \"BIEN2\", \"COMO ESTAS 3\": \"BIEN3\", \"COMO ESTAS 4\": \"BIEN4\"}',4,39,28),(32,'CUESTIONARIO_CARDIO','{\"COMO ESTAS 1\": \"normal\", \"COMO ESTAS 2\": \"normal\", \"COMO ESTAS 3\": \"normal\", \"COMO ESTAS 4\": \"normal\"}',4,39,33),(33,'CUESTIONARIO_CARDIO','{\"COMO ESTAS 1\": \"veo1\", \"COMO ESTAS 2\": \"veo2\", \"COMO ESTAS 3\": \"veo3\", \"COMO ESTAS 4\": \"veo4\"}',4,39,34),(49,'neuro cuest','{\"neuro1\": \"rpta1\", \"neuro2\": \"rpta2\", \"neuro3\": \"rpta3\"}',4,43,39),(50,'CST_TRAUMATOLOGIA_JUNIO','{\"¬øHa experimentado alg√∫n tipo de lesi√≥n o trauma reciente en su cuerpo? Si es as√≠, por favor describa la naturaleza de la lesi√≥n y la fecha en que ocurri√≥.\": \"No\", \"¬øCu√°les son los s√≠ntomas que est√° experimentando actualmente como resultado de su lesi√≥n? (Por ejemplo: dolor, inflamaci√≥n, dificultad para moverse, debilidad, etc.)\": \"dolor\", \"¬øTiene alguna condici√≥n m√©dica preexistente que pueda afectar su recuperaci√≥n de la lesi√≥n o su respuesta al tratamiento? Por ejemplo, diabetes, enfermedades card√≠acas, alergias a medicamentos, etc.\": \"No\", \"¬øHa recibido alg√∫n tipo de tratamiento m√©dico o intervenci√≥n para su lesi√≥n? En caso afirmativo, por favor indique qu√© tipo de tratamiento ha recibido y si ha notado alguna mejor√≠a en sus s√≠ntomas.\": \"S√≠ - Panadol\"}',4,34,66),(51,'INF_TRAUMATOLOGIA_DOC','{\"Datos del paciente\": \"prueba\", \"Motivo de la consulta\": \"prueba\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"prueba\", \"Observaciones y notas adicionales del m√©dico\": \"prueba\"}',7,26,66),(55,'INF_TRAUMATOLOGIA_DOC','{\"Datos del paciente\": \"Z1\", \"Motivo de la consulta\": \"Z2\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"Z3\", \"Observaciones y notas adicionales del m√©dico\": \"Z4\"}',7,26,64),(75,'CST_TRAUMATOLOGIA_JUNIO','{\"¬øHa experimentado alg√∫n tipo de lesi√≥n o trauma reciente en su cuerpo? Si es as√≠, por favor describa la naturaleza de la lesi√≥n y la fecha en que ocurri√≥.\": \"Me ca√≠\", \"¬øCu√°les son los s√≠ntomas que est√° experimentando actualmente como resultado de su lesi√≥n? (Por ejemplo: dolor, inflamaci√≥n, dificultad para moverse, debilidad, etc.)\": \"Dolor de Cabeza\", \"¬øTiene alguna condici√≥n m√©dica preexistente que pueda afectar su recuperaci√≥n de la lesi√≥n o su respuesta al tratamiento? Por ejemplo, diabetes, enfermedades card√≠acas, alergias a medicamentos, etc.\": \"Alergia\", \"¬øHa recibido alg√∫n tipo de tratamiento m√©dico o intervenci√≥n para su lesi√≥n? En caso afirmativo, por favor indique qu√© tipo de tratamiento ha recibido y si ha notado alguna mejor√≠a en sus s√≠ntomas.\": \"Craneotom√≠a\"}',4,34,111),(79,'CST_TRAUMATOLOGIA_JUNIO','{\"¬øHa experimentado alg√∫n tipo de lesi√≥n o trauma reciente en su cuerpo? Si es as√≠, por favor describa la naturaleza de la lesi√≥n y la fecha en que ocurri√≥.\": \"Si\", \"¬øCu√°les son los s√≠ntomas que est√° experimentando actualmente como resultado de su lesi√≥n? (Por ejemplo: dolor, inflamaci√≥n, dificultad para moverse, debilidad, etc.)\": \"golpe en la columna\", \"¬øTiene alguna condici√≥n m√©dica preexistente que pueda afectar su recuperaci√≥n de la lesi√≥n o su respuesta al tratamiento? Por ejemplo, diabetes, enfermedades card√≠acas, alergias a medicamentos, etc.\": \"Paralisis\", \"¬øHa recibido alg√∫n tipo de tratamiento m√©dico o intervenci√≥n para su lesi√≥n? En caso afirmativo, por favor indique qu√© tipo de tratamiento ha recibido y si ha notado alguna mejor√≠a en sus s√≠ntomas.\": \"No\"}',4,34,112),(81,'INF_TRAUMATOLOGIA_DOC','{\"Datos del paciente\": \"RPTA1\", \"Motivo de la consulta\": \"RPTA2\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"RPTA3\", \"Observaciones y notas adicionales del m√©dico\": \"RTPA4\"}',7,26,109),(83,'CST_TRAUMATOLOGIA_JUNIO','{\"¬øHa experimentado alg√∫n tipo de lesi√≥n o trauma reciente en su cuerpo? Si es as√≠, por favor describa la naturaleza de la lesi√≥n y la fecha en que ocurri√≥.\": \"hola1\", \"¬øCu√°les son los s√≠ntomas que est√° experimentando actualmente como resultado de su lesi√≥n? (Por ejemplo: dolor, inflamaci√≥n, dificultad para moverse, debilidad, etc.)\": \"hola2\", \"¬øTiene alguna condici√≥n m√©dica preexistente que pueda afectar su recuperaci√≥n de la lesi√≥n o su respuesta al tratamiento? Por ejemplo, diabetes, enfermedades card√≠acas, alergias a medicamentos, etc.\": \"hola3\", \"¬øHa recibido alg√∫n tipo de tratamiento m√©dico o intervenci√≥n para su lesi√≥n? En caso afirmativo, por favor indique qu√© tipo de tratamiento ha recibido y si ha notado alguna mejor√≠a en sus s√≠ntomas.\": \"hola4\"}',4,34,134),(84,'CST_TRAUMATOLOGIA_JUNIO','{\"¬øHa experimentado alg√∫n tipo de lesi√≥n o trauma reciente en su cuerpo? Si es as√≠, por favor describa la naturaleza de la lesi√≥n y la fecha en que ocurri√≥.\": \"Si\", \"¬øCu√°les son los s√≠ntomas que est√° experimentando actualmente como resultado de su lesi√≥n? (Por ejemplo: dolor, inflamaci√≥n, dificultad para moverse, debilidad, etc.)\": \"golpe en brazo derecho.\", \"¬øTiene alguna condici√≥n m√©dica preexistente que pueda afectar su recuperaci√≥n de la lesi√≥n o su respuesta al tratamiento? Por ejemplo, diabetes, enfermedades card√≠acas, alergias a medicamentos, etc.\": \"dificultad para moverse\", \"¬øHa recibido alg√∫n tipo de tratamiento m√©dico o intervenci√≥n para su lesi√≥n? En caso afirmativo, por favor indique qu√© tipo de tratamiento ha recibido y si ha notado alguna mejor√≠a en sus s√≠ntomas.\": \"Alergia al paracetamol.\"}',4,34,110),(85,'Cuestionario Neurologia','{\"Neurologia 1.1\": \"Si1\", \"Neurologia 1.2\": \"SI2\", \"Neurologia 1.3\": \"SI3\"}',5,72,148),(86,'CST_TRAUMATOLOGIA_JUNIO','{\"¬øHa experimentado alg√∫n tipo de lesi√≥n o trauma reciente en su cuerpo? Si es as√≠, por favor describa la naturaleza de la lesi√≥n y la fecha en que ocurri√≥.\": \"Golpe en Cabeza\", \"¬øCu√°les son los s√≠ntomas que est√° experimentando actualmente como resultado de su lesi√≥n? (Por ejemplo: dolor, inflamaci√≥n, dificultad para moverse, debilidad, etc.)\": \"Inflamaci√≥n\", \"¬øTiene alguna condici√≥n m√©dica preexistente que pueda afectar su recuperaci√≥n de la lesi√≥n o su respuesta al tratamiento? Por ejemplo, diabetes, enfermedades card√≠acas, alergias a medicamentos, etc.\": \"Paracetamol\", \"¬øHa recibido alg√∫n tipo de tratamiento m√©dico o intervenci√≥n para su lesi√≥n? En caso afirmativo, por favor indique qu√© tipo de tratamiento ha recibido y si ha notado alguna mejor√≠a en sus s√≠ntomas.\": \"NO\"}',4,34,108),(90,'INF_TRAUMATOLOGIA_DOC','{\"Motivo de la consulta\": \"aaa\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"aaa\", \"Observaciones y notas adicionales del m√©dico\": \"aaaa\"}',7,26,108),(91,'INF_TRAUMATOLOGIA_DOC','{\"Motivo de la consulta\": \"Abigail\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"Abigail\", \"Observaciones y notas adicionales del m√©dico\": \"Abigail\"}',15,26,145),(92,'INF_TRAUMATOLOGIA_DOC','{\"Motivo de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',15,26,148),(93,'Cuestionario Neurologia','{\"Neurologia 2.1\": \"Si\", \"Neurologia 2.2\": \"No\", \"Neurologia 2.3\": \"Alergia\"}',4,73,188),(96,'INF_TRAUMATOLOGIA_DOC','{\"Motivo de la consulta\": \"Abigail\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"Abigail\", \"Observaciones y notas adicionales del m√©dico\": \"Abigail\"}',7,26,209);
/*!40000 ALTER TABLE `datos_json` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `iddoctor` int NOT NULL AUTO_INCREMENT,
  `idespecialidad` int NOT NULL,
  `idsede` int NOT NULL,
  `cmp` int NOT NULL,
  `formacion` longtext NOT NULL,
  `rne` int NOT NULL,
  `capacitaciones` longtext NOT NULL,
  `idusuario` int NOT NULL,
  `zoom` varchar(200) DEFAULT NULL,
  `consultorio` varchar(45) NOT NULL,
  PRIMARY KEY (`iddoctor`),
  KEY `fk_doctor_especialidad_idx` (`idespecialidad`),
  KEY `fk_doctor_sede1_idx` (`idsede`),
  KEY `fk_doctor_usuario1_idx` (`idusuario`),
  CONSTRAINT `fk_doctor_especialidad` FOREIGN KEY (`idespecialidad`) REFERENCES `especialidad` (`idespecialidad`),
  CONSTRAINT `fk_doctor_sede1` FOREIGN KEY (`idsede`) REFERENCES `sede` (`idsede`),
  CONSTRAINT `fk_doctor_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,1,1,12323,'M√©dico cardi√≥logo egresado de la Universidad Peruana Cayetano Heredia (UPCH) , especialista en enfermedades infecciosas y terminales al coraz√≥n. ',344,'Congreso Nacional de Avances en el Diagn√≥stico, Manejo y complicaciones del paciente COVID19. XXXIX Curso Internacional de la Sociedad de Medicina Interna. Conferencista en la Reuni√≥n sobre VIH Taller ( Chile).',6,'https://pucp.zoom.us/j/93873653599?pwd=eGpib0dCdUQvY0ZJOEx0QnVETzhNUT09','101'),(2,2,2,23123,'M√©dica egresada de la Universidad Peruana Cayetano Heredia (UPCH), especialista en traumatolog√≠a enfocado a rupturas y contusiones severas y menores en emergencias Maestria en Contusiones',342,'Congreso Nacional de Avances en el diagn√≥stico manejo y complicaciones del paciente COVID19, XXXIX Curso Internacional de la Sociedad de Medicina interna, Conferencista en la Reuni√≥n sobre VIH Taller (Chile) Conferencia Mundial de Salud',7,'https://pucp.zoom.us/j/94493365521?pwd=QzFzNytXM01TQTc5cTROaHc2aElvZz09','201'),(3,12,1,0,'-PUCP',0,'-PUCP1',15,NULL,'504'),(4,4,1,0,'-',0,'-',16,NULL,'505'),(6,9,1,0,'-',0,'-',28,NULL,'-'),(7,15,1,0,'-',0,'-',32,NULL,'-'),(8,1,1,0,'-',0,'-',54,NULL,'-'),(10,7,1,0,'-',0,'-',86,NULL,'-');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidad` (
  `idespecialidad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `costo` float NOT NULL,
  `torre` varchar(45) NOT NULL,
  PRIMARY KEY (`idespecialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'Cardiolog√≠a',150,'C'),(2,'Traumatolog√≠a',120,'T'),(3,'Cirug√≠a cardiovascular',350,'CC'),(4,'Laboratorio',50,'L'),(5,'Rayos X',80,'RX'),(6,'Ecograf√≠a',100,'E'),(7,'Ginecolog√≠a',120,'G'),(8,'Urolog√≠a',130,'U'),(9,'Medicina Interna',100,'MI'),(10,'Neumolog√≠a',140,'N'),(11,'Pediatr√≠a',90,'P'),(12,'Neurolog√≠a',200,'N'),(13,'Gastroenterolog√≠a',160,'GS'),(14,'Endocrinolog√≠a',180,'EN'),(15,'Otorrinolaringolog√≠a',120,'O'),(16,'Nefrolog√≠a',250,'NF'),(17,'Dermatolog√≠a',100,'D'),(18,'General',0,'-');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadocita`
--

DROP TABLE IF EXISTS `estadocita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadocita` (
  `idestadocita` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idestadocita`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadocita`
--

LOCK TABLES `estadocita` WRITE;
/*!40000 ALTER TABLE `estadocita` DISABLE KEYS */;
INSERT INTO `estadocita` VALUES (1,'Pr√≥xima Cita'),(2,'Registrado en Caja'),(3,'En Espera'),(4,'En Consulta'),(5,'Cancelada'),(6,'Finalizada');
/*!40000 ALTER TABLE `estadocita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadopaciente`
--

DROP TABLE IF EXISTS `estadopaciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadopaciente` (
  `idestadopaciente` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idestadopaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadopaciente`
--

LOCK TABLES `estadopaciente` WRITE;
/*!40000 ALTER TABLE `estadopaciente` DISABLE KEYS */;
INSERT INTO `estadopaciente` VALUES (1,'Invitado  '),(2,'Registrado'),(3,'Activo'),(4,'Agendado'),(5,'En Consulta'),(6,'Pendiente de Ex√°menes');
/*!40000 ALTER TABLE `estadopaciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventocalendariodoctor`
--

DROP TABLE IF EXISTS `eventocalendariodoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventocalendariodoctor` (
  `ideventocalendariodoctor` int NOT NULL AUTO_INCREMENT,
  `idtipohoracalendariodoctor` int NOT NULL,
  `fecha` date NOT NULL,
  `horainicio` time NOT NULL,
  `horafinal` time NOT NULL,
  `duracion` int NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `iddoctor` int NOT NULL,
  PRIMARY KEY (`ideventocalendariodoctor`),
  KEY `fk_eventocalendariodoctor_tipohoracalendariodoctor1_idx` (`idtipohoracalendariodoctor`),
  KEY `fk_eventocalendariodoctor_doctor1_idx` (`iddoctor`),
  CONSTRAINT `fk_eventocalendariodoctor_doctor1` FOREIGN KEY (`iddoctor`) REFERENCES `doctor` (`iddoctor`),
  CONSTRAINT `fk_eventocalendariodoctor_tipohoracalendariodoctor1` FOREIGN KEY (`idtipohoracalendariodoctor`) REFERENCES `tipohoracalendariodoctor` (`idtipohoracalendariodoctor`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventocalendariodoctor`
--

LOCK TABLES `eventocalendariodoctor` WRITE;
/*!40000 ALTER TABLE `eventocalendariodoctor` DISABLE KEYS */;
INSERT INTO `eventocalendariodoctor` VALUES (1,3,'2023-05-10','15:00:00','16:00:00',1,'ocupado',1),(3,3,'2023-05-08','15:00:00','16:00:00',1,'ocupado',1),(6,3,'2023-05-17','14:00:00','15:00:00',1,'ocupado',1),(9,1,'2023-05-10','17:00:00','18:00:00',1,'cita',1),(10,3,'2023-05-10','08:00:00','09:00:00',1,'ocupado',1),(11,3,'2023-05-05','08:00:00','09:00:00',1,'ocupado',1),(12,3,'2023-05-05','09:00:00','10:00:00',1,'ocupado',1),(15,3,'2023-05-05','18:00:00','19:00:00',1,'ocupado',2),(16,3,'2023-05-05','19:00:00','20:00:00',1,'ocupado',2),(17,1,'2023-05-05','19:00:00','20:00:00',1,'cita',1),(18,3,'2023-05-04','15:00:00','16:00:00',1,'ocupado',1),(19,3,'2023-05-09','15:00:00','16:00:00',1,'ocupado',1),(20,1,'2023-06-14','10:00:00','11:00:00',1,'libre',2),(21,1,'2023-06-15','11:00:00','12:00:00',1,'libre',2),(22,3,'2023-06-22','13:00:00','14:00:00',1,'ocupado',2),(23,1,'2023-06-15','20:00:00','21:00:00',1,'libre',2),(24,3,'2023-06-16','15:00:00','16:00:00',1,'ocupado',2),(25,3,'2023-06-16','14:00:00','18:00:00',1,'horario disponible',2),(26,1,'2023-06-16','16:00:00','17:00:00',1,'esta',2),(27,1,'2023-06-17','10:00:00','11:00:00',1,'Esta es una prueba',2),(28,2,'2023-06-17','12:00:00','14:00:00',1,'Refrigerio',2),(29,1,'2023-06-18','10:00:00','11:00:00',1,'Libre',2),(30,3,'2023-06-27','09:00:00','11:00:00',1,'ocupado',2),(31,3,'2023-06-26','09:00:00','10:00:00',1,'ocupado',1),(32,3,'2023-06-26','10:00:00','11:00:00',1,'ocupado',1),(33,1,'2023-06-27','09:00:00','10:00:00',1,'libre',1),(34,3,'2023-06-27','20:00:00','21:00:00',1,'ocupado',1),(35,3,'2023-06-27','17:00:00','18:00:00',1,'ocupado',1),(36,3,'2023-06-26','19:00:00','20:00:00',1,'ocupado',1),(37,3,'2023-06-28','09:00:00','10:00:00',1,'ocupado',1),(38,3,'2023-06-30','10:00:00','11:00:00',1,'ocupado',3),(39,3,'2023-06-27','19:00:00','20:00:00',1,'ocupado',1),(40,3,'2023-06-28','11:00:00','12:00:00',1,'ocupado',3),(41,1,'2023-06-26','09:00:00','10:00:00',1,'libre',2),(42,3,'2023-06-29','16:00:00','17:00:00',1,'ocupado',3),(43,3,'2023-06-28','09:00:00','10:00:00',1,'ocupado',2),(44,3,'2023-07-03','20:00:00','21:00:00',1,'ocupado',2),(45,3,'2023-06-28','20:00:00','21:00:00',1,'ocupado',3),(46,3,'2023-06-28','10:00:00','11:00:00',1,'ocupado',3),(47,1,'2023-06-27','09:00:00','10:00:00',1,'libre',4),(48,1,'2023-06-27','11:00:00','12:00:00',1,'libre',4),(49,1,'2023-06-27','10:00:00','11:00:00',1,'libre',4),(50,1,'2023-06-27','11:00:00','12:00:00',1,'libre',2),(51,3,'2023-06-28','09:00:00','10:00:00',1,'ocupado',4),(52,3,'2023-06-29','11:00:00','12:00:00',1,'ocupado',1),(53,1,'2023-06-27','10:00:00','11:00:00',1,'libre',1),(54,3,'2023-07-04','09:00:00','10:00:00',1,'ocupado',1),(55,1,'2023-06-27','11:00:00','12:00:00',1,'libre',1),(56,3,'2023-06-27','16:00:00','17:00:00',1,'ocupado',1),(57,1,'2023-06-27','12:00:00','13:00:00',1,'libre',1),(58,1,'2023-06-27','13:00:00','14:00:00',1,'libre',1),(59,1,'2023-06-27','14:00:00','15:00:00',1,'libre',1),(60,1,'2023-06-27','16:00:00','17:00:00',1,'libre',4),(62,1,'2023-06-29','10:00:00','11:00:00',1,'prueba',2),(63,1,'2023-06-29','11:00:00','12:00:00',1,'prueba',2),(66,1,'2023-06-29','17:00:00','18:00:00',1,'prueba',2),(67,1,'2023-06-29','18:00:00','19:00:00',1,'prueba',2),(69,3,'2023-07-05','09:00:00','10:00:00',1,'ocupado',2),(70,3,'2023-07-07','11:00:00','12:00:00',1,'ocupado',2),(71,1,'2023-07-01','10:00:00','11:00:00',1,'libre',3),(72,1,'2023-07-06','09:00:00','10:00:00',1,'libre',3),(73,1,'2023-07-01','21:00:00','22:00:00',1,'libre',4),(74,3,'2023-06-27','22:00:00','23:00:00',1,'ocupado',2),(75,1,'2023-06-28','16:00:00','17:00:00',1,'Horas prueba 28 Junio',2),(76,3,'2023-06-28','17:00:00','18:00:00',1,'ocupado',2),(79,3,'2023-07-04','22:00:00','23:00:00',1,'ocupado',1),(80,3,'2023-07-05','09:00:00','10:00:00',1,'ocupado',3),(81,1,'2023-07-05','10:00:00','11:00:00',1,'klibr',3),(82,3,'2023-07-05','11:00:00','12:00:00',1,'ocupado',3),(83,3,'2023-07-04','09:00:00','10:00:00',1,'ocupado',3),(84,1,'2023-07-04','10:00:00','11:00:00',1,'klibr',3),(85,1,'2023-07-04','11:00:00','12:00:00',1,'klibr',3),(86,1,'2023-07-04','16:00:00','17:00:00',1,'ddddddddddddd',3),(87,1,'2023-07-04','17:00:00','18:00:00',1,'ddddddddddddd',3),(88,1,'2023-07-04','18:00:00','19:00:00',1,'ddddddddddddd',3),(89,1,'2023-07-04','19:00:00','20:00:00',1,'ddddddddddddd',3),(90,1,'2023-07-04','20:00:00','21:00:00',1,'ddddddddddddd',3),(91,1,'2023-07-04','21:00:00','22:00:00',1,'ddddddddddddd',3),(92,1,'2023-07-04','22:00:00','23:00:00',1,'ddddddddddddd',3),(96,3,'2023-07-05','10:00:00','11:00:00',1,'ocupado',2),(97,3,'2023-07-05','11:00:00','12:00:00',1,'ocupado',2),(98,3,'2023-07-13','17:00:00','18:00:00',1,'ocupado',3),(101,3,'2023-07-10','09:00:00','10:00:00',1,'ocupado',3),(112,1,'2023-07-14','18:00:00','19:00:00',1,'libre',2),(113,3,'2023-07-14','19:00:00','20:00:00',1,'ocupado',2),(114,1,'2023-07-14','19:00:00','20:00:00',1,'libre',1),(115,3,'2023-07-14','20:00:00','21:00:00',1,'ocupado',1),(116,3,'2023-07-15','09:00:00','10:00:00',1,'ocupado',1),(124,3,'2023-07-15','22:00:00','23:00:00',1,'ocupado',2),(125,1,'2023-07-15','00:00:00','01:00:00',1,'horario',2),(127,3,'2023-07-17','18:00:00','19:00:00',1,'ocupado',2),(128,3,'2023-07-18','18:00:00','19:00:00',1,'ocupado',2),(129,3,'2023-07-19','09:00:00','10:00:00',1,'ocupado',2),(130,3,'2023-07-19','10:00:00','11:00:00',1,'ocupado',2),(131,1,'2023-07-18','10:00:00','11:00:00',1,'prueba',2),(133,3,'2023-07-18','09:00:00','10:00:00',1,'ocupado',2),(134,3,'2023-07-17','09:00:00','10:00:00',1,'ocupado',3),(135,1,'2023-07-17','10:00:00','11:00:00',1,'libre',3),(136,3,'2023-07-17','11:00:00','12:00:00',1,'ocupado',3),(138,1,'2023-07-16','21:00:00','22:00:00',1,'libre',2),(139,1,'2023-07-30','21:00:00','22:00:00',1,'libre',3),(140,3,'2023-07-31','19:00:00','20:00:00',1,'ocupado',3),(149,3,'2023-07-20','09:00:00','10:00:00',1,'ocupado',2),(150,3,'2023-07-20','10:00:00','11:00:00',1,'ocupado',2),(154,1,'2023-07-17','09:00:00','10:00:00',1,'ggg',2),(157,1,'2023-07-17','03:00:00','04:00:00',1,'ff',2),(158,3,'2023-07-17','16:00:00','17:00:00',1,'ocupado',2),(159,3,'2023-07-17','19:00:00','20:00:00',1,'ocupado',2),(160,3,'2023-07-17','13:15:00','14:15:00',1,'ocupado',2),(161,1,'2023-08-05','19:00:00','20:00:00',1,'libre',3),(162,3,'2023-08-19','09:00:00','10:00:00',1,'ocupado',3),(163,1,'2023-08-19','09:00:00','10:00:00',1,'libre',2),(164,3,'2023-08-19','19:00:00','20:00:00',1,'ocupado',3),(165,3,'2023-08-18','09:00:00','10:00:00',1,'ocupado',3),(166,3,'2023-07-20','11:00:00','12:00:00',1,'libre',2),(168,1,'2023-07-21','10:00:00','11:00:00',1,'ocupado',2),(169,3,'2023-07-21','11:00:00','12:00:00',1,'ocupado',2),(170,3,'2023-07-21','09:00:00','10:00:00',1,'ocupado',3),(171,1,'2023-07-19','10:00:00','11:00:00',1,'Libre',1),(172,3,'2023-07-21','18:00:00','19:00:00',1,'ocupado',1),(173,1,'2023-07-24','09:00:00','10:00:00',1,'Libre',2),(174,1,'2023-07-24','10:00:00','11:00:00',1,'Libre',2),(175,1,'2023-07-24','11:00:00','12:00:00',1,'Libre',2),(176,1,'2023-07-24','12:00:00','13:00:00',1,'Libre',2);
/*!40000 ALTER TABLE `eventocalendariodoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formularioadministrador`
--

DROP TABLE IF EXISTS `formularioadministrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formularioadministrador` (
  `idformularioadministrador` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  `correo` varchar(45) NOT NULL,
  `contrasena` varchar(256) DEFAULT NULL,
  `idtipoformulario` int NOT NULL,
  `dni` char(8) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `idsede` int NOT NULL,
  PRIMARY KEY (`idformularioadministrador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formularioadministrador`
--

LOCK TABLES `formularioadministrador` WRITE;
/*!40000 ALTER TABLE `formularioadministrador` DISABLE KEYS */;
/*!40000 ALTER TABLE `formularioadministrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formularioadministrativo`
--

DROP TABLE IF EXISTS `formularioadministrativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formularioadministrativo` (
  `idformularioadministrativo` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `correo` varchar(45) NOT NULL,
  `contrasena` varchar(256) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  `idtipoformulario` int NOT NULL,
  `idsede` int NOT NULL,
  `idespecialidad` int NOT NULL,
  PRIMARY KEY (`idformularioadministrativo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formularioadministrativo`
--

LOCK TABLES `formularioadministrativo` WRITE;
/*!40000 ALTER TABLE `formularioadministrativo` DISABLE KEYS */;
/*!40000 ALTER TABLE `formularioadministrativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulariodoctor`
--

DROP TABLE IF EXISTS `formulariodoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formulariodoctor` (
  `idformulariodoctor` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `correo` varchar(45) NOT NULL,
  `contrasena` varchar(256) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  `cmp` int DEFAULT NULL,
  `rne` int DEFAULT NULL,
  `formacion` longtext,
  `capacitaciones` longtext,
  `idtipoformulario` int NOT NULL,
  `idsede` int NOT NULL,
  `idespecialidad` int NOT NULL,
  PRIMARY KEY (`idformulariodoctor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulariodoctor`
--

LOCK TABLES `formulariodoctor` WRITE;
/*!40000 ALTER TABLE `formulariodoctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `formulariodoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensaje` (
  `idmensaje` int NOT NULL AUTO_INCREMENT,
  `asunto` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `correodestino` varchar(45) NOT NULL,
  `idusuariodestino` int DEFAULT NULL,
  `idusuarioorigen` int DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `correoorigen` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  PRIMARY KEY (`idmensaje`),
  KEY `fk_mensaje_usuario1_idx` (`idusuariodestino`),
  KEY `fk_mensaje_usuario2_idx` (`idusuarioorigen`),
  CONSTRAINT `fk_mensaje_usuario1` FOREIGN KEY (`idusuariodestino`) REFERENCES `usuario` (`idusuario`),
  CONSTRAINT `fk_mensaje_usuario2` FOREIGN KEY (`idusuarioorigen`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (1,'Anuncio General','Bienvenido Doctor','abigail.ramirez@pucp.edu.pe ',7,2,'2023-04-10','18:00:00','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(2,'Consulta','Buenas Doctora , queria consultarle como le va en el hospital?','abigail.ramirez@pucp.edu.pe ',7,3,'2023-04-11','10:00:00','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(3,'Consulta','Si todo bien , administrativo David','a20180805@pucp.edu.pe',3,7,'2023-04-11','15:00:00','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(4,'Convocatoria','Estimados doctores, el lunes habr√° una convocatorio a las 8:00 pm . Los Esperamos','abigail.ramirez@pucp.edu.pe ',7,2,'2023-04-12','12:00:00','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(6,'Requerimiento de examenes Rayos x 2','Estimado GodSegura, requiero que se haga unos examenes de rayos X , sino F (pipi)','a20203368@pucp.edu.pe',4,7,'2023-06-23','00:48:18','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(7,'prueba 2 de examenes','ojala salga xd','a20203368@pucp.edu.pe',4,7,'2023-06-23','01:00:39','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(8,'examenes :v','gg','a20203368@pucp.edu.pe',4,7,'2023-06-23','01:06:03','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(17,'Consulta General','Doctora cuantos pacientes atendi√≥?','abigail.ramirez@pucp.edu.pe',7,2,'2023-07-07','16:22:17','abigail.ramirez@pucp.edu.pe','1234'),(18,'Prueba 5','hola doctora','abigail.ramirez@pucp.edu.pe',7,2,'2023-07-07','16:27:34','abigail.ramirez@pucp.edu.pe','1234'),(19,'Asuntoo','que tal','angieealejandro@gmail.com',6,2,'2023-07-12','21:30:32','a20191792@pucp.edu.pe','234556'),(20,'Prueba API','aver xd','adrian.lopez@pucp.edu.pe',3,7,'2023-07-16','23:09:40','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(21,'Consulta','Habr√° alguna reuni√≥n pronto?','adrian.lopez@pucp.edu.pe',3,7,'2023-07-18','15:40:14','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(22,'Mensaje Docu','es con stmp xd','adrian.lopez@pucp.edu.pe',3,7,'2023-07-18','16:14:24','clinica.lafe.info@gmail.com','tioqhejyxcpyergd'),(23,'que tal','pruebas','abigail.ramirez@pucp.edu.pe',7,3,'2023-07-18','22:51:17','abigail.ramirez@pucp.edu.pe','1234');
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo`
--

DROP TABLE IF EXISTS `modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo` (
  `idmodelo` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `preguntas` longtext NOT NULL,
  `formulario` tinyint DEFAULT NULL,
  `informe` tinyint DEFAULT NULL,
  `idtipodeusuario` int NOT NULL,
  `idespecialidad` int DEFAULT NULL,
  `idcita` int DEFAULT NULL,
  `nro_inputs` int DEFAULT NULL,
  `cuestionario` tinyint DEFAULT NULL,
  PRIMARY KEY (`idmodelo`),
  KEY `fk_modelo_tipodeusuario1_idx` (`idtipodeusuario`),
  KEY `fk_modelo_especialidad1_idx` (`idespecialidad`),
  KEY `fk_modelo_cita1_idx` (`idcita`),
  CONSTRAINT `fk_modelo_cita1` FOREIGN KEY (`idcita`) REFERENCES `cita` (`idcita`),
  CONSTRAINT `fk_modelo_especialidad1` FOREIGN KEY (`idespecialidad`) REFERENCES `especialidad` (`idespecialidad`),
  CONSTRAINT `fk_modelo_tipodeusuario1` FOREIGN KEY (`idtipodeusuario`) REFERENCES `tipodeusuario` (`idtipodeusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo`
--

LOCK TABLES `modelo` WRITE;
/*!40000 ALTER TABLE `modelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_json`
--

DROP TABLE IF EXISTS `modelo_json`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_json` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_plantilla` varchar(255) NOT NULL,
  `datos` json DEFAULT NULL,
  `idespecialidad` int DEFAULT NULL,
  `idtipodeusuario` int NOT NULL,
  `formulario` tinyint DEFAULT NULL,
  `informe` tinyint DEFAULT NULL,
  `cuestionario` tinyint DEFAULT NULL,
  `habilitado` int NOT NULL,
  `mostrar_automatico` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_modelo_json_especialidad1_idx` (`idespecialidad`),
  KEY `fk_modelo_json_tipodeusuario1_idx` (`idtipodeusuario`),
  CONSTRAINT `fk_modelo_json_especialidad1` FOREIGN KEY (`idespecialidad`) REFERENCES `especialidad` (`idespecialidad`),
  CONSTRAINT `fk_modelo_json_tipodeusuario1` FOREIGN KEY (`idtipodeusuario`) REFERENCES `tipodeusuario` (`idtipodeusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_json`
--

LOCK TABLES `modelo_json` WRITE;
/*!40000 ALTER TABLE `modelo_json` DISABLE KEYS */;
INSERT INTO `modelo_json` VALUES (4,'form','{\"P1\": \"\", \"P3\": \"\", \"P20\": \"\"}',2,1,NULL,NULL,1,0,NULL),(5,'RX_INF_DOC','{\"P13|\": \"\", \"P15|\": \"\", \"P120|\": \"\", \"P121|\": \"\", \"P12000\": \"\"}',5,5,NULL,1,NULL,0,NULL),(6,'RX_PAC_CUESTIONARIO_DIARIO','{\"¬øEst√° embarazada o existe la posibilidad de estarlo? (S√≠/No)\": \"\", \"¬øHa tenido alguna vez una radiograf√≠a anteriormente? (S√≠/No)\": \"\", \"¬øTiene alguna alergia conocida a contrastes utilizados en radiograf√≠as? (S√≠/No)\": \"\", \"¬øHa experimentado alg√∫n evento adverso durante o despu√©s de una radiograf√≠a previa? (S√≠/No)\": \"\", \"¬øEst√° tomando actualmente alg√∫n medicamento o tiene alguna condici√≥n m√©dica relevante que debamos tener en cuenta antes de realizar la radiograf√≠a? (S√≠/No)\": \"\"}',5,4,NULL,NULL,1,0,NULL),(8,'CUEST_ADM_OTORRINO_DIARIO','{\"¬øCu√°l es el motivo de su consulta en otorrinolaringolog√≠a?\": \"\", \"¬øHa tenido dificultades para tragar, cambios en la voz o problemas relacionados con la garganta? (S√≠/No)\": \"\", \"¬øHa tenido alguna vez infecciones recurrentes de o√≠do o problemas cr√≥nicos en los senos paranasales? (S√≠/No)\": \"\", \"¬øHa experimentado problemas de audici√≥n, zumbidos en los o√≠dos u otros s√≠ntomas relacionados con el o√≠do? (S√≠/No)\": \"\", \"¬øTiene antecedentes de alergias, especialmente alergias respiratorias o reacciones al√©rgicas a medicamentos? (S√≠/No)\": \"\"}',15,3,NULL,NULL,1,0,NULL),(9,'CUEST_LAB_PACIENTE_MAYO','{\"¬øCu√°l es el prop√≥sito de su visita al laboratorio?\": \"\", \"¬øHa experimentado alg√∫n cambio en su salud √∫ltimamente? (S√≠/No)\": \"\", \"¬øHa estado expuesto/a a sustancias t√≥xicas o peligrosas en su entorno laboral o personal? (S√≠/No)\": \"\", \"¬øHa tenido alguna vez reacciones al√©rgicas a medicamentos, alimentos o sustancias en el pasado? (S√≠/No)\": \"\", \"¬øEst√° tomando actualmente alg√∫n medicamento o suplemento? En caso afirmativo, proporcione los nombres y las dosis.\": \"\"}',4,4,NULL,NULL,1,1,NULL),(10,'CUEST_LAB_PACIENTE_MAYO_2','{\"¬øZDatos?\": \"\", \"¬øHa experimentado el paciente alg√∫n cambio en su nivel de conciencia?\": \"\", \"¬øHa tenido el paciente antecedentes de enfermedades neurol√≥gicas o trastornos cerebrovasculares?\": \"\", \"¬øEl paciente ha experimentado alg√∫n s√≠ntoma neurol√≥gico adicional, como debilidad muscular o problemas de equilibrio?\": \"\", \"¬øSe ha sometido el paciente a alguna prueba de diagn√≥stico por imagen, como una resonancia magn√©tica o una tomograf√≠a computarizada?\": \"\"}',4,4,NULL,NULL,1,0,NULL),(11,'CUEST_UROLOGIA_SEDE_SM','{\"P1112\": null, \"PREGUNTA1\": \"\", \"PREGUNTA2\": \"\", \"PREGUNTA3\": \"\", \"PREGUNTA4\": \"\", \"PREGUNTA5\": \"\"}',8,4,NULL,NULL,1,0,NULL),(12,'FORMS_DERMATOLOGIA_PAC_MAYO','{\"P1112\": null, \"Pregunta1\": \"\", \"Pregunta2\": \"\", \"Pregunta3\": \"\", \"Pregunta4\": \"\", \"Pregunta5\": \"\"}',17,4,1,NULL,NULL,0,NULL),(13,'INF_TRAUMATOLOGIA_POST_CITA','{\"Q2\": \"\", \"Q3\": \"\", \"Q4\": \"\", \"Q5\": \"\", \"Q100\": \"\", \"P1112\": null}',2,5,NULL,1,NULL,1,NULL),(14,'CUEST_ADM_OTORRINO_DIARIO','{\"P10\": \"\", \"P11|\": \"\", \"P13|\": \"\", \"P15|\": \"\", \"P1112\": \"\", \"P120|\": \"\", \"P121|\": \"\", \"¬øTiene antecedentes de alergias\": \"\", \"¬øHa tenido dificultades para tragar\": \"\", \"¬øHa experimentado problemas de audici√≥n\": \"\", \"¬øCu√°l es el motivo de su consulta en otorrinolaringolog√≠a?\": \"\", \"¬øEst√° embarazada o existe la posibilidad de estarlo? (S√≠/No)\": \"\", \"¬øHa tenido alguna vez una radiograf√≠a anteriormente? (S√≠/No)\": \"\", \"cambios en la voz o problemas relacionados con la garganta? (S√≠/No)\": \"\", \"zumbidos en los o√≠dos u otros s√≠ntomas relacionados con el o√≠do? (S√≠/No)\": \"\", \"¬øTiene alguna alergia conocida a contrastes utilizados en radiograf√≠as? (S√≠/No)\": \"\", \"especialmente alergias respiratorias o reacciones al√©rgicas a medicamentos? (S√≠/No)\": \"\", \"¬øHa experimentado alg√∫n evento adverso durante o despu√©s de una radiograf√≠a previa? (S√≠/No)\": \"\", \"¬øHa tenido alguna vez infecciones recurrentes de o√≠do o problemas cr√≥nicos en los senos paranasales? (S√≠/No)\": \"\", \"¬øEst√° tomando actualmente alg√∫n medicamento o tiene alguna condici√≥n m√©dica relevante que debamos tener en cuenta antes de realizar la radiograf√≠a? (S√≠/No)\": \"\"}',15,3,NULL,NULL,1,0,NULL),(15,'CUEST_ADM_OTORRINO_DIARIO','{\"P10\": \"\", \"¬øTiene antecedentes de alergias\": \"\", \"¬øHa tenido dificultades para tragar\": \"\", \"¬øHa experimentado problemas de audici√≥n\": \"\", \"¬øCu√°l es el motivo de su consulta en otorrinolaringolog√≠a?\": \"\", \"cambios en la voz o problemas relacionados con la garganta? (S√≠/No)\": \"\", \"zumbidos en los o√≠dos u otros s√≠ntomas relacionados con el o√≠do? (S√≠/No)\": \"\", \"especialmente alergias respiratorias o reacciones al√©rgicas a medicamentos? (S√≠/No)\": \"\", \"¬øHa tenido alguna vez infecciones recurrentes de o√≠do o problemas cr√≥nicos en los senos paranasales? (S√≠/No)\": \"\"}',15,3,NULL,NULL,1,1,NULL),(16,'RX_INF_DOC','{\"P10|\": \"\", \"P13|\": \"\", \"P15|\": \"\", \"P120|\": \"\", \"P121|\": \"\"}',5,5,NULL,1,NULL,0,NULL),(20,'form','{\"P1\": \"\", \"P2\": \"\", \"P3\": \"\"}',2,1,NULL,NULL,3,0,NULL),(21,'CUEST_UROLOGIA_SEDE_SM','{\"P100\": \"\", \"PREGUNTA1\": \"\", \"PREGUNTA2\": \"\", \"PREGUNTA3\": \"\", \"PREGUNTA4\": \"\", \"PREGUNTA5\": \"\"}',8,4,NULL,NULL,1,0,NULL),(22,'INF_CARDIOLOGIA_PAC','{\"Datos del paciente\": \"\", \"Motivo de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',1,4,NULL,1,NULL,0,NULL),(23,'INF_TRAUMATOLOGIA_PAC','{\"Datos del paciente\": \"\", \"Motivo de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',2,4,NULL,1,NULL,0,NULL),(24,'INF_RX_PAC','{\"Datos del paciente\": \"\", \"Motivo de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',5,4,NULL,1,NULL,0,NULL),(25,'INF_CARDIOLOGIA_DOC','{\"Datos del paciente\": \"\", \"Motivo de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',1,5,NULL,1,NULL,1,NULL),(26,'INF_TRAUMATOLOGIA_DOC','{\"Motivo de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',2,5,NULL,1,NULL,1,NULL),(27,'INF_MED_INTERNA_DOC','{\"Datos del paciente\": \"\", \"Motivo de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',9,5,NULL,1,NULL,1,NULL),(29,'INF_DERMATOLOGIA_DOC','{\"Datos del paciente\": \"\", \"Motivo de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',17,5,NULL,1,NULL,0,NULL),(30,'RX_PAC_CUESTIONARIO_DIARIO','{\"\": \"\", \"¬øEst√° embarazada o existe la posibilidad de estarlo? (S√≠/No)\": \"\", \"¬øHa tenido alguna vez una radiograf√≠a anteriormente? (S√≠/No)\": \"\", \"¬øTiene alguna alergia conocida a contrastes utilizados en radiograf√≠as? (S√≠/No)\": \"\", \"¬øHa experimentado alg√∫n evento adverso durante o despu√©s de una radiograf√≠a previa? (S√≠/No)\": \"\", \"¬øEst√° tomando actualmente alg√∫n medicamento o tiene alguna condici√≥n m√©dica relevante que debamos tener en cuenta antes de realizar la radiograf√≠a? (S√≠/No)\": \"\"}',5,4,NULL,NULL,1,1,NULL),(31,'CUEST_LAB_PACIENTE_MAYO_2','{\"¬øCu√°l es el motivo de consulta del paciente?\": \"\", \"Como debilidad muscular o problemas de equilibrio?\": \"\", \"¬øEl paciente ha experimentado alg√∫n s√≠ntoma neurol√≥gico adicional\": \"\", \"¬øHa experimentado el paciente alg√∫n cambio en su nivel de conciencia?\": \"\", \"¬øHa tenido el paciente antecedentes de enfermedades neurol√≥gicas o trastornos cerebrovasculares?\": \"\"}',4,4,NULL,NULL,1,0,NULL),(32,'RX_INF_DOC','{\"P13|\": \"\", \"P15|\": \"\", \"P120|\": \"\", \"P121|\": \"\"}',5,5,NULL,1,NULL,0,NULL),(33,'RX_INF_DOC','{\"P13|\": \"\", \"P15|\": \"\", \"P120|\": \"\"}',5,5,NULL,1,NULL,1,NULL),(34,'CST_TRAUMATOLOGIA_JUNIO','{\"¬øHa experimentado alg√∫n tipo de lesi√≥n o trauma reciente en su cuerpo? Si es as√≠, por favor describa la naturaleza de la lesi√≥n y la fecha en que ocurri√≥.\": \"\", \"¬øCu√°les son los s√≠ntomas que est√° experimentando actualmente como resultado de su lesi√≥n? (Por ejemplo: dolor, inflamaci√≥n, dificultad para moverse, debilidad, etc.)\": \"\", \"¬øTiene alguna condici√≥n m√©dica preexistente que pueda afectar su recuperaci√≥n de la lesi√≥n o su respuesta al tratamiento? Por ejemplo, diabetes, enfermedades card√≠acas, alergias a medicamentos, etc.\": \"\", \"¬øHa recibido alg√∫n tipo de tratamiento m√©dico o intervenci√≥n para su lesi√≥n? En caso afirmativo, por favor indique qu√© tipo de tratamiento ha recibido y si ha notado alguna mejor√≠a en sus s√≠ntomas.\": \"\"}',2,4,NULL,NULL,1,1,NULL),(36,'INF_DERMATOLOGIA_DOC','{\"Datos del paciente\": \"\", \"Motivos de la consulta\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',17,5,NULL,1,NULL,0,NULL),(38,'INF_DERMATOLOGIA_DOC','{\"Datos del paciente\": \"\", \"Motivos de la consulta 2\": \"\", \"Evaluaci√≥n de los s√≠ntomas presentes\": \"\", \"Observaciones y notas adicionales del m√©dico\": \"\"}',17,5,NULL,1,NULL,1,NULL),(39,'CUESTIONARIO_CARDIO','{\"COMO ESTAS 1\": \"\", \"COMO ESTAS 2\": \"\", \"COMO ESTAS 3\": \"\", \"COMO ESTAS 4\": \"\"}',1,4,NULL,NULL,1,0,NULL),(43,'neuro cuest','{\"neuro1\": \"\", \"neuro2\": \"\", \"neuro3\": \"\"}',12,4,NULL,NULL,1,0,NULL),(50,'Cuestionario Satisfaccion','{\"P2\": \"\", \"P3\": \"\", \"P4\": \"\"}',2,4,NULL,NULL,1,0,NULL),(51,'Informe Rayos X','{\"P1\": \"\", \"P2\": \"\", \"P3\": \"\", \"P4\": \"\"}',5,5,NULL,1,NULL,0,NULL),(52,'Informe Rayos X','{\"P3\": \"\", \"P4\": \"\", \"P1.1\": \"\", \"P2.1\": \"\"}',5,5,NULL,1,NULL,1,NULL),(54,'Form Cardio','{\"que tal\": \"\"}',1,4,1,NULL,NULL,1,NULL),(55,'Cuestionario para Pediatr√≠a','{\"¬øComo te sientes?\": \"\"}',11,4,NULL,NULL,1,0,NULL),(65,'neuro cuest','{\"neu\": \"\", \"neuro2.2\": \"\", \"neuro3.3\": \"\"}',12,4,NULL,NULL,1,0,NULL),(67,'neuro cuest','{\"neuro\": \"\", \"neuro2.2\": \"\", \"neuro3.3\": \"\"}',12,4,NULL,NULL,1,0,NULL),(68,'neuro cuest','{\"Hola\": \"\", \"neuro2.2\": \"\", \"neuro3.3\": \"\"}',12,4,NULL,NULL,1,0,NULL),(69,'neuro cuest','{\"1\": \"\", \"2\": \"\", \"3\": \"\"}',12,4,NULL,NULL,1,0,NULL),(70,'Informe Medicina Interna','{\"P1\": \"\", \"P2\": \"\", \"P3\": \"\", \"P4\": \"\"}',9,5,NULL,1,NULL,0,NULL),(71,'Informe Medicina Interna 2','{\"Z1\": \"\"}',9,5,NULL,1,NULL,0,NULL),(72,'Cuestionario Neurologia','{\"Neurologia 1.1\": \"\", \"Neurologia 1.2\": \"\", \"Neurologia 1.3\": \"\"}',12,4,NULL,NULL,1,0,NULL),(73,'Cuestionario Neurologia','{\"Neurologia 2.1\": \"\", \"Neurologia 2.2\": \"\", \"Neurologia 2.3\": \"\"}',12,4,NULL,NULL,1,1,NULL),(82,'Formulario Prueba','{\"Pregunta 1\": \"\", \"Pregunta 2\": \"\"}',5,3,1,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `modelo_json` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_x_cita`
--

DROP TABLE IF EXISTS `modelo_x_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_x_cita` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idmodelo_fk` int NOT NULL,
  `idpaciente_fk` int DEFAULT NULL,
  `idcita_fk` int NOT NULL,
  `mostrar_automatico` int DEFAULT NULL,
  `fill` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_modelo_x_cita_idmodelo_idx` (`idmodelo_fk`),
  KEY `fk_modelo_x_cita_idcita` (`idcita_fk`),
  CONSTRAINT `fk_modelo_x_cita_idcita` FOREIGN KEY (`idcita_fk`) REFERENCES `cita` (`idcita`),
  CONSTRAINT `fk_modelo_x_cita_idmodelo` FOREIGN KEY (`idmodelo_fk`) REFERENCES `modelo_json` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_x_cita`
--

LOCK TABLES `modelo_x_cita` WRITE;
/*!40000 ALTER TABLE `modelo_x_cita` DISABLE KEYS */;
INSERT INTO `modelo_x_cita` VALUES (13,39,4,33,NULL,0),(14,39,4,34,NULL,0),(15,43,4,37,NULL,0),(16,43,4,39,NULL,0),(17,39,4,38,NULL,0),(30,34,4,66,NULL,0),(44,34,4,111,0,0),(45,34,4,112,1,1),(49,34,4,109,1,NULL),(50,34,4,134,1,1),(51,34,4,110,1,1),(52,72,5,148,1,1),(55,34,4,108,0,0),(56,73,4,188,1,1);
/*!40000 ALTER TABLE `modelo_x_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificaciones` (
  `idnotificaciones` int NOT NULL AUTO_INCREMENT,
  `idusuariodestino` int DEFAULT NULL,
  `contenido` varchar(500) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`idnotificaciones`),
  KEY `fk_notificaciones_usuario1_idx` (`idusuariodestino`),
  CONSTRAINT `fk_notificaciones_usuario1` FOREIGN KEY (`idusuariodestino`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,4,'Usted reserv√≥ una cita para 2023-06-16en la siguiente hora: 15:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-06-14','00:49:13'),(2,4,'Usted reserv√≥ una cita para 2023-06-22en la siguiente hora: 13:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-06-21','02:24:08'),(3,4,'Usted reserv√≥ una cita para 2023-06-27en la siguiente hora: 09:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-06-24','19:25:53'),(4,4,'Usted reserv√≥ una cita para 2023-06-26en la siguiente hora: 09:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-24','22:39:14'),(5,4,'venga a atender','Requerimiento de Examenes','2023-06-24','23:42:32'),(6,4,'LIBRE','Requerimiento de Examenes','2023-06-24','23:45:43'),(7,4,'Usted reserv√≥ una cita para 2023-06-26en la siguiente hora: 10:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-25','16:00:31'),(8,4,'Usted reserv√≥ una cita para 2023-06-27en la siguiente hora: 20:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-25','16:48:32'),(9,4,'Usted reserv√≥ una cita para 2023-06-27en la siguiente hora: 17:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-25','16:53:47'),(10,4,'Usted reserv√≥ una cita para 2023-06-26en la siguiente hora: 19:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-25','17:26:04'),(11,4,'Usted reserv√≥ una cita para 2023-06-28en la siguiente hora: 09:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-25','20:03:06'),(12,2,'Usted registro un usuario de TIPO: DOCTOR, con CORREO: sebastian.segura1310@gmail.com','Usuario creado con exito','2023-06-25','20:10:44'),(15,4,'Usted reserv√≥ una cita para 2023-06-30en la siguiente hora: 10:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-06-25','20:29:57'),(16,4,'Usted reserv√≥ una cita para 2023-06-27en la siguiente hora: 19:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-25','20:39:52'),(17,4,'Usted reserv√≥ una cita para 2023-06-28en la siguiente hora: 11:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-06-25','20:41:41'),(18,4,'Usted reserv√≥ una cita para 2023-06-29en la siguiente hora: 16:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-06-25','22:47:57'),(19,4,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-25','23:05:17'),(20,4,'Usted reserv√≥ una cita para 2023-07-03en la siguiente hora: 20:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-06-25','23:38:38'),(21,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-26','06:43:45'),(22,5,'Usted reserv√≥ una cita para 2023-06-28en la siguiente hora: 20:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-06-26','22:11:19'),(23,5,'Usted reserv√≥ una cita para 2023-06-28en la siguiente hora: 10:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-06-26','22:26:39'),(24,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-26','23:29:47'),(25,10,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-26','23:47:29'),(26,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-27','01:12:44'),(27,2,'Usted registro un usuario de TIPO: DOCTOR, con CORREO: as.alejandror@gmail.com','Usuario creado con exito','2023-06-27','09:17:54'),(28,5,'Usted reserv√≥ una cita para 2023-06-29en la siguiente hora: 11:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-27','10:15:04'),(29,5,'Usted reserv√≥ una cita para 2023-06-28en la siguiente hora: 09:00 En la especialiad de Laboratorio.','Cita reservada con exito','2023-06-27','10:35:36'),(30,5,'Usted reserv√≥ una cita para 2023-06-27en la siguiente hora: 16:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-27','17:11:58'),(31,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-27','20:12:10'),(32,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-27','21:33:29'),(33,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-27','21:41:52'),(34,4,'Usted reserv√≥ una cita para 2023-06-28en la siguiente hora: 09:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-06-27','22:08:22'),(35,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-27','22:13:31'),(36,4,'Usted reserv√≥ una cita para 2023-07-07en la siguiente hora: 11:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-06-27','22:37:06'),(37,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-27','22:41:45'),(38,4,'Usted reserv√≥ una cita para 2023-06-27en la siguiente hora: 22:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-06-28','02:33:23'),(39,4,'Usted reserv√≥ una cita para 2023-06-28en la siguiente hora: 17:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-06-28','02:39:23'),(40,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-06-28','02:47:00'),(41,4,'Usted reserv√≥ una cita para 2023-07-04en la siguiente hora: 09:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-06-30','23:31:25'),(42,4,'Usted reserv√≥ una cita para 2023-07-04en la siguiente hora: 22:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-07-04','03:06:46'),(43,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-07-04','04:21:46'),(44,4,'Usted reserv√≥ una cita para 2023-07-05en la siguiente hora: 11:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-04','04:37:51'),(45,4,'Usted reserv√≥ una cita para 2023-07-05en la siguiente hora: 09:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-04','04:47:52'),(46,17,'Usted registro un usuario de TIPO: DOCTOR, con CORREO: sebas_segura.2002@hotmail.com','Usuario creado con exito','2023-07-04','05:32:55'),(47,17,'Usted registro un usuario de TIPO: PACIENTE, con CORREO: abigail.ramirezguia@gmail.com','Usuario creado con exito','2023-07-04','05:57:32'),(48,19,'Usted reserv√≥ una cita para 2023-07-04en la siguiente hora: 11:00 En la especialiad de Dermatolog√≠a.','Cita reservada con exito','2023-07-04','06:14:43'),(49,4,'Usted reserv√≥ una cita para 2023-07-05en la siguiente hora: 11:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-04','06:15:43'),(50,5,'Usted reserv√≥ una cita para 2023-07-05en la siguiente hora: 09:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-04','06:37:02'),(51,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-07-04','06:51:09'),(52,5,'Usted reserv√≥ una cita para 2023-07-05en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-04','06:53:56'),(53,19,'Usted reserv√≥ una cita para 2023-07-04en la siguiente hora: 09:00 En la especialiad de Dermatolog√≠a.','Cita reservada con exito','2023-07-04','06:59:58'),(54,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-07-04','07:41:36'),(55,9,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-07-04','07:45:39'),(56,4,'Usted reserv√≥ una cita para 2023-07-13en la siguiente hora: 17:00 En la especialiad de Dermatolog√≠a.','Cita reservada con exito','2023-07-04','08:02:42'),(57,4,'Usted reserv√≥ una cita para 2023-07-13en la siguiente hora: 17:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-04','08:03:13'),(58,4,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-07-04','08:07:38'),(59,4,'Usted reserv√≥ una cita para 2023-07-10en la siguiente hora: 09:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-04','08:11:52'),(60,4,'hagase examenes sino f','Requerimiento de Examenes','2023-07-04','09:02:17'),(61,4,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-07-04','09:58:30'),(62,4,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-07-04','10:21:22'),(63,4,'Estimado Paciente, recuerde llenar el cuestionario enviado por el doctor','Cuestionario Pendiente','2023-07-04','10:37:50'),(64,5,'Usted reserv√≥ una cita para 2023-07-04en la siguiente hora: 09:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-04','11:19:05'),(67,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-03 a las: 21:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-03','2023-07-07','20:55:00'),(69,7,'Estimado Doctor(a): Ramirez se confirm√≥ el delivery de medicamentos para el paciente asignado','Delivery de Medicamentos Confirmado','2023-07-07','22:42:13'),(70,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-03 de: 23:07 a 21:00 A Iniciado','Cita Iniciada','2023-07-11','17:24:36'),(71,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-03 a las: 21:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-03','2023-07-11','18:49:31'),(72,4,'Se cancelo su cita programado para el dia: 2023-07-13 a las :13:53 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-13','18:00:39'),(73,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-13 a las :13:53 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-13','18:00:39'),(74,4,'Se cancelo su cita programado para el dia: 2023-07-13 a las :13:53 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-13','18:02:01'),(75,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-13 a las :13:53 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-13','18:02:01'),(76,4,'Se cancelo su cita programado para el dia: 2023-07-13 a las :14:08 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-13','18:08:05'),(77,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-13 a las :14:08 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-13','18:08:05'),(78,4,'Se cancelo su cita programado para el dia: 2023-07-13 a las :14:08 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-13','18:08:13'),(79,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-13 a las :14:08 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-13','18:08:13'),(80,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-13 de: 15:42 a 12:00 A Iniciado','Cita Iniciada','2023-07-13','20:43:40'),(81,5,'Usted reserv√≥ una cita para 2023-07-14en la siguiente hora: 09:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-14','03:23:32'),(82,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :09:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','03:24:00'),(83,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :09:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','03:24:00'),(84,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :09:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','03:24:10'),(85,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :09:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','03:24:11'),(86,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :09:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','03:24:49'),(87,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :09:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','03:24:49'),(88,5,'Usted reserv√≥ una cita para 2023-07-14en la siguiente hora: 11:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-14','03:30:09'),(89,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-03 de: 21:49 a 22:00','Receta Disponible , Cita:2023-07-03','2023-07-14','03:33:41'),(90,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-03 de: 21:49 a 22:00','Receta Disponible , Cita:2023-07-03','2023-07-14','03:33:41'),(91,5,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-14 de: 11:00 a 12:00 A Iniciado','Cita Iniciada','2023-07-14','03:41:50'),(92,5,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-14 de: 11:00 a 12:00 A Finalizado','Cita Finalizada','2023-07-14','03:46:01'),(93,5,'Usted reserv√≥ una cita para 2023-07-14en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-14','03:56:06'),(94,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :10:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','03:56:24'),(95,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :10:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','03:56:24'),(96,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :10:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','03:56:52'),(97,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :10:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','03:56:52'),(98,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :10:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','03:57:03'),(99,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :10:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','03:57:03'),(100,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :10:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','03:57:35'),(101,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :10:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','03:57:36'),(102,5,'Usted reserv√≥ una cita para 2023-07-14en la siguiente hora: 16:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-14','04:02:22'),(103,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :16:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','04:02:39'),(104,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :16:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','04:02:40'),(105,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :16:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','04:03:07'),(106,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :16:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','04:03:07'),(107,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :16:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','04:03:34'),(108,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :16:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','04:03:34'),(109,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-03 de: 21:49 a 22:00','Receta Disponible , Cita:2023-07-03','2023-07-14','04:10:19'),(110,5,'Usted reserv√≥ una cita para 2023-07-14en la siguiente hora: 19:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-14','21:44:30'),(111,5,'Usted reserv√≥ una cita para 2023-07-14en la siguiente hora: 20:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-07-14','22:23:28'),(112,5,'Usted reserv√≥ una cita para 2023-07-15en la siguiente hora: 09:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-07-14','22:39:41'),(113,5,'se requiere examenes de rayos x','Requerimiento de Examenes','2023-07-14','22:43:29'),(114,5,'Se cancelo su cita programado para el dia: 2023-07-14 a las :19:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-14','23:00:01'),(115,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-14 a las :19:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-14','23:00:01'),(118,5,'Usted reserv√≥ una cita para 2023-07-15en la siguiente hora: 09:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-07-14','23:25:22'),(121,5,'Se cancelo su cita programado para el dia: 2023-07-15 a las :09:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-15','00:00:16'),(122,6,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-15 a las :09:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-15','00:00:16'),(123,5,'Se cancelo su cita programado para el dia: 2023-07-15 a las :09:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-15','00:00:44'),(124,6,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-15 a las :09:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-15','00:00:44'),(125,5,'Se cancelo su cita programado para el dia: 2023-07-15 a las :09:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-15','00:01:10'),(126,6,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-15 a las :09:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-15','00:01:11'),(131,4,'Usted reserv√≥ una cita para 2023-07-15en la siguiente hora: 18:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-15','20:37:46'),(133,3,'Usted invito un usuario con CORREO: angieealejandro@gmail.com','Invitaci√≥n enviada existosamente','2023-07-15','21:45:18'),(134,4,'Usted reserv√≥ una cita para 2023-07-15en la siguiente hora: 20:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-15','21:50:59'),(135,4,'Usted reserv√≥ una cita para 2023-07-15en la siguiente hora: 22:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-15','22:10:50'),(136,4,'Usted reserv√≥ una cita para 2023-07-17en la siguiente hora: 18:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-15','23:19:42'),(137,4,'Usted reserv√≥ una cita para 2023-07-18en la siguiente hora: 18:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-15','23:37:55'),(138,4,'Usted reserv√≥ una cita para 2023-07-19en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-15','23:43:04'),(139,4,'Usted reserv√≥ una cita para 2023-07-19en la siguiente hora: 09:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-15','23:50:05'),(140,2,'Usted registro un usuario de TIPO: PACIENTE, con CORREO: angieealejandro@gmail.com','Usuario creado con exito','2023-07-16','01:23:20'),(141,2,'Usted registro un usuario de TIPO: PACIENTE, con CORREO: angieealejandro@gmail.com','Usuario creado con exito','2023-07-16','01:27:53'),(142,2,'Usted registro un usuario de TIPO: DOCTOR, con CORREO: angieealejandro@gmail.com','Usuario creado con exito','2023-07-16','01:35:30'),(143,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-15 a las: 23:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-15','2023-07-16','04:47:58'),(144,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-19 de: 09:00 a 10:00 A Iniciado','Cita Iniciada','2023-07-16','16:40:31'),(145,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-19','2023-07-16','17:43:51'),(146,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-19','2023-07-16','18:05:00'),(147,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-19','2023-07-16','18:05:41'),(148,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-19','2023-07-16','18:13:33'),(149,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-19','2023-07-16','18:28:10'),(150,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-19','2023-07-16','18:32:02'),(151,2,'Usted registro un usuario de TIPO: PACIENTE, con CORREO: carlaaaa@gmail.com','Usuario creado con exito','2023-07-16','21:33:37'),(152,2,'Usted registro un usuario de TIPO: DOCTOR, con CORREO: robert@pucp.pe','Usuario creado con exito','2023-07-16','21:37:53'),(153,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-19','2023-07-16','22:23:44'),(154,4,'Usted reserv√≥ una cita para 2023-07-17en la siguiente hora: 09:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-16','22:38:14'),(155,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-19','2023-07-16','22:41:39'),(156,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-17 a las: 10:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-17','2023-07-16','22:54:21'),(157,4,'Usted reserv√≥ una cita para 2023-07-17en la siguiente hora: 11:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-16','23:09:53'),(158,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-17 a las: 12:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-17','2023-07-16','23:11:26'),(159,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-17 de: 18:00 a 19:00','Receta Disponible , Cita:2023-07-17','2023-07-16','23:42:26'),(160,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-19 de: 10:00 a 11:00 A Iniciado','Cita Iniciada','2023-07-17','00:03:03'),(161,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-16 a las: 09:45','Cuestionario Pendiente para su Cita - Dia: 2023-07-16','2023-07-17','01:38:58'),(162,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-17 de: 18:00 a 19:00 A Iniciado','Cita Iniciada','2023-07-17','01:50:58'),(163,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-16 a las: 22:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-16','2023-07-17','01:57:23'),(164,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-16 a las: 23:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-16','2023-07-17','01:58:25'),(165,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 10:00 a 11:00','Receta Disponible , Cita:2023-07-19','2023-07-17','02:12:35'),(166,4,'Usted reserv√≥ una cita para 2023-07-17en la siguiente hora: 10:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-17','02:15:23'),(167,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-18 de: 18:00 a 19:00 A Iniciado','Cita Iniciada','2023-07-17','02:15:34'),(168,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :10:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','02:15:46'),(169,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :10:00 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','02:15:46'),(170,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :10:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','02:16:15'),(171,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :10:00 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','02:16:15'),(172,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :10:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','02:16:43'),(173,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :10:00 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','02:16:43'),(183,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-19 a las: 11:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-19','2023-07-17','05:34:35'),(184,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-19 de: 10:00 a 11:00 A Iniciado','Cita Iniciada','2023-07-17','05:49:28'),(185,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-19 de: 10:00 a 11:00 A Iniciado','Cita Iniciada','2023-07-17','05:53:23'),(186,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :02:26 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','06:24:16'),(187,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :02:26 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','06:24:16'),(188,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :06:28 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','06:26:46'),(189,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :06:28 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','06:26:46'),(191,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-19 de: 10:00 a 11:00','Receta Disponible , Cita:2023-07-19','2023-07-17','06:49:24'),(193,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :03:16 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','07:15:21'),(194,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :03:16 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','07:15:21'),(195,4,'se requiere examenes de laboratorio en lo breve posible','Requerimiento de Examenes','2023-07-17','07:53:39'),(196,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-19 de: 10:00 a 11:00 A Finalizado','Cita Finalizada','2023-07-17','07:57:22'),(197,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :11:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','16:38:58'),(198,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :11:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','16:38:58'),(199,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :11:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','16:39:26'),(200,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :11:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','16:39:26'),(201,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :11:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','16:39:55'),(202,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :11:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','16:39:56'),(203,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :12:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','16:39:56'),(204,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :12:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','16:39:56'),(205,4,'Usted reserv√≥ una cita para 2023-07-17en la siguiente hora: 16:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-17','16:43:14'),(206,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :16:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','16:43:26'),(207,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :16:00 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','16:43:26'),(208,4,'Usted reserv√≥ una cita para 2023-07-17en la siguiente hora: 19:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-17','16:48:01'),(209,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-17 a las: 20:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-17','2023-07-17','16:50:00'),(210,5,'Se cancelo su cita programado para el dia: 2023-07-17 a las :13:08 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','17:02:41'),(211,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :13:08 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-17','17:02:41'),(212,5,'Se cancelo su cita programado para el dia: 2023-07-17 a las :13:15 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','17:07:56'),(213,7,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :13:15 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-17','17:07:56'),(214,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-17 de: 19:00 a 20:00 A Iniciado','Cita Iniciada','2023-07-17','17:37:45'),(215,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-17 de: 19:00 a 20:00','Receta Disponible , Cita:2023-07-17','2023-07-17','17:38:55'),(216,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-17 de: 19:00 a 20:00 A Finalizado','Cita Finalizada','2023-07-17','17:43:53'),(217,2,'Usted registro un usuario de TIPO: PACIENTE, con CORREO: nueva@pucp.edu.pe','Usuario creado con exito','2023-07-17','19:10:51'),(218,2,'Usted registro un usuario de TIPO: DOCTOR, con CORREO: err@gmail.com','Usuario creado con exito','2023-07-17','19:14:08'),(219,3,'Usted invito un usuario con CORREO: angieealejandro@gmail.com','Invitaci√≥n enviada existosamente','2023-07-17','19:23:05'),(220,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-18 de: 18:00 a 19:00 A Iniciado','Cita Iniciada','2023-07-17','19:30:11'),(221,4,'Estimado Paciente: Sebastian ya se encuentre disponible su receta medica para su cita del dia 2023-07-18 de: 18:00 a 19:00','Receta Disponible , Cita:2023-07-18','2023-07-17','19:32:16'),(222,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-18 de: 18:00 a 19:00 A Finalizado','Cita Finalizada','2023-07-17','19:34:02'),(223,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-18 de: 18:00 a 19:00 A Iniciado','Cita Iniciada','2023-07-17','19:40:36'),(224,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-18 de: 18:00 a 19:00 A Iniciado','Cita Iniciada','2023-07-17','19:48:10'),(225,5,'Usted reserv√≥ una cita para 2023-07-18en la siguiente hora: 09:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-17','19:50:25'),(226,5,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-18 de: 09:00 a 10:00 A Iniciado','Cita Iniciada','2023-07-17','19:52:39'),(227,5,'Estimado Paciente: Ana ya se encuentre disponible su receta medica para su cita del dia 2023-07-18 de: 09:00 a 10:00','Receta Disponible , Cita:2023-07-18','2023-07-17','19:53:32'),(228,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :16:30 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','20:28:36'),(229,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :16:30 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','20:28:37'),(230,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :16:35 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','20:31:31'),(231,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :16:35 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','20:31:31'),(232,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :16:37 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','20:35:36'),(233,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :16:37 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','20:35:36'),(234,3,'Usted invito un usuario con CORREO: angieealejandro@gmail.com','Invitaci√≥n enviada existosamente','2023-07-17','20:37:39'),(235,3,'Usted invito un usuario con CORREO: angieealejandro@gmail.com','Invitaci√≥n enviada existosamente','2023-07-17','20:43:30'),(236,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :16:48 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','20:48:23'),(237,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :16:48 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','20:48:24'),(238,4,'Se cancelo su cita programado para el dia: 2023-07-17 a las :16:48 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','20:48:51'),(239,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :16:48 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-17','20:48:51'),(240,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-19 a las: 10:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-19','2023-07-17','22:31:41'),(241,4,'Usted reserv√≥ una cita para 2023-08-19en la siguiente hora: 09:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-17','23:12:14'),(242,4,'Usted reserv√≥ una cita para 2023-07-31en la siguiente hora: 19:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-17','23:25:27'),(243,5,'Se cancelo su cita programado para el dia: 2023-07-17 a las :20:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','23:42:44'),(244,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :20:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-17','23:42:44'),(245,5,'Se cancelo su cita programado para el dia: 2023-07-17 a las :21:00 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-17','23:42:45'),(246,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :21:00 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-17','23:42:45'),(247,4,'El doctor: Abigail Ramirezle envi√≥ su enlace de videollamada para la cita virtual :2023-07-18','Enlace de Videollamada para Cita Virtual 2023-07-18 a las 18:00','2023-07-17','23:50:41'),(248,5,'Se cancelo su cita programado para el dia: 2023-07-17 a las :20:23 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','00:23:18'),(249,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :20:23 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-18','00:23:18'),(250,5,'Se cancelo su cita programado para el dia: 2023-07-17 a las :21:23 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','01:23:23'),(251,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-17 a las :21:23 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-18','01:23:23'),(253,5,'Usted reserv√≥ una cita para 2023-08-18en la siguiente hora: 09:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-18','06:18:49'),(254,5,'Estimado Paciente: Ana Alejandro , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-08-18 a las: 10:00','Cuestionario Pendiente para su Cita - Dia: 2023-08-18','2023-07-18','06:19:51'),(255,2,'Usted registro un usuario de TIPO: PACIENTE, con CORREO: lory@gmail.com','Usuario creado con exito','2023-07-18','06:52:35'),(256,2,'Usted registro un usuario de TIPO: PACIENTE, con CORREO: angieealejandro@gmail.com','Usuario creado con exito','2023-07-18','06:53:40'),(257,5,'Se cancelo su cita programado para el dia: 2023-07-18 a las :03:05 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:05:06'),(258,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :03:05 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-18','07:05:06'),(259,5,'Se cancelo su cita programado para el dia: 2023-07-18 a las :03:05 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:05:10'),(260,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :03:05 con el paciente: Ana Alejandro por falta de pago del paciente','Cita Cancelada','2023-07-18','07:05:10'),(261,5,'Usted reserv√≥ una cita para 2023-08-19en la siguiente hora: 19:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-18','07:16:05'),(262,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:30 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:28:08'),(263,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:30 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:28:08'),(264,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:30 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:28:40'),(265,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:30 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:28:40'),(266,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:30 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:28:47'),(267,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:30 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:28:47'),(270,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:30 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:28:54'),(271,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:30 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:28:54'),(272,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:38:57'),(273,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:38:58'),(274,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:39:23'),(275,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:39:23'),(278,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:39:53'),(279,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:39:54'),(280,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:39:54'),(281,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:39:54'),(282,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','07:40:22'),(283,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :02:40 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','07:40:22'),(284,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-18 a las: 19:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-18','2023-07-18','07:53:23'),(285,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-18 a las: 19:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-18','2023-07-18','07:53:32'),(286,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-18 a las: 19:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-18','2023-07-18','08:31:51'),(287,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :03:55 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','08:51:39'),(288,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :03:55 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','08:51:39'),(289,7,'Estimado Doctor(a): Ramirez se confirm√≥ el delivery de medicamentos para el paciente asignado','Delivery de Medicamentos Confirmado','2023-07-18','15:11:22'),(290,4,'Usted reserv√≥ una cita para 2023-07-20en la siguiente hora: 09:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','15:44:43'),(291,4,'El doctor: Abigail Ramirezle envi√≥ su enlace de videollamada para la cita virtual :2023-07-18','Enlace de Videollamada con API','2023-07-18','16:32:19'),(292,5,'Su cita con el Dr(a): Sebastian Segura Abanto programado el dia: 2023-08-19 de: 19:00 a 20:00 A Iniciado','Cita Iniciada','2023-07-18','17:22:48'),(293,5,'Su cita con el Dr(a): Sebastian Segura Abanto programado el dia: 2023-07-31 de: 19:00 a 20:00 A Iniciado','Cita Iniciada','2023-07-18','17:32:55'),(294,5,'Su cita con el Dr(a): Sebastian Segura Abanto programado el dia: 2023-08-18 de: 09:00 a 10:00 A Iniciado','Cita Iniciada','2023-07-18','17:38:04'),(295,4,'Su cita con el Dr(a): Sebastian Segura Abanto programado el dia: 2023-08-18 de: 04:51 a 05:51 A Iniciado','Cita Iniciada','2023-07-18','17:41:04'),(296,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 09:00 En la especialiad de Neurolog√≠a.','Cita reservada con exito','2023-07-18','19:33:45'),(297,4,'Estimado Paciente: Sebastian Segura , recuerde llenar el cuestionario enviado por el doctor antes de su cita del dia: 2023-07-21 a las: 10:00','Cuestionario Pendiente para su Cita - Dia: 2023-07-21','2023-07-18','19:39:00'),(298,4,'Se cancelo su cita programado para el dia: 2023-07-18 a las :15:53 Por falta de pago','Cita Cancelada por Falta de Pago','2023-07-18','19:53:19'),(299,15,'Estimado Doctor(a): Se cancelo su cita programado para el dia: 2023-07-18 a las :15:53 con el paciente: Sebastian Segura por falta de pago del paciente','Cita Cancelada','2023-07-18','19:53:19'),(300,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','20:03:17'),(301,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','20:15:55'),(302,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','20:32:42'),(304,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','20:58:08'),(305,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 18:00 En la especialiad de Cardiolog√≠a.','Cita reservada con exito','2023-07-18','21:15:03'),(306,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','21:17:48'),(307,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','21:26:45'),(308,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','21:30:03'),(310,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 11:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','21:33:18'),(313,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 11:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','22:01:37'),(314,2,'Usted registro un usuario de TIPO: PACIENTE, con CORREO: alicelo@gmail.com','Usuario creado con exito','2023-07-18','22:10:24'),(315,2,'Usted registro un usuario de TIPO: DOCTOR, con CORREO: carlam@gmail.com','Usuario creado con exito','2023-07-18','22:12:45'),(316,4,'Usted reserv√≥ una cita para 2023-07-21en la siguiente hora: 11:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','22:14:01'),(317,4,'Usted reserv√≥ una cita para 2023-07-20en la siguiente hora: 10:00 En la especialiad de Traumatolog√≠a.','Cita reservada con exito','2023-07-18','22:29:28'),(318,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-20 de: 10:00 a 11:00 A Iniciado','Cita Iniciada','2023-07-18','23:08:22'),(319,4,'Su cita con el Dr(a): Abigail Ramirez programado el dia: 2023-07-21 de: 11:00 a 12:00 A Iniciado','Cita Iniciada','2023-07-18','23:19:18');
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `idpaciente` int NOT NULL AUTO_INCREMENT,
  `direccion` varchar(250) NOT NULL,
  `idestadopaciente` int NOT NULL,
  `idseguro` int NOT NULL,
  `alergias` varchar(500) DEFAULT NULL,
  `consentimientos` int NOT NULL,
  `idusuario` int NOT NULL,
  `condicion_enfermedad` varchar(100) DEFAULT NULL,
  `poliza` varchar(45) DEFAULT NULL,
  `especialidades_pendientes` varchar(500) DEFAULT NULL,
  `especialidades_doctor` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idpaciente`),
  KEY `fk_paciente_estadopaciente1_idx` (`idestadopaciente`),
  KEY `fk_paciente_seguro1_idx` (`idseguro`),
  KEY `fk_paciente_usuario1_idx` (`idusuario`),
  CONSTRAINT `fk_paciente_estadopaciente1` FOREIGN KEY (`idestadopaciente`) REFERENCES `estadopaciente` (`idestadopaciente`),
  CONSTRAINT `fk_paciente_seguro1` FOREIGN KEY (`idseguro`) REFERENCES `seguro` (`idseguro`),
  CONSTRAINT `fk_paciente_usuario1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'jr tomatos 345',3,1,'al glut√©n,polvo,gatos,arena,sal,pimienta,pipip,a los gatos,bjk',1,4,'Taquicardia',NULL,'',''),(2,'jr escorpios 456',6,2,'al pol√©n,al polvo,pelo de perro',1,5,'Fractura en la pierna derecha',NULL,'5','2'),(3,'jr carpios 432',3,3,'al magnesio,al zinc',1,8,'Presi√≥n Alta ',NULL,NULL,NULL),(4,'jr cancer 452',3,4,'al picante,a la sal',1,9,'Contusi√≥n en los brazos',NULL,NULL,NULL),(5,'jr taurus 442',4,5,'al vinagre',1,10,'Huesos rotos en la rodilla',NULL,NULL,NULL),(6,'jr geminis 236',4,6,'al comino',1,11,'Dislocasi√≥n en el cuello',NULL,NULL,NULL),(7,'jr piscis 234',4,7,'al mani',1,12,'Artrosis',NULL,NULL,NULL),(8,'Calle Santa Fe 110',2,7,NULL,0,13,'-',NULL,NULL,NULL),(9,'123',2,7,NULL,0,14,'-',NULL,NULL,NULL),(10,'AV. PIASCIS',2,7,NULL,0,19,'-',NULL,NULL,NULL),(11,'Av. Jupiter 234',2,7,NULL,0,26,'-',NULL,NULL,NULL),(12,'Av. Venus 126 Urb. Naval ',2,7,NULL,0,27,'-',NULL,NULL,NULL),(13,'Av. Jupiter 234',2,7,NULL,0,31,'-',NULL,NULL,NULL),(14,'Av. nose2344',1,7,NULL,0,38,'-',NULL,NULL,NULL),(15,'Av. nose2344',1,7,NULL,0,39,'-',NULL,NULL,NULL),(16,'Av. nose2344',1,7,NULL,0,40,'-',NULL,NULL,NULL),(17,'Av. Jupiter 234',1,7,NULL,0,41,'-',NULL,NULL,NULL),(18,'Av. nose2344',1,7,NULL,0,42,'-',NULL,NULL,NULL),(19,'Av. nose2344',1,7,NULL,0,43,'-',NULL,NULL,NULL),(20,'Av. nose2344',1,7,NULL,0,44,'-',NULL,NULL,NULL),(21,'awddss',1,7,NULL,0,51,'-',NULL,NULL,NULL),(22,'asdfds',1,7,NULL,0,52,'-',NULL,NULL,NULL),(23,'awsddf',1,7,NULL,0,53,'-',NULL,NULL,NULL),(24,'Calle rimac',1,7,NULL,0,55,'-',NULL,NULL,NULL),(25,'qwd',1,7,NULL,0,56,'-',NULL,NULL,NULL),(26,'asdf',1,7,NULL,0,57,'-',NULL,NULL,NULL),(27,'asdfs',1,7,NULL,0,59,'-',NULL,NULL,NULL),(28,'no',1,7,NULL,0,62,'-',NULL,NULL,NULL),(29,'no',1,7,NULL,0,63,'-',NULL,NULL,NULL),(30,'no',1,7,NULL,0,64,'-',NULL,NULL,NULL),(31,'no',2,7,NULL,0,65,'-',NULL,NULL,NULL),(32,'no',2,7,NULL,0,66,'-',NULL,NULL,NULL),(33,'no',1,7,NULL,0,67,'-',NULL,NULL,NULL),(34,'no',2,7,NULL,0,68,'-',NULL,NULL,NULL),(35,'no',1,7,NULL,0,69,'-',NULL,NULL,NULL),(36,'no',2,7,NULL,0,70,'-',NULL,NULL,NULL),(37,'no',1,7,NULL,0,71,'-',NULL,NULL,NULL),(38,'Av la marina 123',1,7,NULL,0,72,'-',NULL,NULL,NULL),(39,'asdfgh',1,7,NULL,0,74,'-',NULL,NULL,NULL),(40,'dgfds',1,7,NULL,0,75,'-',NULL,NULL,NULL),(43,'Av. Saturno 129 Urb. Gardenias',1,7,NULL,0,85,'-',NULL,NULL,NULL);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pacientesporregistrar`
--

DROP TABLE IF EXISTS `pacientesporregistrar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pacientesporregistrar` (
  `idformulariopaciente` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) DEFAULT NULL,
  `dni` varchar(45) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `contrasena` varchar(256) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `genero` varchar(45) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  PRIMARY KEY (`idformulariopaciente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientesporregistrar`
--

LOCK TABLES `pacientesporregistrar` WRITE;
/*!40000 ALTER TABLE `pacientesporregistrar` DISABLE KEYS */;
/*!40000 ALTER TABLE `pacientesporregistrar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetamedica`
--

DROP TABLE IF EXISTS `recetamedica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetamedica` (
  `idrecetamedica` int NOT NULL AUTO_INCREMENT,
  `medicamento` varchar(100) NOT NULL,
  `dosis` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `idcita` int NOT NULL,
  PRIMARY KEY (`idrecetamedica`),
  KEY `fk_recetamedica_cita1_idx` (`idcita`),
  CONSTRAINT `fk_recetamedica_cita1` FOREIGN KEY (`idcita`) REFERENCES `cita` (`idcita`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetamedica`
--

LOCK TABLES `recetamedica` WRITE;
/*!40000 ALTER TABLE `recetamedica` DISABLE KEYS */;
INSERT INTO `recetamedica` VALUES (16,'Sufametoxasol','1 al dia','1 al dia',66),(17,'Panadol','2 tabletas','despues de cada comida 2',77),(26,'ibuprofenoo','prueba','prueba',76),(38,'ibuprofenoo','prueba','fvd',107),(39,'Enterogermina ','3 al dia','no tomar mas de 4 dias',110),(40,'ibuprofenoo','prueba','prueba',110),(45,'fee','fee','fee',110),(49,'Kitadol','1 vez al dia','No tomar por m√°s 5 dias',109),(50,'Paracetamol','2 veces al dia cada 8 horas','50mg maximo de pastilla',109),(51,'Naproxeno','1 al dia','Tomar solo si el dolor no calma',109),(52,'Sufametoxasol','1 al dia','Antibiotico potente',134),(53,'Panadol','2 tabletas','despues de cada comida 2',108),(54,'Panadol','2 tabletas','despues de cada comida',137),(57,'Fruit Solution','2 vasos al dia','solucion de sales de ione',134);
/*!40000 ALTER TABLE `recetamedica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportecita`
--

DROP TABLE IF EXISTS `reportecita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reportecita` (
  `idreportecita` int NOT NULL AUTO_INCREMENT,
  `descripcion` longtext NOT NULL,
  `fecha` date NOT NULL,
  `idcita` int NOT NULL,
  PRIMARY KEY (`idreportecita`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportecita`
--

LOCK TABLES `reportecita` WRITE;
/*!40000 ALTER TABLE `reportecita` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportecita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sede`
--

DROP TABLE IF EXISTS `sede`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sede` (
  `idsede` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `coordenadas` varchar(200) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `foto` longblob,
  PRIMARY KEY (`idsede`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sede`
--

LOCK TABLES `sede` WRITE;
/*!40000 ALTER TABLE `sede` DISABLE KEYS */;
INSERT INTO `sede` VALUES (1,'San Isidro','12.0897, -77.0142','Av. Los Pinos 123',NULL),(2,'Lince','12.0744,-77.0288','Jir√≥n Zorritos 456',NULL),(3,'La Molina','12.0745,-76.9523','Av. Javier Prado Este 789',NULL),(4,'Miraflores','12.1089, -76.9897','Av. Angamos Oeste 10101',NULL),(5,'Cercado de Lima','12.0433, -77.0272','Jir√≥n de la Uni√≥n 100',NULL);
/*!40000 ALTER TABLE `sede` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguro`
--

DROP TABLE IF EXISTS `seguro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguro` (
  `idseguro` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `coaseguro` float NOT NULL,
  `comisiondoctor` float NOT NULL,
  PRIMARY KEY (`idseguro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguro`
--

LOCK TABLES `seguro` WRITE;
/*!40000 ALTER TABLE `seguro` DISABLE KEYS */;
INSERT INTO `seguro` VALUES (1,'Rimac EPS',16,20),(2,'Rimas Seguros',20,30),(3,'Pacifico EPS',0.1,0.6),(4,'Pacifico seguros',0.2,0.7),(5,'Mapfre',0.4,0.5),(6,'Plan Salud',0.1,0.8),(7,'Sin seguro',1,1);
/*!40000 ALTER TABLE `seguro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_datos_llenos`
--

DROP TABLE IF EXISTS `tabla_datos_llenos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_datos_llenos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `datos_llenos_inputs` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=645 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_datos_llenos`
--

LOCK TABLES `tabla_datos_llenos` WRITE;
/*!40000 ALTER TABLE `tabla_datos_llenos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla_datos_llenos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tabla_titulos_inputs`
--

DROP TABLE IF EXISTS `tabla_titulos_inputs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tabla_titulos_inputs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_titulos` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=375 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tabla_titulos_inputs`
--

LOCK TABLES `tabla_titulos_inputs` WRITE;
/*!40000 ALTER TABLE `tabla_titulos_inputs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tabla_titulos_inputs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetas`
--

DROP TABLE IF EXISTS `tarjetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetas` (
  `idtarjetas` int NOT NULL AUTO_INCREMENT,
  `numero` varchar(16) NOT NULL,
  `mes` varchar(10) NOT NULL,
  `anio` varchar(10) NOT NULL,
  `cvv` varchar(45) NOT NULL,
  PRIMARY KEY (`idtarjetas`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` VALUES (1,'4916111111111111','01','23','111'),(2,'4916222222222222','02','23','222'),(3,'4916333333333333','03','25','333'),(4,'4916444444444444','04','23','444'),(5,'4916555555555555','05','24','555'),(6,'4916666666666666','06','25','666'),(7,'4916777777777777','07','23','777'),(8,'4916888888888888','08','24','888'),(9,'4916999999999999','09','25','999'),(10,'4916010101010101','10','23','101'),(11,'4916121212121212','11','24','202'),(12,'4916232323232323','12','25','303'),(13,'4916343434343434','01','23','404'),(14,'4916454545454545','02','24','505'),(15,'4916565656565656','03','25','606'),(16,'4242424242424242','05','28','274');
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocita`
--

DROP TABLE IF EXISTS `tipocita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocita` (
  `idtipocita` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipocita`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocita`
--

LOCK TABLES `tipocita` WRITE;
/*!40000 ALTER TABLE `tipocita` DISABLE KEYS */;
INSERT INTO `tipocita` VALUES (1,'Presencial'),(2,'Virtual');
/*!40000 ALTER TABLE `tipocita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipodeusuario`
--

DROP TABLE IF EXISTS `tipodeusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipodeusuario` (
  `idtipodeusuario` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipodeusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipodeusuario`
--

LOCK TABLES `tipodeusuario` WRITE;
/*!40000 ALTER TABLE `tipodeusuario` DISABLE KEYS */;
INSERT INTO `tipodeusuario` VALUES (1,'superadmin'),(2,'administrador'),(3,'administrativo'),(4,'paciente'),(5,'doctor');
/*!40000 ALTER TABLE `tipodeusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipohoracalendariodoctor`
--

DROP TABLE IF EXISTS `tipohoracalendariodoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipohoracalendariodoctor` (
  `idtipohoracalendariodoctor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipohoracalendariodoctor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipohoracalendariodoctor`
--

LOCK TABLES `tipohoracalendariodoctor` WRITE;
/*!40000 ALTER TABLE `tipohoracalendariodoctor` DISABLE KEYS */;
INSERT INTO `tipohoracalendariodoctor` VALUES (1,'Disponibilidad'),(2,'Refrigerio'),(3,'Cita');
/*!40000 ALTER TABLE `tipohoracalendariodoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `idtipodeusuario` int NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `dni` char(8) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `foto` varchar(1000) DEFAULT NULL,
  `celular` char(9) NOT NULL,
  `edad` int DEFAULT NULL,
  `sede_idsede` int DEFAULT NULL,
  `especialidad_idespecialidad` int DEFAULT NULL,
  `estado_habilitado` tinyint NOT NULL,
  `sueldo` double DEFAULT NULL,
  `fechanacimiento` date DEFAULT NULL,
  `formaregistro` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario_tipodeusuario1_idx` (`idtipodeusuario`),
  KEY `fk_usuario_sede1_idx` (`sede_idsede`),
  KEY `fk_usuario_especialidad1_idx` (`especialidad_idespecialidad`),
  CONSTRAINT `fk_usuario_especialidad1` FOREIGN KEY (`especialidad_idespecialidad`) REFERENCES `especialidad` (`idespecialidad`),
  CONSTRAINT `fk_usuario_sede1` FOREIGN KEY (`sede_idsede`) REFERENCES `sede` (`idsede`),
  CONSTRAINT `fk_usuario_tipodeusuario1` FOREIGN KEY (`idtipodeusuario`) REFERENCES `tipodeusuario` (`idtipodeusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,1,'Alexia','Jauregui','72299800','a20192270@pucp.edu.pe','$2a$12$svRS95K9NvBSTd06S0wxOuD92A6iPI9gagjVZzelIo7ugqGzugrgS','Femenino','https://lafe.blob.core.windows.net/clinicalafe/perfilSuper180723170518.jpg','940128189',21,NULL,NULL,1,NULL,'2001-12-22',NULL),(2,2,'Angie','Alejandro','32412345','a20191792@pucp.edu.pe','$2a$12$Am6Pq/1hIIrzgMTI.oPVFu4T/fVP5iRIH9vs5s3Cm0Za.4f03qPhi','Femenino','https://lafe.blob.core.windows.net/clinicalafe/perfilAdministrador2.180723140240.jpg','942587124',22,1,NULL,1,5400,'2001-07-15',''),(3,3,'Adrian','Lopez','35534524','adrian.lopez@pucp.edu.pe','$2a$10$EhBuWdCdEdsuWmfqhRyDlurtoo7H99L1h732yH4tzpJa2gNOc0fam','Masculino','https://lafe.blob.core.windows.net/clinicalafe/perfilAdministrativo3.180723135146.jpg','942324455',23,2,2,1,3800,'2000-07-16',NULL),(4,4,'Sebastian','Segur','32434543','a20203368@pucp.edu.pe','$2a$10$HDScwNR1G/DBS5cuFLsMkuXuF8HbF/IrQHDO1QGcGf89/gvQUtNre','Masculino','https://lafe.blob.core.windows.net/clinicalafe/paciente4.jpg','942534461',21,1,NULL,1,NULL,'2001-07-21','Auto Registro'),(5,4,'Ana','Alejandro','24523432','alejandro.as@pucp.edu.pe','$2a$04$H217j20nvJtUgPdKlziIZO5TfmRIS0F7w49wJ8TDEWNCJ6tqZ7/mq','Femenino','https://lafe.blob.core.windows.net/clinicalafe/paciente1807231311125.png','942533243',19,2,NULL,1,NULL,'2003-07-28','Invitado por Correo'),(6,5,'Christian','Gonzales','70298682','calledchristian79@gmail.com','$2a$04$oXCgadUHKf/U8.LS0uvP5u9.9Vl8ShCh9SN/4J40VWEtEfsqCo1IC','Masculino','https://lafe.blob.core.windows.net/clinicalafe/doctor6.jpg','942523242',20,1,1,1,6500,'2002-08-01',''),(7,5,'Abigail','Ramirez','34542412','abigail.ramirez@pucp.edu.pe','$2a$10$l.gpm5USNtRsajQ3NnWf5uL9ysHRItDG1FiH00K5udBEeFGBAcYRK','Femenino','https://lafe.blob.core.windows.net/clinicalafe/doctor7.jpg','942523241',21,2,2,1,5800,'2001-08-01',''),(8,4,'Raul','Rodriguez ','32443312','raul@gmail.com','$2a$04$C.ScIZevvLpCKm.vAChv4e7htekDuGT9oR39SGOkflDr2Uyhs10OO','Masculino',NULL,'923423200',17,1,NULL,1,NULL,'2005-07-31',''),(9,4,'Fernando','Terri','43543312','fernando@gmail.com','$2a$04$jF8UudH4UXVwTBUwnLThNuoIXpTIKXg2kEcrr.AF9gEildE2IA20e','Masculino',NULL,'926523241',20,2,NULL,1,NULL,'2002-08-01',NULL),(10,4,'Mike','Towers','24543254','mike@gmail.com','$2a$04$NiMu34grD3ZlQJzuDCc7heOXpJwF/yCBRG9I7IFiJIBInacrOt9gK','Masculino',NULL,'926523242',19,2,NULL,0,NULL,'2003-07-29',''),(11,4,'Luis','Fern√°ndez','23434621','luis@gmail.com','$2a$04$XFVUU4IWGkFqqfBrqIsqwumFQXtU192asjan1gemVlzvaVsH9LkJG','Masculino',NULL,'926523311',16,2,NULL,1,NULL,'2006-07-28',''),(12,4,'Hector','Lavoe','23453412','hector@gmail.com','$2a$04$V1lDUcP5wtPLhFgf0J720.lwxMfVlOmTn5Ddor7zmvfJfOR7yuZV6','Masculino',NULL,'925433311',9,2,NULL,1,NULL,'2013-07-23',NULL),(13,4,'Rodrigo','Adauto','71624694','adauto.rodrigo@pucp.pe','$2a$10$QcJo7JNbqVyKFJ.GaqGl/OoBIZOJquPMDvaskMrWlcj9xGQqPYRMq','Masculino',NULL,'923213231',21,5,NULL,1,NULL,'2001-12-22',NULL),(14,4,'Rodrigo','adauto','56789987','asdasd@pucp.pe','$2a$10$IsJcZDZYAlasTr3jCsbk3utwLbKXnpIeAQbYIiiQw/ubUq97Ln67W','Masculino',NULL,'987654321',28,1,NULL,1,NULL,'1995-07-29',NULL),(15,5,'Sebastian','Segura Abanto','72678795','sebastian.segura1310@gmail.com','$2a$10$guuwR9SutdCZtrEJL6TU0.QZF7huW/sFNEeiVwJcu2tDUHmAosVw.','Masculino','https://lafe.blob.core.windows.net/clinicalafe/doctor15.jpg','920205458',42,1,12,1,NULL,'1980-08-29',NULL),(16,5,'Sofia','Alejandro','71407886','as.alejandror@gmail.com','$2a$10$zKNGab4w1MkrGwkFiDFfLOaBolCJnXzrgkHcmozxNi4WiX//Efkyu','Masculino','https://lafe.blob.core.windows.net/clinicalafe/doctor16.jpg','987654320',54,1,4,1,5000,'1968-09-29',NULL),(17,2,'PEPE','POLO','72628748','mateof.ramirezguia@gmail.com','$2a$10$wjMiApfiLG9Kot9hdLB1iudk3uwbsVsL7HTwofisZ45Zq37sPCehW','Masculino',NULL,'978744896',33,2,NULL,1,NULL,'1990-07-10',NULL),(19,4,'Ana','Lira','78547896','abigail.ramirezguia@gmail.com','$2a$04$SXyo/Xcqv8V38hZyq/YYXufCY0Ietzmm3Pi2.zvxWHALyknNo7yE.','Femenino',NULL,'920205412',33,2,NULL,1,NULL,'1990-07-09',NULL),(21,2,'Angie','Milla','34567277','andream@pucp.pe','$2a$10$WRc.sFDNPicCqMJgZwrG2u6H7v.h0myzknRYb5sKprycyQ0jRpIXi','Masculino',NULL,'986734999',66,3,NULL,1,NULL,'1957-06-17',NULL),(26,4,'Marie','Mendoza Gomez','34567444','no@gmail.com','$2a$10$sg8CJMJwI1h1dLaS1T8PE.lkJSe3uGzhrjz.VQCuiehspWFi/kwZu','F',NULL,'999924933',31,1,NULL,1,NULL,NULL,NULL),(27,4,'Carla','Minatu','70862222','es@gmail.com','$2a$10$uc3rPIgsbXtPx8VBXZ4fY.zclAHdqHIvGq39G6.fkZub3VgzQnwba','F',NULL,'999924244',31,1,NULL,1,NULL,NULL,NULL),(28,5,'shirley','Loayza','34007246','mmm@gmail.com','$12$svRS95K9NvBSTd06S0wxOuD92A6iPI9gagjVZzelIo7ugqGzugrgS','F','https://lafe.blob.core.windows.net/clinicalafe/doctor28.jpg','999924000',41,1,9,1,NULL,NULL,NULL),(31,4,'Carla','Minatuaa','34567555','carlaaaa@gmail.com','$2a$10$TjcT2UxWuNUk1b2W6TfJjOe8w/yVSpPabi2C4OdIRyJHlsmRsmkNW','F',NULL,'986734555',45,1,NULL,1,NULL,'1978-04-23',NULL),(32,5,'Roberto','Loayza','38888246','robert@pucp.pe','$2a$10$5CQjPNmdBW8ldAbPA2Noy.IvSzU2ccl.z4fnVxuAcRny9yY9.jUAG','M','https://lafe.blob.core.windows.net/clinicalafe/doctor32.jpg','988210426',33,1,15,1,NULL,'1990-03-25',NULL),(38,4,'Diego','Gutierrez','76767555','diego@gmail.com','$2a$10$SREPw/EFhuKwS/Sx1Uxxk.tCsOrgNLFitxE3p/BduDRO8oM9KR3gm','Masculino',NULL,'986666654',43,2,NULL,1,NULL,'1980-03-12',NULL),(39,4,'Luis','Lopez','34447246','luisl@gmail.com','$2a$12$2IlCcoXDwo883GHbcvafKuLUwkQhARk4eAIKy84evJfQyAU6f6tTK','Masculino',NULL,'997210006',53,1,NULL,1,NULL,'1970-01-12',NULL),(40,4,'Milagros','Villa','76545634','mili@gmail.com','$2a$10$F9ogLEI6Jx3fp/UZPgZnqOrpiSlj9uKUjMVqI0bxKCO9TdVg/Pbxm','Femenino',NULL,'989993332',43,3,NULL,1,NULL,'1980-03-23',NULL),(41,4,'Maritza','Loayza','23423421','mari@gmail.com','$2a$10$pFguKf3UPRMmIhGVMtIt9O8u9qmxlFIubluk00irDAu0yYHSyjrme','Femenino',NULL,'907210426',43,2,NULL,1,NULL,'1980-02-01',NULL),(42,4,'Carla','Alejandro','34566666','carl@gmail.com','$2a$10$RAbOGUxC8ZOPHzBWKpZh.ORDcq.PUZpD7oDazrU44RcLijxmXMRYq','Femenino',NULL,'900767766',43,2,NULL,1,NULL,'1980-06-22',NULL),(43,4,'Alicie','Miranda','23421211','alis@gmail.com','$2a$10$5px/hFhHAnMmQskVgV3SBuNouO9yVCMzBsodzW8XldakzrghM0MYe','Femenino',NULL,'977342234',42,2,NULL,1,NULL,'1980-12-11',NULL),(44,4,'Lidia','Marcos','23421210','lidia@gmail.com','$2a$10$UgUawksx5Aa17m.dbyH8CeH5nd2dYWEdNxEOgyh68rWr36G9GWYXO','Femenino',NULL,'977342333',32,2,NULL,1,NULL,'1990-12-11',NULL),(45,3,'Jose','Diaz','74589632','sebas_segura.2002@hotmail.com','$2a$10$16tC.F07iUPkkToX6uTdo.oPtZtgSBoFKKjVXmTt8bVJqwvaAQ1fW','Masculino',NULL,'920205487',32,1,12,1,NULL,'1990-10-13',NULL),(46,3,'Carla','Milla','26656123','car@pucp.edu.pe','$2a$10$gA0xCHN.V0VXvsg1Cx.eY.SgRoYWMN4RhdLoWF7WQfZASRX13CPsO','Femenino',NULL,'996660426',43,3,15,1,NULL,'1980-01-12',NULL),(47,3,'Angie','Lacherre','34567777','angi@gmail.com','$2a$10$rQMpZog/uMriZAjW4DsR2.AvrN72i.YG7cJojwE7B/oknCUiNa4Aa','Femenino',NULL,'992233445',43,1,11,1,NULL,'1980-03-01',NULL),(49,2,'shirley','Milla','78887667','shiyy@gmail.com','$2a$10$OcHxZ1xufU3uk000GbXXPOH90mkVaVqYsFZp.yuqHQJoNQuCycHYS','Femenino',NULL,'955524925',43,4,18,1,NULL,'1980-02-01',NULL),(50,3,'Carla','Loayza','18866435','car@gmail.com','$2a$10$kBnjp7G4SL5h0QKAHeIe7OzPJeGXUImjqairG1MPEzM3e7mLwgtcW','Femenino',NULL,'977765525',44,2,1,1,NULL,'1979-02-01',NULL),(51,4,'Liz','Mer','12343334','lis@gmail.com','$2a$10$Rou5VNeLu2eNVrIpHLQgHuiFkk83iZdkrQjJYLXhSKpjpX5T0Kq6C','Femenino',NULL,'989866655',36,2,NULL,1,NULL,'1987-02-01',NULL),(52,4,'Prueba','Prueba','34443323','prueba@pucp.edu.pe','$2a$10$shFOXz1B3rqgAkiSSp1L7eRXifGUhD31Mzz6UKvVi6idsEPa1yfQe','Femenino',NULL,'989000077',43,3,NULL,1,NULL,'1980-02-01',''),(53,4,'Nueva','Nueva','34422233','nueva@pucp.edu.pe','$2a$10$vrWfyOoWqLBzgO/5mwa29OsOE040ZLPgcrj.danFQ.dJ/CArJ7zaG','F',NULL,'944411223',53,1,NULL,1,NULL,'1970-02-01',''),(54,5,'SSS','Err','12111333','err@gmail.com','$2a$10$nkdDT7wrUd8u7zopYTE4FehEkvP4bhgE91P9p/iRf9EH4P1YlcDw6','Masculino','https://lafe.blob.core.windows.net/clinicalafe/doctor54.jpg','908978909',43,1,1,1,NULL,'1980-02-01',NULL),(55,4,'Manuel','Marr√≥r Ruiz','55344901','Manuel.mar@outlook.es','$2a$10$gNvogrXKpX1SJ6vOzUZkjOkBMPE/C47QqAs0yUPzekTMgo41/AZqK','Masculino',NULL,'940128456',0,1,NULL,1,NULL,'2023-09-12',NULL),(56,4,'M√≠a','Car','78988787','mia@gmail.com','$2a$10$VduloS.ekaXuRXerR7fhw.ykxRqbQAvmZrIaNvW/xW5rzk2iqkGvu','Femenino',NULL,'989787678',45,2,NULL,1,NULL,'1978-02-01','Auto Registro'),(57,4,'Lorena','Vela','22221345','lorenda@gmail.com','$2a$10$tAnjpHKaUnVF4EG0TQ.c8OkN8Y6H8AsO2WZo/kIyp4lREh8e3lvE2','Femenino',NULL,'998777898',33,1,NULL,1,NULL,'1990-01-02','Auto Registro'),(59,4,'Losss','Yapp','67674567','assdfggfd@gmail.com','$2a$10$R9I0Iiu3quGpjvjl.lGYcuJJdyFXZraIg0bg5uk5.Gn4EG5rixa.O','Femenino',NULL,'900887784',NULL,2,NULL,1,NULL,NULL,'Registrado por Correo'),(62,4,'Lio','Pia','12377789','asdfkk@gmail.com','$2a$10$/vS1ND34YzoDkFUIOgPjbus1cw7obPVoQqseCFCogZE7QbaMYxKAG','Masculino',NULL,'988779999',NULL,3,NULL,1,NULL,NULL,'Invitado por Correo'),(63,4,'sdfg','erte','34566688','ghjhg@gmail.com','$2a$10$WgeUqNJfg/GZYTBWmEkxDOpdE4R6czVMTZm/dhoqRAO7mTqQ1d4Sy','Femenino',NULL,'900887789',NULL,2,NULL,1,NULL,NULL,'Invitado por Correo'),(64,4,'sdfg','erte','34566689','ghjhl@gmail.com','$2a$10$r1R1Ci6Uo1G7yaC/GzavNeXouyh.wCFZethzWGO.JDfBVhg5wjgCO','Femenino',NULL,'900887780',NULL,2,NULL,1,NULL,NULL,'Invitado por Correo'),(65,4,'Nom','Apellido','44433566','jku@gmail.com','$2a$10$eVF6EE.FF0xN164sLplayex5wG5Suu8LlzyFIpeEF.meOAZGdqPkq','Masculino',NULL,'909090888',NULL,1,NULL,1,NULL,NULL,'Invitado por Correo'),(66,4,'Nom','Apell','44433596','jkul@gmail.com','$2a$10$EXJFseMbYaKgGe/DkL49puVewqPeYlOmM5rjwznwtK8Hj5gasE452','Masculino',NULL,'989090888',NULL,1,NULL,1,NULL,NULL,'Invitado por Correo'),(67,4,'ass','sdfs','76856789','jkuu@gmail.com','$2a$10$STjchBoHQvvUJGik/QnoJ.5pSWzkM7nNVW8etYxe18xsB7RhhGnte','Masculino',NULL,'908880871',NULL,3,NULL,1,NULL,NULL,'Invitado por Correo'),(68,4,'Hola','Loe','23456789','alog@gmail.com','$2a$10$yDQnb8kM1ndbpE9oRtIG6OmNQYxCeHyCi3kMprGovOF4oLejfqDVe','Femenino',NULL,'989567676',NULL,1,NULL,1,NULL,NULL,'Invitado por Correo'),(69,4,'Hola','Loe','20056789','alogll@gmail.com','$2a$10$RXXV1tcxuV0ZeNNUkZS13unhAhrUGMZ.NKT9A1gy4yyOsPD14z8Uy','Femenino',NULL,'909567675',NULL,2,NULL,1,NULL,NULL,'Invitado por Correo'),(70,4,'Leticia ','Miranda','78845666','leticia@pucp.edu.pe','$2a$10$/pfyNUqImwTD11J/TgEd8.K1.T6UIoRCBa38ZHY1YCiOTDl.fhnf.','Femenino',NULL,'908765050',NULL,1,NULL,1,NULL,NULL,'Invitado por Correo'),(71,4,'Diego','Lara','19985678','laraaa@gmail.com','$2a$10$suTH2.9idwJ3Gnm3FcFmKuhMT/TSUtLVNGVZc6yxoY7/UYZuZ05wy','Masculino',NULL,'923444789',NULL,1,NULL,1,NULL,NULL,'Invitado por Correo'),(72,4,'Pedro','Leon','71455878','adrian.lopez@culqi.com','$2a$10$jrVyLKzbD7U5CU1jcUuILeqUIeTZqX15pYRH7whwlfiFqoEPnxIh2','Masculino',NULL,'987456514',20,4,NULL,1,NULL,'2003-07-17','Auto Registro'),(74,4,'Lor','Pel','76666555','lory@gmail.com','$2a$10$pWNRMfWD8WxWz9oPImgjaO.t36rHBci3vUjdEcBoK2eIDA8wm.6ZO','Masculino',NULL,'900444444',43,1,NULL,1,NULL,'1980-02-01',NULL),(75,4,'Aleo','poer','78999098','angieealejandro@gmail.com','$2a$10$2HqqtmFkxquuCHTmsOmr9OmWXTUfP4HjZKBUd0FevyRPFVHmCpX6O','Masculino',NULL,'983333333',43,1,NULL,1,NULL,'1980-01-03',NULL),(85,4,'Alicia Milagros','Loayza Suarez','56787246','alicelo@gmail.com','$2a$10$Jsr3y1scVpKTiapNaSdH9.sveaaKF8XaWWSia3JcCfeJvpbOWIykW','Femenino',NULL,'923447890',33,1,NULL,1,NULL,'1990-01-31',NULL),(86,5,'Carla Lorena','Perez Mendez','78934567','carlam@gmail.com','$2a$10$8wJdrp6pE23Wcu0ZB.TgYeNVYG675JnsBGOmHCccPO8Ve2HWhC3Nm','Femenino',NULL,'908945643',30,1,7,1,NULL,'1993-03-02',NULL),(87,2,'Camila Liz','Bedolla Lara','78656545','camil@gmail.com','$2a$10$FmWsp.SrU9RJHuSkFXtiB.zPlota0W3ivw3Fu4uTKKPbE74m0MLYm','Femenino',NULL,'907777777',33,5,18,1,NULL,'1990-01-31',NULL),(88,3,'Jorge Miguel','Cardenas Vela','34567249','jorge@gmail.com','$2a$10$IiNQogI5P3cKAzswizRyd.ym/EIcN2IlAB7vG1KnFejiJdbEaBwSC','Femenino',NULL,'999924920',33,1,9,1,NULL,'1990-01-31',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uxui`
--

DROP TABLE IF EXISTS `uxui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uxui` (
  `idUX/UI` int NOT NULL AUTO_INCREMENT,
  `modo` varchar(45) DEFAULT NULL,
  `codigocolor` varchar(45) DEFAULT NULL,
  `notificaciones` int DEFAULT NULL,
  `imagendefondo` text,
  `tipodeusuario_idtipodeusuario` int DEFAULT NULL,
  `zonahoraria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUX/UI`),
  KEY `fk_ux/ui_tipodeusuario1_idx` (`tipodeusuario_idtipodeusuario`),
  CONSTRAINT `fk_ux/ui_tipodeusuario1` FOREIGN KEY (`tipodeusuario_idtipodeusuario`) REFERENCES `tipodeusuario` (`idtipodeusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uxui`
--

LOCK TABLES `uxui` WRITE;
/*!40000 ALTER TABLE `uxui` DISABLE KEYS */;
INSERT INTO `uxui` VALUES (1,'0','#f00a0a',0,NULL,3,NULL),(2,'1','#ed832c',0,NULL,1,NULL),(3,'0','#198f21',0,NULL,2,NULL),(4,'0','#f2da40',0,NULL,4,NULL),(6,'0','#2b7be3',0,NULL,5,NULL);
/*!40000 ALTER TABLE `uxui` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-18 18:38:00
