-- MySQL Script generated by MySQL Workbench
-- Sat Apr 13 15:28:10 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db balldis
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db balldis
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db balldis` DEFAULT CHARACTER SET utf8mb4 ;
USE `db balldis` ;

-- -----------------------------------------------------
-- Table `db balldis`.`almacenes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db balldis`.`almacenes` ;

CREATE TABLE IF NOT EXISTS `db balldis`.`almacenes` (
  `Almacen_001` VARCHAR(45) NULL DEFAULT NULL,
  `Almacene_002` VARCHAR(45) NULL DEFAULT NULL,
  `Almacene_003` VARCHAR(45) NOT NULL,
  `Almacene_004` VARCHAR(45) NOT NULL,
  `Almacene_005` VARCHAR(45) NOT NULL,
  `Almacene_006` VARCHAR(45) NOT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db balldis`.`categorias`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db balldis`.`categorias` ;

CREATE TABLE IF NOT EXISTS `db balldis`.`categorias` (
  `Viveres` VARCHAR(45) NOT NULL,
  `Ropa` VARCHAR(45) NULL DEFAULT NULL,
  `Electrodomesticos` VARCHAR(45) NULL DEFAULT NULL,
  `Servicios_Publico` VARCHAR(45) NULL DEFAULT NULL,
  `Jugueteria` VARCHAR(45) NULL DEFAULT NULL,
  `Belleza` VARCHAR(45) NULL DEFAULT NULL,
  `Recreación` VARCHAR(45) NULL DEFAULT NULL,
  `Comida` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Viveres`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db balldis`.`datosusuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db balldis`.`datosusuario` ;

CREATE TABLE IF NOT EXISTS `db balldis`.`datosusuario` (
  `NOMBRE` INT(11) NOT NULL,
  `APELLIDOS` VARCHAR(45) NOT NULL,
  `CEDULA` VARCHAR(45) NOT NULL,
  `TELEFONO CELULAR` VARCHAR(45) NOT NULL,
  `FECHA DE NACIMIENTO` VARCHAR(45) NOT NULL,
  `CIUDAD` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CEDULA`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `db balldis`.`inscritos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `db balldis`.`inscritos` ;

CREATE TABLE IF NOT EXISTS `db balldis`.`inscritos` (
  `Usuario` INT(11) NOT NULL,
  `Contraseña` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Usuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;