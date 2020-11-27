-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema AlquilerDeCarro
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema AlquilerDeCarro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AlquilerDeCarro` DEFAULT CHARACTER SET utf8 ;
USE `AlquilerDeCarro` ;

-- -----------------------------------------------------
-- Table `AlquilerDeCarro`.`Carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Carro` (
  `idCarro` INT auto_increment,
  `marca` VARCHAR(45) NULL,
  `modelo` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `preciopordia` DECIMAL(10,4) NULL,
  PRIMARY KEY (`idCarro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AlquilerDeCarro`.`Alquiler`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Alquiler` (
  `idAlquiler` INT  AUTO_INCREMENT,
  `fecha` DATETIME NULL,
  `nombre` VARCHAR(45) NULL,
  `duracion` INT NULL,
  `idCarro` INT NOT NULL,
  PRIMARY KEY (`idAlquiler`),
  INDEX `fk_Alquiler_Carro_idx` (`idCarro` ASC),
  CONSTRAINT `fk_Alquiler_Carro`
    FOREIGN KEY (`idCarro`)
    REFERENCES `AlquilerDeCarro`.`Carro` (`idCarro`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO `Carro` (`idCarro`,`marca`,`modelo`,`color`,`preciopordia`) VALUES (NULL,'Mazda','Demio','blanco',1500);
INSERT INTO `Carro` (`idCarro`,`marca`,`modelo`,`color`,`preciopordia`) VALUES (NULL,'Hyundai ','Sonata','naranja',1000);
INSERT INTO `Carro` (`idCarro`,`marca`,`modelo`,`color`,`preciopordia`) VALUES (NULL,'Hyundai','Santa Fe','negro',3000);


INSERT INTO `Alquiler` (`fecha`,`nombre`,`duracion`,`idCarro`) VALUES (NOW(),'Pablo Perez',NULL,1);
INSERT INTO `Alquiler` (`fecha`,`nombre`,`duracion`,`idCarro`) VALUES (NOW(),'Benito Carmelo',NULL,2);
