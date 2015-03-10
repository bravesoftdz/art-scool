# SQL Manager 2007 for MySQL 4.1.2.1
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : art_scool


SET FOREIGN_KEY_CHECKS=0;

DROP DATABASE IF EXISTS `art_scool`;

CREATE DATABASE `art_scool`
    CHARACTER SET 'latin1'
    COLLATE 'latin1_swedish_ci';

USE `art_scool`;

#
# Structure for the `tab_alunos` table :
#

DROP TABLE IF EXISTS `tab_alunos`;

CREATE TABLE `tab_alunos` (
  `COD_ALUNO` int(11) NOT NULL AUTO_INCREMENT,
  `DES_ALUNO` varchar(50) DEFAULT NULL,
  `NUM_MATRICULA` varchar(15) DEFAULT NULL,
  `DTA_MATRICULA` date DEFAULT NULL,
  `DES_NACIONALIDADE` varchar(20) DEFAULT NULL,
  `DES_NATURALIDADE` varchar(20) DEFAULT NULL,
  `NUM_CPF` varchar(11) DEFAULT NULL,
  `NUM_RG` varchar(15) DEFAULT NULL,
  `DTA_NASCIMENTO` date DEFAULT NULL,
  `DES_SEXO` char(10) DEFAULT NULL,
  `DES_ESTADO_CIVIL` char(10) DEFAULT NULL,
  `DES_ENDERECO` varchar(40) DEFAULT NULL,
  `DES_BAIRRO` varchar(20) DEFAULT NULL,
  `DES_UF` char(2) DEFAULT NULL,
  `NUM_TEL` char(15) DEFAULT NULL,
  `NUM_CELULAR` char(15) DEFAULT NULL,
  `DES_EMAIL` varchar(50) DEFAULT NULL,
  `DES_OBSERVACOES` varchar(80) DEFAULT NULL,
  `FLG_ATIVO` char(1) DEFAULT NULL,
  `FOTO` longblob,
  PRIMARY KEY (`COD_ALUNO`),
  KEY `IDX_DES_ALUNO` (`DES_ALUNO`),
  KEY `IDX_NUM_CPF` (`NUM_CPF`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Structure for the `tab_escola` table :
#

DROP TABLE IF EXISTS `tab_escola`;

CREATE TABLE `tab_escola` (
  `DES_ESCOLA` varchar(50) NOT NULL,
  `DES_ENDERECO` varchar(40) NOT NULL,
  `DES_BAIRRO` varchar(30) DEFAULT NULL,
  `NUM_CEP` varchar(10) DEFAULT NULL,
  `DES_CIDADE` varchar(40) NOT NULL,
  `DES_UF` char(2) DEFAULT NULL,
  `NUM_CNPJ` char(14) NOT NULL,
  `NUM_INSC` char(15) DEFAULT NULL,
  `NUM_FONE` varchar(15) DEFAULT NULL,
  `NUM_FAX` varchar(15) DEFAULT NULL,
  `DES_EMAIL` varchar(50) DEFAULT NULL,
  `DES_SITE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`NUM_CNPJ`),
  KEY `IDX_DES_ESCOLA` (`DES_ESCOLA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Definition for the `spAlunos_ins` procedure :
#

DROP PROCEDURE IF EXISTS `spAlunos_ins`;

CREATE DEFINER = 'root'@'localhost' PROCEDURE `spAlunos_ins`(IN argCOD_ALUNO INTEGER(11), IN argDES_ALUNO VARCHAR(50), IN argNUM_MATRICULA VARCHAR(15), IN argDTA_MATRICULA DATE, IN argDES_NACIONALIDADE VARCHAR(20), IN argDES_NATURALIDADE VARCHAR(20), IN argNUM_CPF VARCHAR(11), IN argNUM_RG VARCHAR(15), IN argDTA_NASCIMENTO DATE, IN argDES_SEXO CHAR(10), IN argDES_ESTADO_CIVIL CHAR(10), IN argDES_ENDERECO VARCHAR(40), IN argDES_BAIRRO VARCHAR(20), IN argDES_UF CHAR(2), IN argNUM_TEL CHAR(15), IN argNUM_CELULAR CHAR(15), IN argDES_EMAIL VARCHAR(50), IN argDES_OBSERVACOES VARCHAR(80), IN argFLG_ATIVO CHAR(1), IN argFOTO LONGBLOB)
    NOT DETERMINISTIC
    CONTAINS SQL
    SQL SECURITY DEFINER
    COMMENT ''
BEGIN


Insert Into tab_alunos
 (COD_ALUNO,DES_ALUNO,NUM_MATRICULA,DTA_MATRICULA,DES_NACIONALIDADE,DES_NATURALIDADE,
 NUM_CPF,NUM_RG,DTA_NASCIMENTO,DES_SEXO,DES_ESTADO_CIVIL,DES_ENDERECO,DES_BAIRRO,DES_UF,
 NUM_TEL,NUM_CELULAR,DES_EMAIL,DES_OBSERVACOES,FLG_ATIVO,FOTO)
Values
 (argCOD_ALUNO,argDES_ALUNO,argNUM_MATRICULA,argDTA_MATRICULA,argDES_NACIONALIDADE,argDES_NATURALIDADE,
 argNUM_CPF,argNUM_RG,argDTA_NASCIMENTO,argDES_SEXO,argDES_ESTADO_CIVIL,argDES_ENDERECO,argDES_BAIRRO,argDES_UF,
 argNUM_TEL,argNUM_CELULAR,argDES_EMAIL,argDES_OBSERVACOES,argFLG_ATIVO,argFOTO);


END;

#
# Data for the `tab_alunos` table  (LIMIT 0,500)
#

INSERT INTO `tab_alunos` (`COD_ALUNO`, `DES_ALUNO`, `NUM_MATRICULA`, `DTA_MATRICULA`, `DES_NACIONALIDADE`, `DES_NATURALIDADE`, `NUM_CPF`, `NUM_RG`, `DTA_NASCIMENTO`, `DES_SEXO`, `DES_ESTADO_CIVIL`, `DES_ENDERECO`, `DES_BAIRRO`, `DES_UF`, `NUM_TEL`, `NUM_CELULAR`, `DES_EMAIL`, `DES_OBSERVACOES`, `FLG_ATIVO`, `FOTO`) VALUES
  (1,'WILIANS CARDOSO','000000001','2015-03-10','BRASIL','ILHA SOLTEIRA','11111111111','1111111','1973-08-29','MASCULINO','CASADO','MARECHAL','CENTRO','SP',NULL,NULL,NULL,NULL,'S',NULL);

COMMIT;

