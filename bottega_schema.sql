-- -----------------------
-- Schema Configuration
-- -----------------------

CREATE SCHEMA [IF NOT EXISTS] `bottega_schema` ;


-- ----------------------
-- Table Configuration
--   - professors
-- ----------------------

CREATE TABLE `bottega_schema`.`professors` (
    `professors_id` INT NOT NULL AUTO_INCREMENT,
    `professors_title` VARCHAR(5) NOT NULL,
    `professors_name` VARCHAR(45) NOT NULL,
    `professors_email` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`professors_id`),
    UNIQUE INDEX `professors_id_UNIQUE` (`professors_id` ASC) VISIBLE,
    UNIQUE INDEX `professors_email_UNIQUE` (`professors_email` ASC) VISIBLE
);


-- ---------------
--   - students
-- ---------------

CREATE TABLE `bottega_schema`.`students` (
    `students_id` INT NOT NULL AUTO_INCREMENT,
    `students_name` VARCHAR(45) NOT NULL,
    `students_email` VARCHAR(100) NOT NULL,

    PRIMARY KEY (`students_id`),
    UNIQUE INDEX `students_id_UNIQUE` (`students_id` ASC) VISIBLE,
    UNIQUE INDEX `students_email_UNIQUE` (`students_email` ASC) VISIBLE
);


-- --------------
--   - courses
-- --------------

CREATE TABLE `bottega_schema`.`courses` (
    `courses_id` INT NOT NULL AUTO_INCREMENT,
    `courses_title` VARCHAR(100) NOT NULL,
    `courses_professors_id` INT NULL,
    `courses_students_id` INT NULL,

    PRIMARY KEY (`courses_id`),
    UNIQUE INDEX `courses_id_UNIQUE` (`courses_id` ASC) VISIBLE,
    INDEX `courses_students_id_idx` (`courses_students_id` ASC) VISIBLE,
    INDEX `courses_professors_id_idx` (`courses_professors_id` ASC) VISIBLE,
    
    CONSTRAINT `courses_professors_id`
        FOREIGN KEY (`courses_professors_id`)
        REFERENCES `bottega_schema`.`professors` (`professors_id`)
        ON DELETE CASCADE
        ON UPDATE NO ACTION,
    
    CONSTRAINT `courses_students_id`
        FOREIGN KEY (`courses_students_id`)
        REFERENCES `bottega_schema`.`students` (`students_id`)
        ON DELETE CASCADE
        ON UPDATE NO ACTION
);


-- -------------
--   - grades
-- -------------

CREATE TABLE `bottega_schema`.`grades` (
    `grades_id` INT NOT NULL AUTO_INCREMENT,
    `grades_value` DECIMAL(3,2) NOT NULL,
    `grades_students_id` INT NOT NULL,
    `grades_courses_id` INT NOT NULL,
    
    PRIMARY KEY (`grades_id`),
    UNIQUE INDEX `grades_id_UNIQUE` (`grades_id` ASC) VISIBLE,
    INDEX `grades_students_id_idx` (`grades_students_id` ASC) VISIBLE,
    INDEX `grades_courses_id_idx` (`grades_courses_id` ASC) VISIBLE,
    
    CONSTRAINT `grades_students_id`
        FOREIGN KEY (`grades_students_id`)
        REFERENCES `bottega_schema`.`students` (`students_id`)
        ON DELETE CASCADE
        ON UPDATE NO ACTION,
    
    CONSTRAINT `grades_courses_id`
        FOREIGN KEY (`grades_courses_id`)
        REFERENCES `bottega_schema`.`courses` (`courses_id`)
        ON DELETE CASCADE
        ON UPDATE NO ACTION
);
