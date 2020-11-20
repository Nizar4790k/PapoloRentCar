-- MySQL Workbench Forward Engineering
DROP DATABASE  alquilerdecarro;

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
-- Table `AlquilerDeCarro`.`Alquiler`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AlquilerDeCarro`.`Alquiler` (
  `idAlquiler` INT  AUTO_INCREMENT,
  `fecha` DATETIME NULL,
  `nombre` VARCHAR(45) NULL,
  `duracion` INT NULL,
  PRIMARY KEY (`idAlquiler`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AlquilerDeCarro`.`Carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AlquilerDeCarro`.`Carro` (
  `idCarro` INT PRIMARY KEY AUTO_INCREMENT,
  `marca` VARCHAR(45) NULL,
  `modelo` VARCHAR(45) NULL,
  `color` VARCHAR(45) NULL,
  `preciopordia` DECIMAL(10,4) NULL
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AlquilerDeCarro`.`Alquiler_has_Carro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AlquilerDeCarro`.`Relacion` (
  `Alquiler_idAlquiler` INT NOT NULL,
  `Carro_idCarro` INT NOT NULL,
  PRIMARY KEY (`Alquiler_idAlquiler`, `Carro_idCarro`),
  INDEX `fk_Alquiler_has_Carro_Carro1_idx` (`Carro_idCarro` ASC),
  INDEX `fk_Alquiler_has_Carro_Alquiler_idx` (`Alquiler_idAlquiler` ASC),
  CONSTRAINT `fk_Alquiler_has_Carro_Alquiler`
    FOREIGN KEY (`Alquiler_idAlquiler`)
    REFERENCES `AlquilerDeCarro`.`Alquiler` (`idAlquiler`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Alquiler_has_Carro_Carro1`
    FOREIGN KEY (`Carro_idCarro`)
    REFERENCES `AlquilerDeCarro`.`Carro` (`idCarro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO `Alquiler` (`fecha`,`nombre`,`duracion`) VALUES (NOW(),'Pablo Perez',7);
INSERT INTO `Alquiler` (`fecha`,`nombre`,`duracion`) VALUES (NOW(),'Benito Carmelo',9);


INSERT INTO `Carro` (`marca`,`modelo`,`color`,`preciopordia`) VALUES ('Mazda','Demio','blanco',1500);
INSERT INTO `Carro` (`marca`,`modelo`,`color`,`preciopordia`) VALUES ('Hyundai ','Sonata','naranja',1000);
INSERT INTO `Carro` (`marca`,`modelo`,`color`,`preciopordia`) VALUES ('Hyundai','Santa Fe','negro',3000);




INSERT INTO `Relacion` (`Alquiler_idAlquiler`,`Carro_idCarro`) VALUES (1,1);
INSERT INTO `Relacion` (`Alquiler_idAlquiler`,`Carro_idCarro`) VALUES (2,1);



