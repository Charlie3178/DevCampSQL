CREATE TABLE `devcamp_university`.`coursesstudents` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45),
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `title` (`title` ASC) VISIBLE
);

CREATE TABLE `devcamp_university`.`grades` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `grade_points` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `grade_points` (`grade_points` ASC) VISIBLE
);

CREATE TABLE `devcamp_university`.`professors` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45),
  `course` VARCHAR(45),
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `name` (`name` ASC) VISIBLE,
  INDEX `course` (`course` ASC) VISIBLE
);

CREATE TABLE `devcamp_university`.`students` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45),
  `professor` VARCHAR(45),
  `grade` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `name` (`name` ASC) VISIBLE,
  INDEX `professor` (`professor` ASC) VISIBLE
);