-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              8.0.35 - MySQL Community Server - GPL
-- S.O. server:                  Win64
-- HeidiSQL Versione:            12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dump della struttura del database gestionalefinale
DROP DATABASE IF EXISTS `gestionalefinale`;
CREATE DATABASE IF NOT EXISTS `gestionalefinale` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestionalefinale`;

-- Dump della struttura di tabella gestionalefinale.candidate
DROP TABLE IF EXISTS `candidate`;
CREATE TABLE IF NOT EXISTS `candidate` (
  `idCandidate` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `birthPlace` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  PRIMARY KEY (`idCandidate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.candidate: ~4 rows (circa)
DELETE FROM `candidate`;
INSERT INTO `candidate` (`idCandidate`, `name`, `surname`, `birthday`, `birthPlace`, `address`, `city`, `email`, `phone`) VALUES
	(1, 'John', 'Warren', '1997-11-13', 'New York', 'Via Appia Nuova', 'Roma', 'johnwarren@gmail.com', 3334567),
	(2, 'Claudia', 'Bianchi', '1990-04-21', 'Verona', 'Corso Porta Borsari', 'Verona', 'claudiabianchi@libero.it', 3312345),
	(3, 'Andrea', 'Russo', '1999-01-30', 'Bologna', 'Piazza Niccolò Acciaioli', 'Firenze', 'russoandrea@gmaiil.com', 3405678),
	(4, 'Roberto', 'Verdi', '1987-05-10', 'Venezia', 'Via Adige', 'Milano', 'ing.verdiroberto@gmail.com', 33178919);

