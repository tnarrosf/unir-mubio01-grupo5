-- MySQL Script generated by MySQL Workbench
-- dom 28 abr 2024 18:18:50
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema actividadgrupal_new
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema actividadgrupal_new
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `actividadgrupal_new` ;
USE `actividadgrupal_new` ;

-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`gen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`gen` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`identificador`),
  UNIQUE INDEX `nombre_UNIQUE` (`nombre` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`anotacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`anotacion` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `tipoanotacion` ENUM('funcional', 'estructural', 'expresion', 'variacion', 'regulacion', 'conservacion', 'clinica', 'interaccion', 'localizacion') NOT NULL,
  `descripcion` VARCHAR(200) NOT NULL,
  `gen_identificador` INT NOT NULL,
  PRIMARY KEY (`identificador`),
  INDEX `fk_anotacion_gen1_idx` (`gen_identificador` ASC) VISIBLE,
  CONSTRAINT `fk_anotacion_gen`
    FOREIGN KEY (`gen_identificador`)
    REFERENCES `actividadgrupal_new`.`gen` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`cromosoma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`cromosoma` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(200) NULL DEFAULT NULL,
  `especie` VARCHAR(200) NULL DEFAULT NULL,
  PRIMARY KEY (`identificador`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`estudio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`estudio` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(200) NOT NULL,
  `fecha` DATE NULL DEFAULT NULL,
  `referencia` VARCHAR(8) NOT NULL,
  PRIMARY KEY (`identificador`),
  UNIQUE INDEX `referencia_UNIQUE` (`referencia` ASC) VISIBLE,
  CONSTRAINT `estudio_referencia_format` CHECK (`referencia` REGEXP '^[a-zA-Z]{4}\/[0-9]{3}$'))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`tipo_secuencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`tipo_secuencia` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(200) NULL,
  PRIMARY KEY (`identificador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`secuencia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`secuencia` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `direccion` ENUM('+', '-') NOT NULL DEFAULT '+',
  `posicion` INT NOT NULL,
  `secuencia` VARCHAR(1000) NOT NULL,
  `tipo_secuencia_identificador` INT NOT NULL,
  PRIMARY KEY (`identificador`),
  INDEX `fk_secuencia_tipo_secuencia1_idx` (`tipo_secuencia_identificador` ASC) VISIBLE,
  CONSTRAINT `fk_secuencia_tipo_secuencia1`
    FOREIGN KEY (`tipo_secuencia_identificador`)
    REFERENCES `actividadgrupal_new`.`tipo_secuencia` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `secuencia_min_length` CHECK (CHAR_LENGTH(`secuencia`) >= 10))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`cromosoma-gen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`cromosoma-gen` (
  `gen_nombre` INT NOT NULL,
  `cromosoma_identificador` INT NOT NULL,
  `posicion` INT NOT NULL,
  INDEX `fk_cromosoma-gen_cromosoma1_idx` (`cromosoma_identificador` ASC) VISIBLE,
  PRIMARY KEY (`gen_nombre`, `cromosoma_identificador`),
  CONSTRAINT `fk_cromosoma-gen_gen1`
    FOREIGN KEY (`gen_nombre`)
    REFERENCES `actividadgrupal_new`.`gen` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cromosoma-gen_cromosoma1`
    FOREIGN KEY (`cromosoma_identificador`)
    REFERENCES `actividadgrupal_new`.`cromosoma` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = armscii8;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`alelo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`alelo` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `tipo` ENUM('wt', 'mut') NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `descripción` VARCHAR(45) NOT NULL,
  `gen_identificador` INT NOT NULL,
  PRIMARY KEY (`identificador`),
  INDEX `fk_alelo_gen1_idx` (`gen_identificador` ASC) VISIBLE,
  CONSTRAINT `fk_alelo_gen1`
    FOREIGN KEY (`gen_identificador`)
    REFERENCES `actividadgrupal_new`.`gen` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`tìpo_variante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`tìpo_variante` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(200) NULL,
  PRIMARY KEY (`identificador`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`variante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`variante` (
  `identificador` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `tìpo_variante_identificador` INT NOT NULL,
  `posicion` INT NOT NULL,
  `alelo_identificador` INT NULL,
  `secuencia_identificador` INT NOT NULL,
  PRIMARY KEY (`identificador`, `tìpo_variante_identificador`),
  INDEX `fk_variante_alelo1_idx` (`alelo_identificador` ASC) VISIBLE,
  INDEX `fk_variante_secuencia_no_codificantes1_idx` (`secuencia_identificador` ASC) VISIBLE,
  INDEX `fk_variante_tìpo_variante1_idx` (`tìpo_variante_identificador` ASC) VISIBLE,
  CONSTRAINT `fk_variante_alelo1`
    FOREIGN KEY (`alelo_identificador`)
    REFERENCES `actividadgrupal_new`.`alelo` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_variante_secuencia_no_codificantes1`
    FOREIGN KEY (`secuencia_identificador`)
    REFERENCES `actividadgrupal_new`.`secuencia` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_variante_tìpo_variante1`
    FOREIGN KEY (`tìpo_variante_identificador`)
    REFERENCES `actividadgrupal_new`.`tìpo_variante` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`estudio_has_gen`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`estudio_has_gen` (
  `estudio_identificador` INT NOT NULL,
  `gen_nombre` INT NOT NULL,
  PRIMARY KEY (`estudio_identificador`, `gen_nombre`),
  INDEX `fk_estudio_has_gen_gen1_idx` (`gen_nombre` ASC) VISIBLE,
  INDEX `fk_estudio_has_gen_estudio1_idx` (`estudio_identificador` ASC) VISIBLE,
  CONSTRAINT `fk_estudio_has_gen_estudio1`
    FOREIGN KEY (`estudio_identificador`)
    REFERENCES `actividadgrupal_new`.`estudio` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_estudio_has_gen_gen1`
    FOREIGN KEY (`gen_nombre`)
    REFERENCES `actividadgrupal_new`.`gen` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `actividadgrupal_new`.`variante_has_estudio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `actividadgrupal_new`.`variante_has_estudio` (
  `variante_identificador` INT NOT NULL,
  `estudio_identificador` INT NOT NULL,
  PRIMARY KEY (`variante_identificador`, `estudio_identificador`),
  INDEX `fk_variante_has_estudio_estudio1_idx` (`estudio_identificador` ASC) VISIBLE,
  INDEX `fk_variante_has_estudio_variante1_idx` (`variante_identificador` ASC) VISIBLE,
  CONSTRAINT `fk_variante_has_estudio_variante1`
    FOREIGN KEY (`variante_identificador`)
    REFERENCES `actividadgrupal_new`.`variante` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_variante_has_estudio_estudio1`
    FOREIGN KEY (`estudio_identificador`)
    REFERENCES `actividadgrupal_new`.`estudio` (`identificador`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
