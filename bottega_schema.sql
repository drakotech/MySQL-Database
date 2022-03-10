CREATE SCHEMA [IF NOT EXISTS] `bottega_schema` ;

CREATE TABLE `bottega_schema`.`professors` (
  `professors_id` INT NOT NULL AUTO_INCREMENT,
  `professors_title` VARCHAR(5) NOT NULL,
  `professors_name` VARCHAR(45) NOT NULL,
  `professors_email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE,
  UNIQUE INDEX `professors_email_UNIQUE` (`professors_email` ASC) VISIBLE);