-- Dump della struttura di tabella gestionalefinale.candidate_commercial_data
DROP TABLE IF EXISTS `candidate_commercial_data`;
CREATE TABLE IF NOT EXISTS `candidate_commercial_data` (
  `idCandidateCommercial` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `currentRal` int DEFAULT NULL,
  `proposedRal` int DEFAULT NULL,
  `monthRefund` int DEFAULT NULL,
  `businessCost` int DEFAULT NULL,
  `subsidyFlag` tinyint DEFAULT NULL,
  `notes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idCandidateCommercial`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  CONSTRAINT `FK1_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.candidate_commercial_data: ~4 rows (circa)
DELETE FROM `candidate_commercial_data`;
INSERT INTO `candidate_commercial_data` (`idCandidateCommercial`, `idCandidate`, `currentRal`, `proposedRal`, `monthRefund`, `businessCost`, `subsidyFlag`, `notes`) VALUES
	(1, 2, 25000, 27000, 250, 1000, 50, 'nessuna'),
	(2, 1, 17000, 20000, 100, 300, 20, 'junior'),
	(3, 3, 15000, 18000, 50, 100, 10, 'beginner'),
	(4, 4, 38000, 40000, 500, 2000, 100, 'senior');

-- Dump della struttura di tabella gestionalefinale.candidate_skill
DROP TABLE IF EXISTS `candidate_skill`;
CREATE TABLE IF NOT EXISTS `candidate_skill` (
  `idCandidateSkill` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `idSkill` int DEFAULT NULL,
  PRIMARY KEY (`idCandidateSkill`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  KEY `id_skill` (`idSkill`) USING BTREE,
  CONSTRAINT `FK2_idSkill` FOREIGN KEY (`idSkill`) REFERENCES `skill` (`idSkill`),
  CONSTRAINT `FK3_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.candidate_skill: ~7 rows (circa)
DELETE FROM `candidate_skill`;
INSERT INTO `candidate_skill` (`idCandidateSkill`, `idCandidate`, `idSkill`) VALUES
	(1, 4, 1),
	(2, 4, 4),
	(3, 4, 2),
	(4, 3, 3),
	(5, 2, 4),
	(6, 2, 5),
	(7, 1, 3);

-- Dump della struttura di tabella gestionalefinale.company_client
DROP TABLE IF EXISTS `company_client`;
CREATE TABLE IF NOT EXISTS `company_client` (
  `idCompanyClient` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idCompanyClient`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.company_client: ~5 rows (circa)
DELETE FROM `company_client`;
INSERT INTO `company_client` (`idCompanyClient`, `name`, `address`, `city`) VALUES
	(1, 'Accenture', 'Via Giovanni Porzio', 'Napoli'),
	(2, 'Almaviva', 'Viale Regione Siciliana', 'Palermo'),
	(3, 'Deloitte', 'Via Enrico Fermi 11/A', 'Verona'),
	(4, 'EY', 'Via Oberdan 40U', 'Bari'),
	(5, 'Links', 'Via Morgagni 30/E', 'Roma');

-- Dump della struttura di tabella gestionalefinale.contract_type
DROP TABLE IF EXISTS `contract_type`;
CREATE TABLE IF NOT EXISTS `contract_type` (
  `idContractType` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idContractType`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.contract_type: ~4 rows (circa)
DELETE FROM `contract_type`;
INSERT INTO `contract_type` (`idContractType`, `title`, `description`) VALUES
	(1, 'indeterminato', 'full time indeterminato'),
	(2, 'stage', 'semestrale retribuito con posibilità di proroga'),
	(3, 'cococo', 'consulenza'),
	(4, 'determinato', 'quinquennale full time');

-- Dump della struttura di tabella gestionalefinale.education
DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `idEducation` int NOT NULL AUTO_INCREMENT,
  `idEducationDegreeType` int DEFAULT NULL,
  `schoolName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `place` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `finalGrade` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `idCandidate` int DEFAULT NULL,
  PRIMARY KEY (`idEducation`) USING BTREE,
  KEY `id_education_degree_type` (`idEducationDegreeType`,`idCandidate`) USING BTREE,
  KEY `FK14_` (`idCandidate`),
  CONSTRAINT `FK14_` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`),
  CONSTRAINT `FK4_idEducationDegreeType` FOREIGN KEY (`idEducationDegreeType`) REFERENCES `education_degree_type` (`idEducationDegreeType`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.education: ~5 rows (circa)
DELETE FROM `education`;
INSERT INTO `education` (`idEducation`, `idEducationDegreeType`, `schoolName`, `place`, `date`, `finalGrade`, `idCandidate`) VALUES
	(1, 1, 'Università degli Studi di Roma', 'Roma', '2016-03-11', '100-110', 2),
	(2, 5, 'UniCusano', 'Roma', '2018-11-23', '110-110', 2),
	(3, 1, 'Università degli Studi di Roma', 'Roma', '2020-02-11', '110-110', 1),
	(4, 2, 'Università degli Studi di Venezia', 'Venezia', '2012-07-08', '105-110', 4),
	(5, 3, 'Generation Italy', 'da remoto', '2024-02-24', '110-110', 3);

-- Dump della struttura di tabella gestionalefinale.education_degree_type
DROP TABLE IF EXISTS `education_degree_type`;
CREATE TABLE IF NOT EXISTS `education_degree_type` (
  `idEducationDegreeType` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idEducationDegreeType`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.education_degree_type: ~7 rows (circa)
DELETE FROM `education_degree_type`;
INSERT INTO `education_degree_type` (`idEducationDegreeType`, `description`) VALUES
	(1, 'laurea in Giurisprudenza'),
	(2, 'laurea in Informatica'),
	(3, 'corso Generation Italy'),
	(4, 'laurea in Psicologia'),
	(5, 'master in HR '),
	(6, 'scuola di specializzazione IT'),
	(7, 'diploma scuola media');

-- Dump della struttura di tabella gestionalefinale.employee
DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `idEmployee` int NOT NULL AUTO_INCREMENT,
  `idEmployeeType` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEmployee`) USING BTREE,
  KEY `id_employee` (`idEmployeeType`) USING BTREE,
  CONSTRAINT `FK5_idEmployeeType` FOREIGN KEY (`idEmployeeType`) REFERENCES `employee_type` (`idEmployeeType`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.employee: ~5 rows (circa)
DELETE FROM `employee`;
INSERT INTO `employee` (`idEmployee`, `idEmployeeType`, `name`, `surname`, `email`, `password`, `username`) VALUES
	(1, 3, 'Sofia', 'De Fano', 'sofiadefano@hiring.it', 'sofia892', 'SofiaDeFano'),
	(2, 1, 'Marco', 'Legrottaglie', 'marcolegrottaglie@hiring.it', 'mark567', 'MarkLegro'),
	(3, 2, 'Angela', 'De Benedictis', 'angeladebenedictis@hiring.it', 'angiedebbie', 'Angie'),
	(4, 5, 'Francesco', 'Papadia', 'francescopapadia@lex.it', 'avvpapadia', 'Francesco.Papadia'),
	(5, 4, 'Claudio', 'Genchi', 'claudiogenchi@itfield.it', '1234567', 'Ing.Genchi');

-- Dump della struttura di tabella gestionalefinale.employee_type
DROP TABLE IF EXISTS `employee_type`;
CREATE TABLE IF NOT EXISTS `employee_type` (
  `idEmployeeType` int NOT NULL AUTO_INCREMENT,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idEmployeeType`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.employee_type: ~5 rows (circa)
DELETE FROM `employee_type`;
INSERT INTO `employee_type` (`idEmployeeType`, `description`) VALUES
	(1, 'head hunter'),
	(2, 'hr specialist'),
	(3, 'junior hr'),
	(4, 'it specialist'),
	(5, 'legal specialist');

-- Dump della struttura di tabella gestionalefinale.job_interview
DROP TABLE IF EXISTS `job_interview`;
CREATE TABLE IF NOT EXISTS `job_interview` (
  `idJobInterview` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `idStateJobInterview` int DEFAULT NULL,
  `outcome` int DEFAULT NULL,
  `notes` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `idEmployee` int DEFAULT NULL,
  PRIMARY KEY (`idJobInterview`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  KEY `id_employee` (`idEmployee`) USING BTREE,
  KEY `idStateJobInterview` (`idStateJobInterview`),
  CONSTRAINT `FK6_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`),
  CONSTRAINT `FK7_idStateJobInterview` FOREIGN KEY (`idStateJobInterview`) REFERENCES `state_job_interview` (`idStateJobInterview`),
  CONSTRAINT `FK8_idEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idEmployee`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.job_interview: ~8 rows (circa)
DELETE FROM `job_interview`;
INSERT INTO `job_interview` (`idJobInterview`, `idCandidate`, `date`, `idStateJobInterview`, `outcome`, `notes`, `idEmployee`) VALUES
	(1, 1, '2024-03-03', 1, 27, 'proseguire', 1),
	(2, 2, '2024-01-20', 1, 26, 'proseguire', 4),
	(3, 2, '2024-02-20', 2, 26, 'proseguire', 4),
	(4, 2, '2024-03-01', 3, 28, 'idoneo', 4),
	(5, 4, '2024-02-13', 1, 30, 'proseguire', 5),
	(6, 4, '2024-02-28', 4, 30, 'proseguire', 5),
	(7, 4, '2024-05-05', 4, 0, 'in attesa', 5),
	(8, 3, '2024-01-07', 1, 17, 'non idoneo', 2);

-- Dump della struttura di tabella gestionalefinale.job_offer
DROP TABLE IF EXISTS `job_offer`;
CREATE TABLE IF NOT EXISTS `job_offer` (
  `idJobOffer` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `idCompanyClient` int DEFAULT NULL,
  `minRal` int DEFAULT NULL,
  `maxRal` int DEFAULT NULL,
  `idContractType` int DEFAULT NULL,
  PRIMARY KEY (`idJobOffer`) USING BTREE,
  KEY `id_company_client` (`idCompanyClient`) USING BTREE,
  KEY `id_contract_type` (`idContractType`) USING BTREE,
  CONSTRAINT `FK10_idContractType` FOREIGN KEY (`idContractType`) REFERENCES `contract_type` (`idContractType`),
  CONSTRAINT `FK9_idCompanyClient` FOREIGN KEY (`idCompanyClient`) REFERENCES `company_client` (`idCompanyClient`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.job_offer: ~5 rows (circa)
DELETE FROM `job_offer`;
INSERT INTO `job_offer` (`idJobOffer`, `title`, `description`, `startDate`, `endDate`, `idCompanyClient`, `minRal`, `maxRal`, `idContractType`) VALUES
	(1, 'consulente legale', 'esperto in diritto commerciale', '2024-01-20', '2024-03-31', 3, 30000, 35000, 3),
	(2, 'sviluppatore senior', 'sviluppatore java esperienza +10 anni', '2024-01-08', '2024-09-01', 4, 30000, 35000, 1),
	(3, 'sviluppatore junior', 'sviluppatore php neolaureato', '2024-02-01', '2024-03-01', 5, 17000, 20000, 2),
	(4, 'segretario', 'addetto accoglienza e servizio clienti', '2024-01-11', '2024-04-30', 2, 20000, 25000, 4),
	(5, 'senior hr', 'organizzazione corsi di aggiornamento', '2024-01-08', '2024-03-11', 1, 25000, 30000, 1);

-- Dump della struttura di tabella gestionalefinale.job_offer_skill
DROP TABLE IF EXISTS `job_offer_skill`;
CREATE TABLE IF NOT EXISTS `job_offer_skill` (
  `idJobOfferSkill` int NOT NULL AUTO_INCREMENT,
  `idJobOffer` int DEFAULT NULL,
  `idSkill` int DEFAULT NULL,
  PRIMARY KEY (`idJobOfferSkill`) USING BTREE,
  KEY `id_job_offer` (`idJobOffer`) USING BTREE,
  KEY `id_skill` (`idSkill`) USING BTREE,
  CONSTRAINT `FK11_idJobOffer` FOREIGN KEY (`idJobOffer`) REFERENCES `job_offer` (`idJobOffer`),
  CONSTRAINT `FK12_idSkill` FOREIGN KEY (`idSkill`) REFERENCES `skill` (`idSkill`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.job_offer_skill: ~10 rows (circa)
DELETE FROM `job_offer_skill`;
INSERT INTO `job_offer_skill` (`idJobOfferSkill`, `idJobOffer`, `idSkill`) VALUES
	(1, 1, 4),
	(2, 1, 1),
	(3, 4, 5),
	(5, 4, 3),
	(6, 3, 5),
	(7, 5, 1),
	(8, 5, 5),
	(9, 2, 2),
	(10, 2, 1),
	(11, 2, 4);

-- Dump della struttura di tabella gestionalefinale.skill
DROP TABLE IF EXISTS `skill`;
CREATE TABLE IF NOT EXISTS `skill` (
  `idSkill` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idSkill`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.skill: ~5 rows (circa)
DELETE FROM `skill`;
INSERT INTO `skill` (`idSkill`, `title`, `description`) VALUES
	(1, 'problem solving', 'gestione degli imprevisti'),
	(2, 'agile', 'conoscenza framework agile'),
	(3, 'flessibilità oraria', 'disponibilità a turni di lavoro'),
	(4, 'stress', 'gestione grandi carichi di lavoro'),
	(5, 'adattabilità', 'adattamento ad un ambiente dinamico');

-- Dump della struttura di tabella gestionalefinale.state_job_interview
DROP TABLE IF EXISTS `state_job_interview`;
CREATE TABLE IF NOT EXISTS `state_job_interview` (
  `idStateJobInterview` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idStateJobInterview`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.state_job_interview: ~4 rows (circa)
DELETE FROM `state_job_interview`;
INSERT INTO `state_job_interview` (`idStateJobInterview`, `title`, `description`) VALUES
	(1, 'primo contatto', 'colloquio telefonico conoscitivo'),
	(2, 'colloquio', 'incontro in sede'),
	(3, 'skill test', 'test sulle competenze soft'),
	(4, 'colloquio tecnico', 'valutazione conoscenze richieste dalla mansione');

-- Dump della struttura di tabella gestionalefinale.work_experience
DROP TABLE IF EXISTS `work_experience`;
CREATE TABLE IF NOT EXISTS `work_experience` (
  `idWorkExperience` int NOT NULL AUTO_INCREMENT,
  `idCandidate` int DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `company` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idWorkExperience`) USING BTREE,
  KEY `id_candidate` (`idCandidate`) USING BTREE,
  CONSTRAINT `FK13_idCandidate` FOREIGN KEY (`idCandidate`) REFERENCES `candidate` (`idCandidate`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dump dei dati della tabella gestionalefinale.work_experience: ~8 rows (circa)
DELETE FROM `work_experience`;
INSERT INTO `work_experience` (`idWorkExperience`, `idCandidate`, `title`, `description`, `startDate`, `endDate`, `company`, `city`) VALUES
	(1, 4, 'junior developer', 'junior java developer', '2013-01-08', '2015-03-30', 'Pinco Pallino s.r.l.', 'Milano'),
	(2, 4, 'middle developer', 'junior middle developer', '2015-04-01', '2018-08-01', 'Ivert s.r.l.', 'Milano'),
	(3, 4, 'senior developer', 'senior java developer', '2018-09-01', '2024-03-01', 'Adecco S.p.A.', 'Torino'),
	(4, 2, 'praticante avvocato', 'praticante avvocato studio legale', '2016-09-01', '2018-12-30', 'La Scala società Avvocati', 'Verona'),
	(5, 2, 'avvocato', 'avvocato in diritto societario', '2019-01-08', '2024-03-01', 'Autonomo', 'Verona'),
	(6, 3, 'beginner developer', 'stage in java', '2023-09-01', '2024-03-01', 'Accenture', 'Lecco'),
	(7, 1, 'cameriere', 'cameriere orario serale', '2016-06-01', '2017-09-30', 'Black Sheep Pub', 'Roma'),
	(8, 1, 'cameriere', 'cameriere orario serale', '2018-06-01', '2020-06-30', 'Ristorante Vecchia Roma ', 'Roma');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
