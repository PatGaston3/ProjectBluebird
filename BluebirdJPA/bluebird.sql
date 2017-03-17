-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`user` ;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(255) NULL,
  `picture` VARCHAR(155) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`friend`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`friend` ;

CREATE TABLE IF NOT EXISTS `mydb`.`friend` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `username` VARCHAR(45) NULL,
  `picture` VARCHAR(155) NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_friend_user_idx` (`user_id` ASC),
  CONSTRAINT `fk_friend_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO blueuser;
 DROP USER blueuser;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'blueuser' IDENTIFIED BY 'cabin1';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE `mydb`.* TO 'blueuser';

-- -----------------------------------------------------
-- Data for table `mydb`.`user`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`user` (`id`, `username`, `password`, `picture`) VALUES (1, 'pgaston', 'bluebird1', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`friend`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`friend` (`id`, `user_id`, `username`, `picture`) VALUES (1, 1, 'afisher', NULL);
INSERT INTO `mydb`.`friend` (`id`, `user_id`, `username`, `picture`) VALUES (2, 1, 'rhammond', NULL);
INSERT INTO `mydb`.`friend` (`id`, `user_id`, `username`, `picture`) VALUES (3, 1, 'sadams', NULL);
INSERT INTO `mydb`.`friend` (`id`, `user_id`, `username`, `picture`) VALUES (4, 1, NULL, NULL);

COMMIT;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
