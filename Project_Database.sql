-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema census
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema census
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `census` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `census` ;

-- -----------------------------------------------------
-- Table `census`.`Housing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `census`.`Housing` (
  `house_id` INT NOT NULL AUTO_INCREMENT,
  `house_type` VARCHAR(30) NULL,
  `family_count` INT NULL,
  PRIMARY KEY (`house_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `census`.`Income`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `census`.`Income` (
  `income_id` INT NOT NULL AUTO_INCREMENT,
  `individual_income` DOUBLE NULL,
  `family_income` DOUBLE NULL,
  PRIMARY KEY (`income_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `census`.`Education`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `census`.`Education` (
  `education_id` INT NOT NULL AUTO_INCREMENT,
  `individual_highest_educ` VARCHAR(30) NULL,
  `institution_type` VARCHAR(30) NULL,
  `institution_name` VARCHAR(45) NULL,
  `family_highest_educ` VARCHAR(30) NULL,
  PRIMARY KEY (`education_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `census`.`Respondents`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `census`.`Respondents` (
  `respondent_id` INT NOT NULL AUTO_INCREMENT,
  `house_id` INT NOT NULL,
  `respondent_age` INT NULL,
  `income_id` INT NOT NULL,
  `education_id` INT NOT NULL,
  PRIMARY KEY (`respondent_id`),
  INDEX `house_id_idx` (`house_id` ASC),
  INDEX `income_id_idx` (`income_id` ASC),
  INDEX `education_id_idx` (`education_id` ASC),
  CONSTRAINT `house_id`
    FOREIGN KEY (`house_id`)
    REFERENCES `census`.`Housing` (`house_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `income_id`
    FOREIGN KEY (`income_id`)
    REFERENCES `census`.`Income` (`income_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `education_id`
    FOREIGN KEY (`education_id`)
    REFERENCES `census`.`Education` (`education_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `census`.`Population`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `census`.`Population` (
  `population_id` INT NOT NULL AUTO_INCREMENT,
  `respondent_id` INT NOT NULL,
  `population_count` BIGINT NULL,
  `census_year` YEAR NULL,
  PRIMARY KEY (`population_id`),
  INDEX `respondent_id_idx` (`respondent_id` ASC),
  CONSTRAINT `respondent_id`
    FOREIGN KEY (`respondent_id`)
    REFERENCES `census`.`Respondents` (`respondent_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `census`.`State`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `census`.`State` (
  `state_id` INT NOT NULL AUTO_INCREMENT,
  `state_name` VARCHAR(30) NULL,
  `population_id` INT NOT NULL,
  PRIMARY KEY (`state_id`),
  INDEX `population_id_idx` (`population_id` ASC),
  CONSTRAINT `population_id`
    FOREIGN KEY (`population_id`)
    REFERENCES `census`.`Population` (`population_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `census`.`Regions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `census`.`Regions` (
  `region_id` INT NOT NULL AUTO_INCREMENT,
  `state_id` INT NOT NULL,
  `region_name` VARCHAR(30) NULL,
  `party_affiliation` VARCHAR(15) NULL,
  PRIMARY KEY (`region_id`),
  INDEX `state_id_idx` (`state_id` ASC),
  CONSTRAINT `state_id`
    FOREIGN KEY (`state_id`)
    REFERENCES `census`.`State` (`state_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
