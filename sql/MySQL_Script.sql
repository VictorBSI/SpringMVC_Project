-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema teste1db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `teste1db` DEFAULT CHARACTER SET utf8mb4 ;
USE `teste1db` ;

-- -----------------------------------------------------
-- Table `teste1db`.`processo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teste1db`.`processo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipoprocesso` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(45) NOT NULL,
  `dataentrada` VARCHAR(45) NULL DEFAULT NULL,
  `valorrecurso` VARCHAR(45) NULL DEFAULT NULL,
  `objetivo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `teste1db`.`tipo_processo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `teste1db`.`tipo_processo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
