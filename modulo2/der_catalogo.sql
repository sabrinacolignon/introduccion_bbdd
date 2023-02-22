/*
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema introdb
-- ---------categorias--------------------------------------------

-- -----------------------------------------------------
-- Schema introdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `introdb` DEFAULT CHARACTER SET utf8 ;
USE `introdb` ;

-- -----------------------------------------------------
-- Table `introdb`.`Marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb`.`Marcas` (
  `idMarca` TINYINT NOT NULL AUTO_INCREMENT,
  `mkNombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idMarca`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introdb`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb`.`Categorias` (
  `idCategoria` TINYINT NOT NULL AUTO_INCREMENT,
  `catNombre` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introdb`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `introdb`.`Productos` (
  `idProducto` MEDIUMINT NOT NULL AUTO_INCREMENT,
  `prdNombre` VARCHAR(45) NOT NULL,
  `prdPrecio` FLOAT(8,2) UNSIGNED NOT NULL,
  `idMarca` TINYINT NOT NULL,
  `idCategoria` TINYINT NOT NULL,
  `prdDescripcion` VARCHAR(1000) NOT NULL,
  `prdImagen` VARCHAR(45) NOT NULL,
  `prdActivo` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idProducto`),
  CONSTRAINT `fk_Productos_Marcas`
    FOREIGN KEY (`idMarca`)
    REFERENCES `introdb`.`Marcas` (`idMarca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Productos_Categorias1`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `introdb`.`Categorias` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
*/
#---------------------------------------- PROXIMA CLASE --------------------------------------------------------------------
